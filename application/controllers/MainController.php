<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MainController extends Pierre_Controller {

	public function __construct() {
		parent::__construct();
	}



	public function index()
	{
		// $access = $this->session->userdata('access');
  //       foreach ($access as $mod) {
  //           $hiredate = $row->Date;
  //       }
		// print_r($this->session->userdata());
		// $companycode = $this->session->userdata('companycode');

		$services = $this->session->userdata('access');
		if (!empty($services)) {
			$uniques = [];
			foreach ($services as $row) {
				if ($row->isDefault == '1') {
					if ($row->moduleURL != '') {
						return redirect(base_url().$row->moduleURL);
					}
					else {
						die('Default Page Not found.');
					}
				}
			}
		}
		else {
			die('Default Page Not Found.');
		}
	
	}



	
}
