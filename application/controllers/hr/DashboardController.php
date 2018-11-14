<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DashboardController extends Pierre_Controller {

	public function __construct() {
		parent::__construct();
	}

	public function index()
	{
		$layout = array('hr_dashboard' => 'active', 'service'=>'HRService');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('generic/dashboard');
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	
	}

}