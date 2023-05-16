<?php

class Dospem extends MY_Controller
{
    public function index()
    {
        $kuota = $this->input->post('kuota');

        $data = [
            'nilai'     => $kuota,
        ];

        if (empty($kuota)) {
            $this->session->set_flashdata('error', 'Data kuota diset menjadi default 8');
            redirect(base_url('admin/pengaturan'));
        } else {
            $query = $this->db->update('kuota_bimbingan', $data);
            if ($query) {
                $this->session->set_flashdata('sukses', 'Data Kuota Berhasil Di Edit');
                redirect(base_url('admin/pengaturan'));
            } else {
                $this->session->set_flashdata('error', 'Data Gagal Di tambahkan');
                redirect(base_url('admin/pengaturan'));
            }
        }
    }
}
