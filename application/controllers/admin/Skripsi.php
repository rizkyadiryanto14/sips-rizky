<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Skripsi extends MY_Controller
{

    public function index()
    {
        $data['mahasiswa'] = $this->db->get('proposal_mahasiswa_v')->result_array();
        return $this->load->view('admin/skripsi', $data);
    }

    public function status($id = null)
    {
        if ($id) {
            return $this->load->view('admin/skripsi_status', ['skripsi_id' => $id]);
        }
        return redirect(base_url('admin/skripsi'));
    }

    public function updatestatus($id = null)
    {
        if ($id) {

            $tgl = date('Y-m-d', strtotime($this->input->post('jadwal_skripsi')));
            $time = date('H:i:s', strtotime($this->input->post('jadwal_skripsi')));
            $cekWaktu1 = $this->db->where('date(jadwal_skripsi)', $tgl)->where('time(jadwal_skripsi)', $time)->get('skripsi')->row_array();

            if (!empty($cekWaktu1)) {
                $this->session->set_flashdata('error-jadwal', 'Jadwal telah digunakan.');
                return redirect(base_url('admin/skripsi/status/' . $id));
            }

            $this->db->update('skripsi', $this->input->post(), ['id' => $id]);
            return redirect(base_url('admin/skripsi'));
        }
    }
}

/* End of file Seminar.php */