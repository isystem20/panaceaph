<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PositionsModel extends CI_Model { 

 


	public function LoadPositionsList(){

		$this->db->select('*');
		$this->db->from('hr_general_positions');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}

