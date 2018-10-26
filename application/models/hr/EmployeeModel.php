<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmployeeModel extends CI_Model { 

	public function LoadEmployeeMasterlist(){

		$this->db->select('*');
		$this->db->from('hr_general_employees');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}


