<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Skripsi extends MY_Controller
{

    public function index()
    {
        return $this->load->view('kaprodi/skripsi');
    }

    public function status($id = null)
    {
        if ($id) {
            return $this->load->view('kaprodi/skripsi_status', ['skripsi_id' => $id]);
        }
        return redirect(base_url('kaprodi/skripsi'));
    }

    public function updatestatus($id = null)
    {
        if ($id) {
            $this->db->update('skripsi', $this->input->post(), ['id' => $id]);
            return redirect(base_url('kaprodi/skripsi'));
        }
    }
}

/* End of file Seminar.php */