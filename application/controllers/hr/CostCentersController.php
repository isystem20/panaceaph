<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CostCentersController extends pierre_Controller {

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
<<<<<<< HEAD
		$layout = array('datatable' => TRUE, 'hr_costcenters' => 'active', 'service'=>'HRService');
=======
		$this->load->model('hr/CostModel','costmod');
		$data['cost'] = $this->costmod->LoadCostList();
		$layout = array('datatable' => TRUE, 'hr_emp_list' => 'active', 'service'=>'HRService');
>>>>>>> 2d7686da99ad0bce74201804a6054004afe13958
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
<<<<<<< HEAD
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_costcenters');
=======
		$this->load->view('layout/sidebar');
		$this->load->view('hr/hr_costcenters',$data);
>>>>>>> 2d7686da99ad0bce74201804a6054004afe13958
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	

	}
}
