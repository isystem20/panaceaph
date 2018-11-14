<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmployeeController extends pierre_Controller {


	public function __construct() {
		parent::__construct();
		$this->load->model('hr/EmployeeModel','empmod');
		$this->load->model('LoggerModel','logger');
	}


	public function Masterlist()
	{
		$data['employees'] = $this->empmod->LoadEmployeeMasterlist();
		$data['extra'] = array('class'=>'departments');
		$layout = array('datatable' => TRUE, 'hr_emp_list' => 'active', 'service'=>'HRService', 'form2' => TRUE);
		// print_r($data);
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_masterlist',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	
	}
	public function RegisterPage() {
		$layout = array('hr_emp_list' => 'active', 'service'=>'HRService', 'advancedform' => TRUE,);
		$data['labels'] = array('breadcrumb' => 'Register', 'header'=>'Add Employee');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_masterlist_info',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	
		
	}

	public function Read() {

	}

	public function Create() {

        $this->form_validation->set_rules('firstname', 'first name', 'required');
        $this->form_validation->set_rules('lastname', 'last name', 'required');
        $this->form_validation->set_rules('middlename', 'middle name', 'required');
        $this->form_validation->set_rules('birthdate', 'birthdate', 'required');
        $this->form_validation->set_rules('civilstatus', 'civil status', 'required');
        $this->form_validation->set_rules('nationality', 'nationality', 'required');
        $this->form_validation->set_rules('address', 'address', 'required');  
       
        $this->form_validation->set_rules('city', 'birthdate', 'required');
        $this->form_validation->set_rules('region', 'civil status', 'required');
        $this->form_validation->set_rules('email', 'email', 'required|valid_email');
        $this->form_validation->set_rules('employeenumber', 'employee number', 'required');
        $this->form_validation->set_rules('companyemail', 'company email', 'required|valid_email');
        $this->form_validation->set_rules('site', 'site', 'required');
        $this->form_validation->set_rules('department', 'department', 'required');
        $this->form_validation->set_rules('costcenter', 'costcenter', 'required');

        $this->form_validation->set_rules('superior', 'superior', 'required');
        $this->form_validation->set_rules('position', 'position', 'required');
        $this->form_validation->set_rules('rank', 'rank', 'required');
        $this->form_validation->set_rules('type', 'type', 'required');

        $this->form_validation->set_rules('hiredate', 'hire date', 'required');
        $this->form_validation->set_rules('duration', 'duration', 'required');
        $this->form_validation->set_rules('shift', 'shift', 'required');

        $this->form_validation->set_error_delimiters('<p class="help-block">','</p>');
        $postdata = $this->input->post();
        if ($this->form_validation->run() == FALSE){

        	foreach ($postdata as $key => $value) {
        		$data['responses'][$key] = form_error($key);
        	}
        	// print_r($data);
        	// die();
        	echo json_encode($data);
            // $errors = validation_errors();
            // echo json_encode(['error'=>$errors]);
        }
        elseif (empty($postdata['CompanyId'])) {
        	echo json_encode(['error'=>'Subscription Cannot be validated.']);
        }
        else{
        	// $result = $this->posmod->Create($postdata);
        	// if ($result != FALSE) {
	        // 	$json = json_encode($result);
	        // 	$this->logger->log('Add','Successful Adding Position',$json);          		
        	// 	echo $json;
        	// }
        	// else {
        	// 	echo json_encode(['error'=>'Update Unsuccessful.']);
        	// }

        }		


	}

	public function Update() {

	}

	public function Delete() {
	}


	

}
