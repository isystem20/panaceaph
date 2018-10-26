<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TypesModel extends CI_Model { 

	public function LoadTypesList(){

		$this->db->select('*');
		$this->db->from('hr_general_emptypes');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}

