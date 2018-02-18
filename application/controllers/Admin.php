<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function index(){
		redirect('QG/home','refresh');
	}

	public function loginProcess(){
		
	}

	public function collection(){
		// $this->load->view('layout/header');
		// $this->load->view('news');
		// $this->load->view('layout/footer');		
	}
}
