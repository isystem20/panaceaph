<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ListController extends pierre_Controller {


	public function __construct() {
		parent::__construct();
		$this->load->model('generic/ListModel','list');
		$this->load->model('LoggerModel','logger');
	}

	public function LoadCityList($param = null) {
		$cities = $this->list->LoadCityList();
		$city_list = $cities->result();

		if ($param == 'options') {
			$output = '<option value="">Select City</option>';
			foreach ($city_list as $row) {
				$output .= '<option value="'.$row->Id.'">'.$row->Name.'</option>';
			}
			echo $output;
		}
		else {
			echo 'Parameter not defined.';
		}

	}


	public function LoadNationalityList($param = null) {
		$cities = $this->list->LoadNationalityList();
		$city_list = $cities->result();

		if ($param == 'options') {
			$output = '<option value="">Select Nationality</option>';
			foreach ($city_list as $row) {
				$output .= '<option value="'.$row->Id.'">'.$row->Name.'</option>';
			}
			echo $output;
		}
		else {
			echo 'Parameter not defined.';
		}
	}

	public function LoadRegionList($param = null) {
		$cities = $this->list->LoadRegionList();
		$city_list = $cities->result();

		if ($param == 'options') {
			$output = '<option value="">Select Region</option>';
			foreach ($city_list as $row) {
				$output .= '<option value="'.$row->Id.'">'.$row->Name.'</option>';
			}
			echo $output;
		}
		else {
			echo 'Parameter not defined.';
		}

	}


}