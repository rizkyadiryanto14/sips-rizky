<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Skripsi extends MY_Controller
{

    public function index()
    {
        return $this->load->view('admin/skripsi');
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
        $this->db->select('jadwal_skripsi');
        $this->db->from('skripsi');
        $query = $this->db->get()->num_rows();
        if ($id) {
            $jadwal_skripsi = $this->input->post('jadwal_skripsi');
            // var_dump($jadwal_skripsi);
            // var_dump($query);
            // die();
            // foreach ($query as $file) {
            //     echo $file;
            // }
            if ($jadwal_skripsi == $query) {
                echo 'tanggal sama';
            } else {
                $this->db->update('skripsi', $this->input->post(), ['id' => $id]);
                return redirect(base_url('admin/skripsi'));
            }


            // $result = $jadwal_skripsi;

        }
    }
}

/* End of file Seminar.php */