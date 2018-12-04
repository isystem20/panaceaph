<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HomeController extends pierre_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('generic/ListModel','list');
		$this->load->model('LoggerModel','logger');
	}



	public function Index()
	{
		$this->load->view('generic/dashboard');
	}


	public function Profile($id = null)
	{
		
		$layout = array('service'=>'Generic', 'uploadfile'=>TRUE, 'knobs'=>TRUE);
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar');
		$this->load->view('generic/profile');
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);
	}


}
