<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SitesModel extends CI_Model { 

	public function LoadSitesList(){

		$this->db->select('*');
		$this->db->from('hr_general_sites');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}

