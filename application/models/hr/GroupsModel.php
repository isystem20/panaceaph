<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class GroupsModel extends CI_Model { 

 


	public function LoadGroupslist(){

		$this->db->select('*');
		$this->db->from('hr_general_ranks');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}

