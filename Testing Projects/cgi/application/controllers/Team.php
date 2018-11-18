<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Team extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('team_model');
        $this->load->helper('url');
    }

    public function index() {
    	$data = $this->team_model->get_records();
    	echo json_encode($data);
    }

}
?>