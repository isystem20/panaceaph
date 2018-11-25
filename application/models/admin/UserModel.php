<?php
/**
* 
*/
class UserModel extends CI_Model
{

    function __construct(){
        parent::__construct();
        //load our second db and put in $db2
        // $this->hrdb = $this->load->database('hrdata', TRUE);
    }


    public function Load_Masterlist($id = null,$active = null) {
        $this->db->select('u.*, com.CompanyName as CompanyName, "" as Access');
        $this->db->from('system_users as u');
        $this->db->join('system_companies as com','com.id = u.CompanyId','left outer');     
        if (!empty($id)) {
           $this->db->where('u.id',$id);
        }
        if (!empty($active)) {
           $this->db->where('u.Active',$active);
        }
        $result = $this->db->get();
        if ($result->num_rows() > 0) {
            foreach ($result->result() as $object)
            {
                // print_r($result->row());
                // die();
                $this->db->flush_cache();

                $Company = $object->CompanyId;
                $User = $object->id;

                $this->db->select('am.*, s.Code as ServiceCode, s.Name as ServiceName, m.Code as ModuleCode, m.Name as ModuleName');
                $this->db->from('system_user_modules as am');
                $this->db->join('system_services as s','s.id = am.Serviceid','left outer');
                $this->db->join('system_modules as m','m.id = am.ModuleId','left outer');

                $this->db->where('am.CompanyId',$Company);
                $this->db->where('am.UserId',$User);

                $this->db->where('am.Active','1');
                $Accesslist = $this->db->get()->result();
                // print_r($services);
                // die();
                $object->Access = $Accesslist;
            }      
        }
        // print_r($result);
        return $result;
    }

}