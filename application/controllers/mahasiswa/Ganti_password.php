<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ganti_password extends MY_Controller
{

	public function index()
	{
		$data['mahasiswa'] = $this->db->get_where('mahasiswa', ['id' => $this->session->userdata('id')])->row_array();

		$this->form_validation->set_rules('password', 'password', 'required|trim');
		$this->form_validation->set_rules('new_password', 'new_password', 'required|trim|matches["konfirmasi_password"]');
		$this->form_validation->set_rules('konfirmasi_password', 'konfirmasi_password', 'required|trim|matches["new_password"]');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('mahasiswa/v_ganti_password', $data);
		}
	}
}

/* End of file Profil.php */
/* Location: ./application/controllers/mahasiswa/Profil.php */