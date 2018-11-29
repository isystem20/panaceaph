<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserController extends Admin_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('admin/UserModel','user_mod');
		$this->load->model('admin/clientModel','client_mod');
		$this->load->model('core/LoggerModel','logger');
	}


	public function MasterList()
	{
		$data = array( 'datatable' => TRUE, 'admin_users' => 'active','service'=>'AdminService','advancedform' => TRUE,);
		$data['masterlist'] = $this->user_mod->Load_Masterlist();

		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$data);
		$this->load->view('admin/UserMasterlist',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$data);	

	}

	public function RegisterPage() {
		$layout = array('admin_users' => 'active', 'service'=>'AdminService', 'advancedform' => TRUE, 'tree'=>TRUE);
		$data['labels'] = array('breadcrumb' => 'Register', 'header'=>'Add User');
		$data['clients'] = $this->client_mod->Load_Client();
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('admin/UserMasterlistInfo',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	
		
	}


}
