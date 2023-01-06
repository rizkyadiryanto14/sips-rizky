<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penelitian extends MY_Controller
{

	public function index()
	{
		return $this->load->view('kaprodi/penelitian');
	}

	public function detail($id = null)
	{
		if ($id) {
			return $this->load->view('kaprodi/penelitian_detail', ['penelitian_id' => $id]);
		}
		return redirect(base_url('kaprodi/penelitian'));
	}
}

/* End of file Penelitian.php */
/* Location: ./application/controllers/admin/Penelitian.php */