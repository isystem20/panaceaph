<?php

    class Department_model extends CI_Model {

        public function __construct() {
            parent::__construct();
            $this->load->database();
        }
        public function get_records(){
        	$query = $this->db->query("SELECT * FROM departments");
        	return $query->result_array();
        }

}

?>