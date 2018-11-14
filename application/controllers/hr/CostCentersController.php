<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CostCentersController extends pierre_Controller {


	public function __construct() {
		parent::__construct();
		$this->load->model('hr/CostModel','costmod');
		$this->load->model('LoggerModel','logger');
	}


	public function Masterlist()
	{

		$layout = array('datatable' => TRUE, 'hr_costcenters' => 'active', 'service'=>'HRService');
		$data['cost'] = $this->costmod->LoadCostList();
		$data['extra'] = array('class'=>'cost-centers');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_costcenters',$data);
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
        	$data = $this->costmod->LoadPositionsList($id);

        	if ($data->num_rows() > 0) {
        		$result = $data->result();        		
	        	$json = json_encode($result);
	        	$this->logger->log('View','Successful View Cost Center',$json);          		
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
        	$result = $this->costmod->Create($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Add','Successful Adding Cost Center',$json);          		
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
        	$result = $this->costmod->Delete($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Delete','Successful Deleting Cost Center',$json);          		
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

        	$result = $this->costmod->Update($id,$postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Edit','Successful Edit Cost Center',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'Update Unsuccessful.']);
        	}

        }
	}





}
