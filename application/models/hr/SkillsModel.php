<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SkillsModel extends CI_Model { 

	public function LoadSkillsList(){

		$this->db->select('*');
		$this->db->from('hr_general_skills');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}


