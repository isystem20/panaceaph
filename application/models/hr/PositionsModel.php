<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PositionsModel extends CI_Model { 

 	public function __construct() {
		parent::__construct();
		$this->load->model('LoggerModel','logger');
	}

	public function LoadPositionsList(){

		$this->db->select('*');
		$this->db->from('hr_general_positions');
		$this->db->where('Active','1');
		return $this->db->get();

	}


	public function Create($data) {
		$this->db->set('CreatedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->insert('hr_general_positions',$data);
		$inserted = $this->db->insert_id();
		if ($inserted > 0) {
			return TRUE;
		}
		else {
			return FALSE;
		}
	}




}

