<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ClientController extends Admin_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('admin/clientModel','client_mod');
		$this->load->model('core/LoggerModel','logger');
	}

	public function ClientMasterList()
	{
		$layout = array('datatable' => TRUE, 'admin_client_list' => 'active', 'service'=>'AdminService');
		$data['industries'] = $this->client_mod->Load_Industries();
		$data['contracts'] = $this->client_mod->Load_Contracts();
		$data['clients'] = $this->client_mod->Load_Client();
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('admin/ClientMasterlist',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	
	}



	public function ClientCreate() {
		$this->form_validation->set_rules('clientname', 'Title', 'required');
		$this->form_validation->set_rules('clientaddress', 'Business Impact', 'required');
		$this->form_validation->set_rules('natureofbusiness', 'Title', 'required');

		if($this->form_validation->run() == FALSE)
		{
			$errors = validation_errors();
			// Start Log
			$actiondata = array_merge($errors,$this->input->post());
			$actiondata = json_encode($actiondata);
			$this->logger->log('Create','Failed Client Registration',$actiondata);
			// End Log	
            echo json_encode(['error'=>$errors]);
		}
		else {
			$postdata = $this->input->post();
			// if ($this->client_mod->) {
			// 	
			// }
		}
	}


}
