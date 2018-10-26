<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PositionsController extends pierre_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('hr/PositionsModel','posmod');
		$this->load->model('LoggerModel','logger');
	}


	public function Masterlist()
	{

		$data['positions'] = $this->posmod->LoadPositionsList();
		$layout = array('datatable' => TRUE, 'form'=> TRUE, 'hr_emp_list' => 'active', 'service'=>'HRService');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_positions',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	

	}


	public function Create() {

        $this->form_validation->set_rules('Code', 'Sorting', 'required|is_unique[hr_general_positions.Code]');
        $this->form_validation->set_rules('Name', 'Group by', 'required');
        $postdata = $this->input->post();
        if ($this->form_validation->run() == FALSE){
            $errors = validation_errors();
            echo json_encode(['error'=>$errors]);
        }
        elseif (empty($postdata['CompanyId'])) {
        	echo json_encode(['error'=>'Subscription Cannot be validated.']);
        }
        else{
        	$result = $this->posmod->Create($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($postdata);
	        	$this->logger->log('Add','Successful Adding Position',$json);        	
	          	echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'Update Unsuccessful.']);
        	}

        }


	}


}
