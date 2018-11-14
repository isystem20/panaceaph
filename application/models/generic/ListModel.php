<?php
/**
* 
*/
class ListModel extends CI_Model
{

    function __construct(){
        parent::__construct();
        //load our second db and put in $db2
        // $this->hrdb = $this->load->database('hrdata', TRUE);
    }


    public function LoadCityList() {
    	$this->db->select('*');
    	$this->db->from('hr_general_cities');
    	return $this->db->get();
    }

    public function LoadNationalityList() {
    	$this->db->select('*');
    	$this->db->from('hr_general_nationalities');
    	return $this->db->get();
    }

    public function LoadRegionList() {
    	$this->db->select('*');
    	$this->db->from('hr_general_regions');
    	return $this->db->get();
    }



}