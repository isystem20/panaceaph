<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CostModel extends CI_Model { 


 	public function __construct() {
		parent::__construct();
		$this->load->model('LoggerModel','logger');
	}


	public function LoadCostList($id = null){

		$this->db->select('p.*, c.FirstName as cFirstName, c.LastName as cLastName, m.FirstName as mFirstName, m.LastName as mLastName');
		$this->db->from('hr_general_costcenters as p');
		$this->db->join('system_users as c','c.id = p.CreatedById','left outer');
		$this->db->join('system_users as m','m.id = p.ModifiedById','left outer');

		if ($this->session->userdata('userlevel') < 90) {
			$this->db->where('p.CompanyId',$this->session->userdata('company'));
		}
		if (!empty($id)) {
			$this->db->where('p.Id',$id);

		}else {
			$this->db->where('p.Active','1');		
			$this->db->or_where('p.Active','0');			
		}
		$result = $this->db->get();
		return $result;		

	}


	public function Create($data) {
		$this->db->set('CreatedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->insert('hr_general_costcenters',$data);
		$inserted = $this->db->insert_id();
		if ($inserted > 0) {
			$result = $this->LoadCostList($inserted);
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
		$this->db->set('ModifiedAt','CURRENT_TIMESTAMP',FALSE);
		$this->db->where('CompanyId',$data['CompanyId']);
		$this->db->where('Id',$data['Id']);		
		$this->db->update('hr_general_costcenters');
		$update = $this->db->affected_rows();
		if ($update > 0) {

			return $data;
		}
		else {
			return FALSE;
		}
	}



	public function Update($id, $data) {
	    $this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE);
	    $this->db->set('ModifiedAt','CURRENT_TIMESTAMP',FALSE);
	    $this->db->set('VersionNo', 'VersionNo+1', FALSE);  
	    $this->db->where('Id', $id);
	    $query = $this->db->update('hr_general_costcenters', $data);
		$update = $this->db->affected_rows();
		if ($update > 0) {
			$result = $this->LoadCostList($id);
			if ($result->num_rows() > 0) {
				return $result->result();
			}
			return $data;
		}
		else {
			return FALSE;
		}
	}




}


