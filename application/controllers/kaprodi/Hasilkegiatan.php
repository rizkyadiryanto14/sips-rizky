<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Hasilkegiatan extends MY_Controller
{

	public function index()
	{
		return $this->load->view('kaprodi/hasilkegiatan');
	}
}

/* End of file Hasilkegiatan.php */
/* Location: ./application/controllers/admin/Hasilkegiatan.php */