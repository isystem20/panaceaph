<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Department extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('department_model');
        $this->load->helper('url');
    }

    public function index() {
    	$data = $this->department_model->get_records();
    	echo json_encode($data);
    }

}
?>