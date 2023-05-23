<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Seminar extends MY_Controller
{

	public function index()
	{
		$data['mahasiswa'] = $this->db->get('proposal_mahasiswa_v')->result_array();
		return $this->load->view('admin/seminar', $data);
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
			$tgl = $this->input->post('tanggal');
			$jam = $this->input->post('jam');
			$tempat = $this->input->post('tempat');

			$cekTempat = $this->db->get_where('seminar', ['tanggal' => date('Y-m-d', strtotime($tgl)), 'HOUR(jam)' => date('H', strtotime($jam)), 'tempat' => $tempat])->row_array();
			if (!empty($cekTempat)) {
				$this->session->set_flashdata('error', 'Tempat telah digunakan pada tanggal tersebut.');
				return redirect(base_url('admin/seminar/status/' . $id));
			}
			$dos1 = $this->input->post('dosen_penguji_id');
			$dos2 = $this->input->post('dosen_penguji2_id');
			$cekWaktu1 = $this->db->get_where('seminar', ['tanggal' => date('Y-m-d', strtotime($tgl)), 'HOUR(jam)' => date('H', strtotime($jam)), 'dosen_penguji_id' => $dos1])->row_array();
			$cekWaktu2 = $this->db->get_where('seminar', ['tanggal' => date('Y-m-d', strtotime($tgl)), 'HOUR(jam)' => date('H', strtotime($jam)), 'dosen_penguji2_id' => $dos2])->row_array();
			if (!empty($cekWaktu1)) {
				$this->session->set_flashdata('error', 'Jadwal dosen ' . $dos1 . ' bentrok.');
				return redirect(base_url('admin/seminar/status/' . $id));
			}
			if (!empty($cekWaktu2)) {
				$this->session->set_flashdata('error', 'Jadwal dosen ' . $dos2 . ' bentrok.');
				return redirect(base_url('admin/seminar/status/' . $id));
			}
			$this->db->update('seminar', $this->input->post(), ['id' => $id]);
			return redirect(base_url('admin/seminar'));
		}
	}
}

/* End of file Seminar.php */
/* Location: ./application/controllers/admin/Seminar.php */