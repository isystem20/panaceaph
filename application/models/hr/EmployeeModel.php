<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmployeeModel extends CI_Model { 


 	public function __construct() {
		parent::__construct();
		$this->load->model('LoggerModel','logger');
		$this->load->library('Uuid','uuid');
	}

	public function LoadMasterlist(){

		$this->db->select('*');
		$this->db->from('hr_general_employees');
		$this->db->where('Active','1');
		return $this->db->get();

	}

	public function Create($data) {

		$datehired = $postdata['DateHired'];
		$duration = $postdata['Duration'];
		$ed_s = $postdata['education_school'];
		$ed_d = $postdata['education_degree'];
		$ed_y = $postdata['education_year'];
		$ed_a = $postdata['education_award'];



		unset($postdata['DateHired']);
		unset($postdata['Duration']);
		unset($postdata['education_school']);
		unset($postdata['education_degree']);
		unset($postdata['education_year']);
		unset($postdata['education_award']);
        unset($postdata['work_company']);
        unset($postdata['work_position']);
       	unset($postdata['work_year']);
        unset($postdata['work_contact']);
        unset($postdata['license_name']);
        unset($postdata['license_provider']);
        unset($postdata['license_validity']);
        unset($postdata['training_name']);
        unset($postdata['training_provider']);
        unset($postdata['training_date']);
        unset($postdata['dependent_name']);
        unset($postdata['dependent_relation']);
        unset($postdata['dependent_bdate']);




		$id = $this->uuid->v4();
		$this->db->set('Id',"'".$id."'",FALSE); 
		$this->db->set('CreatedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->insert('hr_general_employees',$data);
		$inserted = $this->db->affected_rows();
		if ($inserted > 0) {

			//Insert Hiring details


			

			//Insert Educations


			//Insert Work Exp


			//Insert Licenses



			//Insert Training



			//Insert Dependents


			$result = $this->LoadMasterlist($$id);
			if ($result->num_rows() > 0) {
				return $result->result();
			}
			// return TRUE;
		}
		else {
			return FALSE;
		}
	}


}


