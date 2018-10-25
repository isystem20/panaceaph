<?php
/**
* 
*/
class ClientModel extends CI_Model
{

    function __construct(){
        parent::__construct();
        //load our second db and put in $db2
        // $this->hrdb = $this->load->database('hrdata', TRUE);
    }


    public function Add_Client($data) {
        $this->db->insert('system_companies', $data);
    }

    public function Load_Client($id = null,$active = null) {
        $this->db->select('com.*, ind.Code as industryCode, ind.Name as industryName, con.Code as contractCode, con.Name as contractName, "" as services');
        $this->db->from('system_companies as com');
        $this->db->join('system_industries as ind','ind.id = com.IndustryType','left outer');
        $this->db->join('system_contracts as con','con.id = com.ContractType','left outer');        
        if (!empty($id)) {
           $this->db->where('com.id',$id);
        }
        if (!empty($active)) {
           $this->db->where('com.Active',$active);
        }
        $result = $this->db->get();
        if ($result->num_rows() > 0) {
            foreach ($result->result() as $object)
            {
                // print_r($result->row());
                // die();
                $this->db->flush_cache();

                $Company = $object->Id;

                $this->db->select('cs.*,s.Code as servicecode, s.Name as servicename');
                $this->db->from('system_company_services as cs');
                $this->db->join('system_services as s','s.id = cs.Serviceid','left outer');
                $this->db->where('cs.CompanyId',$Company);
                $this->db->where('cs.Active','1');
                $services = $this->db->get()->result();
                // print_r($services);
                // die();
                $object->services = $services;
            }      
        }
        // print_r($result);
        return $result;

    }


    public function Load_Industries() {
    	$this->db->select('*');
    	$this->db->from('system_industries');
    	$query = $this->db->get();
        return $query;
    }

    public function Load_Contracts() {
        $this->db->select('*');
        $this->db->from('system_contracts');
        $query = $this->db->get();
        return $query;
    }

}