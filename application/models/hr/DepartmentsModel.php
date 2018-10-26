<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DepartmentsModel extends CI_Model { 

 


	public function LoadDepartmentsList(){

		$this->db->select('*');
		$this->db->from('hr_general_departments');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}


