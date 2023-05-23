<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profil extends MY_Controller
{

	public function index()
	{
		return $this->load->view('kaprodi/profil');
	}
}

/* End of file Profil.php */
/* Location: ./application/controllers/admin/Profil.php */