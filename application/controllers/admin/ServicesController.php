<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ServicesController extends pierre_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('admin/ServiceModel','service');
		$this->load->model('LoggerModel','logger');
	}


	public function Masterlist()
	{

		$data['list'] = $this->service->LoadList();
		$data['extra'] = array('class'=>'services');
		$layout = array('datatable' => TRUE, 'form2'=> TRUE, 'admin_services' => 'active', 'service'=>'AdminService');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('admin/ServiceMasterlist',$data);
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
        	$data = $this->service->LoadList($id);

        	if ($data->num_rows() > 0) {
        		$result = $data->result();        		
	        	$json = json_encode($result);
	        	$this->logger->log('View','Successful View Position',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'View Unsuccessful.']);
        	}

        }
	}


	public function Create() {
        if (empty($this->input->post())) {
           die('You are not supposed to be here!');
        }
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
        	$result = $this->service->Create($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Add','Successful Adding Position',$json);          		
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
        	$result = $this->service->Delete($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Delete','Successful Deleting Position',$json);          		
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

        	$result = $this->service->Update($id,$postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Edit','Successful Edit Position',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'Update Unsuccessful.']);
        	}

        }
	}

    public function LoadList($param = null) {
        $items = $this->service->LoadList();
        $lists = $items->result();

        if ($param == 'options') {
            $output = '<option value="">Select Service</option>';
            foreach ($lists as $row) {
                $output .= '<option value="'.$row->Id.'">'.$row->Name.'</option>';
            }
            echo $output;
        }
        else {
            echo 'Parameter not defined.';
        }

    }




    public function EditModules($id) {
        $layout = array('admin_services' => 'active', 'service'=>'AdminService', 'nestable' => TRUE,);
        $data['labels'] = array('breadcrumb' => 'Modules', 'header'=>'Service Modules');
        $this->load->view('layout/meta');
        $this->load->view('layout/css');
        $this->load->view('layout/headend');
        $this->load->view('layout/sectionstart');
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar',$layout);
        $this->load->view('admin/ServiceMasterlistModule',$data);
        $this->load->view('layout/rightsidebar');   
        $this->load->view('layout/footer'); 
        $this->load->view('layout/js',$layout);         
    }

}
