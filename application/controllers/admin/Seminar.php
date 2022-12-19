<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Seminar extends MY_Controller
{

	public function index()
	{
		return $this->load->view('admin/seminar');
	}

	public function detail($id = null)
	{
		if ($id) {
			return $this->load->view('admin/seminar_detail', ['seminar_id' => $id]);
		}
		return redirect(base_url('admin/seminar'));
	}

	public function status($id = null)
	{
		if ($id) {
			return $this->load->view('admin/seminar_status', ['seminar_id' => $id]);
		}
		return redirect(base_url('admin/seminar'));
	}

	public function updatestatus($id = null)
	{
		if ($id) {
			$this->db->update('seminar', $this->input->post(), ['id' => $id]);
			return redirect(base_url('admin/seminar'));
		}
	}
}

/* End of file Seminar.php */
/* Location: ./application/controllers/admin/Seminar.php */