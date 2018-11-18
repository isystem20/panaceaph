<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Position extends CI_Controller {


    public function __construct() {
        parent::__construct();
        $this->load->model('position_model');
        $this->load->helper('url');
    }

    public function index() {
    	$data = $this->position_model->get_records();
    	echo json_encode($data);
    }

}
?>