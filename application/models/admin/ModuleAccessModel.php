<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModuleAccessModel extends CI_Model { 


 	public function __construct() {
		parent::__construct();
		$this->load->model('LoggerModel','logger');
	}


	public function LoadUserModuleAccess($userid,$company) {
		$this->db->select('a.*, s.Code as ServiceCode, s.Name as ServiceName, m.Code as ModuleCode, m.Name as ModuleName, m.URL as moduleURL');
		$this->db->from('system_user_modules a');
		$this->db->join('system_services s','s.Id = a.ServiceId','left outer');
		$this->db->join('system_modules m','m.Id = a.ModuleId','left outer');
		$this->db->where('a.UserId',$userid);
		$this->db->where('a.CompanyId',$company);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();
		}else {
			return FALSE;
		}
	}



}