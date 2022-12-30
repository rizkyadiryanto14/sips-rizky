<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Report extends MY_Controller
{

	public function index()
	{
		return $this->load->view('kaprodi/report');
	}
}

/* End of file Report.php */
/* Location: ./application/controllers/admin/Report.php */