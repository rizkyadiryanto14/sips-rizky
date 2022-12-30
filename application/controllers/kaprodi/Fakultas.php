<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Fakultas extends MY_Controller
{

	public function index()
	{
		return $this->load->view('kaprodi/fakultas');
	}
}

/* End of file Prodi.php */
/* Location: ./application/controllers/admin/Prodi.php */