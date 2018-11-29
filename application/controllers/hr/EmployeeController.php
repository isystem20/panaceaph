<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmployeeController extends pierre_Controller {


	public function __construct() {
		parent::__construct();
		$this->load->model('hr/EmployeeModel','empmod');
		$this->load->model('LoggerModel','logger');
	}


	public function Masterlist()
	{
		$data['employees'] = $this->empmod->LoadMasterlist();
		$data['extra'] = array('class'=>'departments');
		$layout = array('datatable' => TRUE, 'hr_emp_list' => 'active', 'service'=>'HRService', 'form2' => TRUE);
		// print_r($data);
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_masterlist',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	
	}
	public function Information($id = null) {
		$layout = array('hr_emp_list' => 'active', 'service'=>'HRService', 'advancedform' => TRUE,);
		$data['labels'] = array('breadcrumb' => 'Register', 'header'=>'Add Employee');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_masterlist_info',$data);
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	
		
	}

	public function Read() {

	}

	public function Create() {

        $custom_required = array(
                'required'      => 'This field is required.',
                );
        $this->form_validation->set_rules('FirstName', 'first name', 'required',$custom_required);
        $this->form_validation->set_rules('LastName', 'last name', 'required',$custom_required);
        $this->form_validation->set_rules('MiddleName', 'middle name', 'required',$custom_required);
        $this->form_validation->set_rules('Birthdate', 'birthdate', 'required',$custom_required);
        $this->form_validation->set_rules('CivilStatus', 'civil status', 'required',$custom_required);
        $this->form_validation->set_rules('NationalityId', 'nationality', 'required',$custom_required);
        $this->form_validation->set_rules('Address1', 'address', 'required',$custom_required);
       
        $this->form_validation->set_rules('CityId', 'birthdate', 'required',$custom_required);
        $this->form_validation->set_rules('ProvinceId', 'region', 'required',$custom_required);
        $this->form_validation->set_rules('PersonalEmail', 'email', 'required|valid_email',$custom_required);
        $this->form_validation->set_rules('Code', 'employee number', 'required',$custom_required);
        $this->form_validation->set_rules('CompanyEmail', 'company email', 'required|valid_email',$custom_required);
        $this->form_validation->set_rules('SiteId', 'site', 'required',$custom_required);
        $this->form_validation->set_rules('DepartmentId', 'department', 'required',$custom_required);
        $this->form_validation->set_rules('CostCenterId', 'costcenter', 'required',$custom_required);

        $this->form_validation->set_rules('Leader1', 'superior', 'required',$custom_required);
        $this->form_validation->set_rules('PositionId', 'position', 'required',$custom_required);
        $this->form_validation->set_rules('EmployeeRankId', 'rank', 'required',$custom_required);
        $this->form_validation->set_rules('EmployeeTypeId', 'type', 'required',$custom_required);

        $this->form_validation->set_rules('DateHired', 'hire date', 'required',$custom_required);
        $this->form_validation->set_rules('Duration', 'duration', 'required',$custom_required);




        // $this->form_validation->set_rules('FirstName', 'first name', 'required');
        // $this->form_validation->set_rules('LastName', 'last name', 'required');
        // $this->form_validation->set_rules('MiddleName', 'middle name', 'required');
        // $this->form_validation->set_rules('Birthdate', 'birthdate', 'required');
        // $this->form_validation->set_rules('CivilStatus', 'civil status', 'required');
        // $this->form_validation->set_rules('NationalityId', 'nationality', 'required');
        // $this->form_validation->set_rules('Address1', 'address', 'required');
       
        // $this->form_validation->set_rules('CityId', 'birthdate', 'required');
        // $this->form_validation->set_rules('ProvinceId', 'region', 'required');
        // $this->form_validation->set_rules('PersonalEmail', 'email', 'required|valid_email');
        // $this->form_validation->set_rules('Code', 'employee number', 'required');
        // $this->form_validation->set_rules('CompanyEmail', 'company email', 'required|valid_email');
        // $this->form_validation->set_rules('SiteId', 'site', 'required');
        // $this->form_validation->set_rules('DepartmentId', 'department', 'required');
        // $this->form_validation->set_rules('CostCenterId', 'costcenter', 'required');

        // $this->form_validation->set_rules('Leader1', 'superior', 'required');
        // $this->form_validation->set_rules('PositionId', 'position', 'required');
        // $this->form_validation->set_rules('EmployeeRankId', 'rank', 'required');
        // $this->form_validation->set_rules('EmployeeTypeId', 'type', 'required');

        // $this->form_validation->set_rules('DateHired', 'hire date', 'required');
        // $this->form_validation->set_rules('Duration', 'duration', 'required');





        // $this->form_validation->set_rules('Shift', 'shift', 'required');

        $this->form_validation->set_error_delimiters('<p class="help-block">','</p>');
        $postdata = $this->input->post();
        if ($this->form_validation->run() == FALSE){
            
        	foreach ($postdata as $key => $value) {
        		$data['responses'][$key] = form_error($key);
        	}
            // unset($data['CompanyId']);
        	// print_r($data);
        	// die();
        	// echo json_encode($data);
            $errors = validation_errors();
            array_push($data, ['error'=>$errors]);
            echo json_encode($data);
        }
        elseif (empty($postdata['CompanyId'])) {
        	echo json_encode(['error'=>'Subscription Cannot be validated.']);
        }
        else{
        	// echo json_encode($postdata);

        	$result = $this->empmod->Create($postdata);
        	if ($result != FALSE) {
	        	$json = json_encode($result);
	        	$this->logger->log('Add','Successful Adding Employee',$json);          		
        		echo $json;
        	}
        	else {
        		echo json_encode(['error'=>'Update Unsuccessful.']);
        	}

        }		


	}

	public function Update() {

	}

	public function Delete() {
	}


    public function LoadList($param = null) {
        $items = $this->empmod->LoadMasterlist();
        $lists = $items->result();

        if ($param == 'options') {
            $output = '<option value="">Select Employee</option>';
            foreach ($lists as $row) {
                $output .= '<option value="'.$row->Id.'">'.$row->FirstName.' '.$row->LastName.' </option>';
            }
            echo $output;
        }
        else {
            echo 'Parameter not defined.';
        }

    }
	

}
