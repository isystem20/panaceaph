<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class GroupsController extends pierre_Controller {


	public function __construct() {
		parent::__construct();
		$this->load->model('hr/GroupsModel','groupsmod');
		$this->load->model('LoggerModel','logger');
	}




	public function Masterlist()
	{
		$layout = array('datatable' => TRUE, 'hr_emp_list' => 'active', 'service'=>'HRService');
		$this->load->view('layout/meta');
		$this->load->view('layout/css');
		$this->load->view('layout/headend');
		$this->load->view('layout/sectionstart');
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar',$layout);
		$this->load->view('hr/hr_groups');
		$this->load->view('layout/rightsidebar');	
		$this->load->view('layout/footer');	
		$this->load->view('layout/js',$layout);	

	}





    public function LoadList($param = null) {
        $items = $this->groupsmod->Loadlist();
        $lists = $items->result();

        if ($param == 'options') {
            $output = '<option value="">Select Assigned Group</option>';
            foreach ($lists as $row) {
                $output .= '<option value="'.$row->Id.'">'.$row->Name.'</option>';
            }
            echo $output;
        }
        else {
            echo 'Parameter not defined.';
        }

    }

}
