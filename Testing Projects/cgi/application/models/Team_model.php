<?php

    class Team_model extends CI_Model {

        public function __construct() {
            parent::__construct();
            $this->load->database();
        }

        public function get_records(){
        	$query = $this->db->query("SELECT * FROM teams");
        	return $query->result_array();
        }

}

?>