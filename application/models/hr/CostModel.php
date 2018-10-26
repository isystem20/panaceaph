<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CostModel extends CI_Model { 

 


	public function LoadCostList(){

		$this->db->select('*');
		$this->db->from('hr_general_costcenters');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}


