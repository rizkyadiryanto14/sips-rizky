<?php

class Daftar_judul extends MY_Controller
{
    public function index()
    {
        $this->load->model('Daftar_judul_model');

        $data = array(
            'daftar_judul' => $this->Daftar_judul_model->get_daftar()->result()
        );
        return $this->load->view('admin/daftar_judul', $data);
    }

    public function create()
    {
        $this->load->model('Daftar_judul_model');

        $nim        = $this->input->post('nim');
        $nama       = $this->input->post('nama');
        $abstrak    = $this->input->post('abstrak');
        $tahun_lulus = $this->input->post('tahun_lulus');

        $data = array(
            'nim'           => $nim,
            'nama'          => $nama,
            'abstrak'       => $abstrak,
            'tahun_lulus'   => $tahun_lulus
        );

        $this->Daftar_judul_model->tambahData($data);
        redirect('admin/daftar_judul');
    }
}