<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmployeeModel extends CI_Model { 


 	public function __construct() {
		parent::__construct();
		$this->load->model('LoggerModel','logger');
		$this->load->library('Uuid','uuid');
	}

	public function LoadMasterlist(){

		$this->db->select('e.*, p.Name as PositionName, d.Name as DepartmentName, l.FirstName as SFirstName, l.LastName as SLastName');
		$this->db->from('hr_general_employees e');
		$this->db->where('e.Active','1');
		$this->db->join('hr_general_positions p','p.Id = e.PositionId','left outer');
		$this->db->join('hr_general_departments d','d.Id = e.DepartmentId','left outer');
		$this->db->join('hr_general_employees l','l.Id = e.Leader1','left outer');
		// if ($this->session->userdata('userlevel') < 90) {
		// 	$this->db->where('p.CompanyId',$this->session->userdata('company'));
		// }
		// if (!empty($id)) {
		// 	$this->db->where('p.Id',$id);

		// }else {
		// 	$this->db->where('p.Active','1');		
		// 	$this->db->or_where('p.Active','0');			
		// }
		$result = $this->db->get();
		return $result;	


	}

	public function Create($data) {

		$datehired = $data['DateHired'];
		$duration = $data['Duration'];
		unset($data['DateHired']);
		unset($data['Duration']);

		if (!empty($data['education_school'])) {
			$ed_s = $data['education_school'];
			$ed_d = $data['education_degree'];
			$ed_y = $data['education_year'];
			$ed_a = $data['education_award'];
			unset($data['education_school']);
			unset($data['education_degree']);
			unset($data['education_year']);
			unset($data['education_award']);
		}
		if (!empty($data['work_company'])) {
	        unset($data['work_company']);
	        unset($data['work_position']);
	       	unset($data['work_year']);
	        unset($data['work_contact']);
		}
		if (!empty($data['license_name'])) {
	        unset($data['license_name']);
	        unset($data['license_provider']);
	        unset($data['license_validity']);
		}
		if (!empty($data['training_name'])) {
	        unset($data['training_name']);
	        unset($data['training_provider']);
	        unset($data['training_date']);
		}
		if (!empty($data['dependent_name'])) {
	        unset($data['dependent_name']);
	        unset($data['dependent_relation']);
	        unset($data['dependent_bdate']);
		}

		//Parsing Date
		$data['DateHired'] = date('Y-m-d', strtotime($data['DateHired']));
		$data['Birthdate'] = date('Y-m-d', strtotime($data['Birthdate']));


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


			$result = $this->LoadMasterlist($id);
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


