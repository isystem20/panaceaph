<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthController extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('core/AuthModel','auth_mod');
		$this->load->model('core/LoggerModel','logger');
	}

	public function Login()
	{
		$ref = $this->input->get('ref', TRUE);
		$data = array('ref'=>$ref);
		$this->load->view('auth/login',$data);
	}


	public function GoLogin() {
		$this->form_validation->set_rules('UserName', 'Email', 'required');
		$this->form_validation->set_rules('Password', 'Password', 'required');

		if($this->form_validation->run() == FALSE)
		{	

			$errors = validation_errors();
			// Start Log
			$actiondata = json_encode($errors);
			$this->logger->log('Login','Failed Authentication',$actiondata);
			// End Log	
            echo json_encode(['error'=>$errors]);
		}
		else {

			$username = $this->input->post('UserName');
			$password = $this->input->post('Password');
			$ref = $this->input->post('Reference');
			$key = $this->config->item('hr_encryption_key');

			$salt1 = hash('sha512', $key . $password);
		    $salt2 = hash('sha512', $password . $key);
		    $hashed_password = hash('sha512', $salt1 . $password . $salt2);
			$data['Password'] = $hashed_password;
			$result = $this->auth_mod->CheckLogin($username);
			// print_r($user);
			// echo $hashed_password;
			// die();
			// if (empty($this->session->userdata('login_attempts'))) {
			// 	$attempts = array('login_attempts' => 0, );
			// 	$this->session->set_userdata($attempts);
			// }
			// $n = $this->session->userdata('login_attempts');





			if ($result !== FALSE) {

				foreach ($result as $user)
				{
					if ($user->Active == '0') {
						$response = array('error'=>'Account disabled.');
						// Start Log
						$actiondata = array_merge($response,$this->input->post());
						$actiondata = json_encode($actiondata);
						$this->logger->log('Failed Login','Authentication',$actiondata);
						// End Log	
				    	$json = json_encode($response);
				      	echo $json;

					}
					elseif ($user->PasswordHash != $hashed_password) {
						$response = array('error'=>'Incorrect Password.');
						// Start Log
						$actiondata = array_merge($response,$this->input->post());
						$actiondata = json_encode($actiondata);
						$this->logger->log('Failed Login','Authentication',$actiondata);
						// End Log	
				    	$json = json_encode($response);
				      	echo $json;
					}
					elseif ($user->companyActive != '1') {
						$response = array('error'=>'Invalid Subscription. ');
						// Start Log
						$actiondata = array_merge($response,$this->input->post());
						$actiondata = json_encode($actiondata);
						$this->logger->log('Failed Login','Authentication',$actiondata);
						// End Log	
				    	$json = json_encode($response);
				      	echo $json;
					}
					else {
						$session_data = array(
						'userid' => $user->id,
						'companyid'=> $user->CompanyId,
						'code'=>$user->UserCode,
						'firstname'=> $user->FirstName,
						'lastname'=> $user->LastName,
						'loginname'=>$user->LoginName,
						'userlevel'=>$user->SecurityUserLevelId,
						'passwordexp'=> $user->PasswordNeverExpires,
						'fixedpass' => $user->UserCantChangePassword,
						'temp'=>$user->UserChangePasswordNextLogon,			
						'passdate'=>$user->PasswordDate,
						'peopleid'=>$user->PeopleId,
						'email' =>$user->Email,
						'photo'=>$user->UserPhoto,
						'activecode'=>$user->ActivationCode,
						);
						$this->session->set_userdata($session_data);
						$response = $session_data;
						if ($ref == "") {
							$ref = base_url();
						}

						//Log
						$actiondata = json_encode($session_data);
						$this->logger->log('Login','Successful Authentication',$actiondata);


						$jsonarray = array('url' => $ref,);
						$jsonarray = array_merge($response,$jsonarray);
				    	$json = json_encode($jsonarray);
				      	echo $json;
						// return redirect(base_url());
					}
				}
				

			}
			else {

				$response = array('error'=>'Account doesnt exist.');
				// Start Log
				$actiondata = array_merge($response,$this->input->post());
				$actiondata = json_encode($actiondata);
				$this->logger->log('Login','Failed Authentication',$actiondata);
				// End Log		    	
				$json = json_encode($response);
		      	echo $json;
			}

		}
	}


	public function GoLogout() {
		$this->session->unset_userdata('userid');
		// $this->session->sess_destroy();
		$json = json_encode($this->session->all_userdata());
		// Start Log
		$actiondata = json_encode($json);
		$this->logger->log('Logout','Successful Logout',$actiondata);
		// End Log
		return redirect(base_url());
	}

}
