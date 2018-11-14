<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SitesController extends pierre_Controller {



	public function __construct() {
		parent::__construct();
		$this->load->model('hr/SitesModel','sitemod');
		$this->load->model('LoggerModel','logger');
	}



	public function Masterlist()
	{

		$layout = array('datatable' => TRUE, 'hr_sites' => 'active', 'service'=>'HRService');
		$data['extra'] = array('class'=>'sites');
		$data['sites'] = $this->sitemod->LoadSitesList();
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_sites',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
        $this->load->view('layout/genericforms');
		$this->load->view('layout/js',$layout);	

	}


	public function Read() {
        $this->form_validation->set_rules('Id', 'Item Record', 'required');

        // $postdata = $this->input->post();
        if ($this->form_validation->run() == FALSE){
            $errors = validation_errors();
            echo json_encode(['error'=>$errors]);
        }
        else{
        	$postdata = $this->input->post();
        	$id = $postdata['Id'];
        	$data = $this->sitemod->LoadPositionsList($id);

        	if ($data->num_rows() > 0) {
        		$result = $data->result();        		
	        	$json = json_encode($result);
	        	$this->logger->log('View','Successful View Site',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'View Unsuccessful.']);
        	}

        }
	}


	public function Create() {

        $this->form_validation->set_rules('Code', 'Item Code', 'required');
        $this->form_validation->set_rules('Name', 'Item Name', 'required');
        $postdata = $this->input->post();
        if ($this->form_validation->run() == FALSE){
            $errors = validation_errors();
            echo json_encode(['error'=>$errors]);
        }
        elseif (empty($postdata['CompanyId'])) {
        	echo json_encode(['error'=>'Subscription Cannot be validated.']);
        }
        else{
        	$result = $this->sitemod->Create($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Add','Successful Adding Site',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'Update Unsuccessful.']);
        	}

        }
	}


	public function Delete() {

        $this->form_validation->set_rules('Id', 'Item Record', 'required');

        $postdata = $this->input->post();
        if ($this->form_validation->run() == FALSE){
            $errors = validation_errors();
            echo json_encode(['error'=>$errors]);
        }
        elseif (empty($postdata['CompanyId'])) {
        	echo json_encode(['error'=>'Subscription Cannot be validated.']);
        }
        else{
        	$result = $this->sitemod->Delete($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Delete','Successful Deleting Site',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'Update Unsuccessful.']);
        	}

        }
	}


	public function Update() {

        $this->form_validation->set_rules('Id', 'Item Record', 'required');

        $postdata = $this->input->post();
        if ($this->form_validation->run() == FALSE){
            $errors = validation_errors();
            echo json_encode(['error'=>$errors]);
        }
        elseif (empty($postdata['CompanyId'])) {
        	echo json_encode(['error'=>'Subscription Cannot be validated.']);
        }
        else{
        	$id = $postdata['Id'];
        	unset($postdata['Id']);
        	$postdata = array_filter($postdata, 'strlen');

        	$result = $this->sitemod->Update($id,$postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Edit','Successful Edit Site',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'Update Unsuccessful.']);
        	}

        }
	}



















}
