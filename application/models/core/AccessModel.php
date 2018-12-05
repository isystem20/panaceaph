<?php
class AccessModel extends CI_Model
{
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

	public function get_access_items($UserId) {
		$query = $this->db->query('CALL usp_access_rights ('.$UserId.');');
        return $query->result();
      
	}

	public function get_services($items) {
		$res = array_unique(array_column($items, 'service_code'));
		return $res;
	}

	public function get_access_parents($items) {
		$res = array_unique(array_column($items, 'parent'));
		return $res;
	}

}

?>