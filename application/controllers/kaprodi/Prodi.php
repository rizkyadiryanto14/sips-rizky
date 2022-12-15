<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Prodi extends MY_Controller
{

	public function index()
	{
		return $this->load->view('kaprodi/prodi');
	}
}

/* End of file Prodi.php */
/* Location: ./application/controllers/admin/Prodi.php */