<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PositionsModel extends CI_Model { 

 	public function __construct() {
		parent::__construct();
		$this->load->model('LoggerModel','logger');
	}

	public function LoadPositionsList($id = null){

		$this->db->select('*');
		$this->db->from('hr_general_positions');

		if (!empty($id)) {
			$this->db->where('Id',$id);
		}else {
			$this->db->where('Active','1');		
			$this->db->or_where('Active','0');			
		}
		return $this->db->get();

	}


	public function Create($data) {
		$this->db->set('CreatedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->insert('hr_general_positions',$data);
		$inserted = $this->db->insert_id();
		if ($inserted > 0) {
			$result = $this->LoadPositionsList($inserted);
			if ($result->num_rows() > 0) {
				return $result->result();
			}
			// return TRUE;
		}
		else {
			return FALSE;
		}
	}

	public function Delete($data) {
		$this->db->set('Active',"'3'",FALSE); 
		$this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE);
		$this->db->set('ModifiedAt',"'".date('Y-m-d H:i:s')."'",FALSE);
		$this->db->where('CompanyId',$data['CompanyId']);
		$this->db->where('Id',$data['Id']);		
		$this->db->update('hr_general_positions');
		$update = $this->db->affected_rows();
		if ($update > 0) {
			// $result = $this->LoadPositionsList($update);
			// if ($result->num_rows() > 0) {
			// 	return $result->result();
			// }
			return $data;
		}
		else {
			return FALSE;
		}
	}





}

