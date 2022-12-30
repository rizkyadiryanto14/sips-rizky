<?php

use PhpParser\Node\Expr\PostDec;

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

        $nim            = $this->input->post('nim');
        $nama           = $this->input->post('nama');
        $judul_skripsi  = $this->input->post('judul_skripsi');
        $abstrak        = $this->input->post('abstrak');
        $tahun_lulus    = $this->input->post('tahun_lulus');

        $data = array(
            'nim'           => $nim,
            'nama'          => $nama,
            'abstrak'       => $abstrak,
            'tahun_lulus'   => $tahun_lulus,
            'judul_skripsi' => $judul_skripsi
        );

        $this->Daftar_judul_model->tambahData($data);
        redirect('admin/daftar_judul');
    }

    public function update()
    {
        $this->load->model('Daftar_judul_model');

        $id             = $this->input->post('id');
        $nim            = $this->input->post('nim');
        $nama           = $this->input->post('nama');
        $judul_skripsi  = $this->input->post('judul_skripsi');
        $abstrak        = $this->input->post('abstrak');
        $tahun_lulus    = $this->input->post('tahun_lulus');

        $data = array(
            'nim'           => $nim,
            'nama'          => $nama,
            'abstrak'       => $abstrak,
            'tahun_lulus'   => $tahun_lulus,
            'judul_skripsi' => $judul_skripsi
        );

        $where = array('id' => $id);


        $this->Daftar_judul_model->updateData($data, $where);
        redirect('admin/daftar_judul');
    }

    public function delete($id)
    {
        $this->load->model('Daftar_judul_model');

        $where = array('id' => $id);
        $this->Daftar_judul_model->deleteData($where, 'daftar_judul');
        redirect('admin/daftar_judul');
    }
}