<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Konsultasi extends MY_Controller
{

	public function index()
	{
		return $this->load->view('kaprodi/konsultasi');
	}
}

/* End of file Konsultasi.php */
/* Location: ./application/controllers/admin/Konsultasi.php */