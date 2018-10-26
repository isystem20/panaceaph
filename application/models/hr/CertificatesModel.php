<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CertificatesModel extends CI_Model { 
	
	public function LoadCertificatesList(){

		$this->db->select('*');
		$this->db->from('hr_general_certificates');
		$this->db->where('Active','1');
		return $this->db->get();

	}







}



