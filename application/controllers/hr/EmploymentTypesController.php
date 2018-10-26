<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmploymentTypesController extends pierre_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function Masterlist()
	{
		$this->load->model('hr/TypesModel','typesmod');
		$data['emptypes'] = $this->typesmod->LoadTypesList();
		$layout = array('datatable' => TRUE, 'hr_emp_list' => 'active', 'service'=>'HRService');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_employmenttypes',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	

	}
}
