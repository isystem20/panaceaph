<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MainController extends pierre_Controller {


	public function __construct() {
		parent::__construct();
		$this->load->model('core/AccessModel', 'mod');
	}

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
	public function index()
	{
		$UserId = 1;
		$results['modules'] = $this->mod->get_access_items($UserId);
		$results['parents'] = $this->mod->get_access_parents($results['modules']);
		$results['services'] = $this->mod->get_services($results['modules']);



		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/js');	
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar', $results);
		$this->load->view('generic/dashboard');
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		
	}


}
