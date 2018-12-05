<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ServiceModel extends CI_Model { 

 	public function __construct() {
		parent::__construct();
		$this->load->model('LoggerModel','logger');
		$this->load->library('Uuid');
	}

	public $tbl = 'system_services';
	public function LoadList($id = null){

		$this->db->select('s.*, c.FirstName as cFirstName, c.LastName as cLastName, m.FirstName as mFirstName, m.LastName as mLastName');
		$this->db->from($this->tbl.' as s');
		$this->db->join('system_users as c','c.id = s.CreatedById','left outer');
		$this->db->join('system_users as m','m.id = s.ModifiedById','left outer');

		if ($this->session->userdata('userlevel') < 90) {
			$this->db->where('s.CompanyId',$this->session->userdata('company'));
		}
		if (!empty($id)) {
			$this->db->where('s.Id',$id);

		}else {
			$this->db->where('s.Active','1');		
			$this->db->or_where('s.Active','0');			
		}
		$result = $this->db->get();
		return $result;		

	}


	public function Create($data) {
		$id = $this->uuid->v4();
		$data['Id'] = $id;
		$this->db->set('CreatedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE); 
		$this->db->insert($this->tbl,$data);
		$inserted = $this->db->affected_rows();
		if ($inserted > 0) {
			$result = $this->LoadList($id);
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
		$this->db->update($this->tbl);
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



	public function Update($id, $data) {
	    $this->db->set('ModifiedById',"'".$this->session->userdata('userid')."'",FALSE);
	    $this->db->set('ModifiedAt','CURRENT_TIMESTAMP',FALSE);
	    $this->db->set('VersionNo', 'VersionNo+1', FALSE);  
	    $this->db->where('Id', $id);
	    $query = $this->db->update($this->tbl, $data);
		$update = $this->db->affected_rows();
		if ($update > 0) {
			$result = $this->LoadList($id);
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

