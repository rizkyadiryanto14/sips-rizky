<?php

class Hari extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Penjadwalan_model');   
    }

    public function index()
    {
        $data['hari']   = $this->Penjadwalan_model->GetData();
        $this->load->view('admin/penjadwalan/hari', $data);
    }

    public function TambahHari()
    {
        $nama_hari = $this->input->post('nama_hari');

        $data = array(
            'nama_hari'     => $nama_hari
        );

        $insert = $this->Penjadwalan_model->tambahData($data);

        if ($insert) {
            $this->session->set_flashdata('sukses', 'Data Hari Berhasil Di Tambahkan');
            redirect(base_url('admin/hari'));
        }else {
            $this->session->set_flashdata('gagal', 'Data Tidak Berhasil Di Tambahkan');
            redirect(base_url('admin/hari'));
        }
    }

    public function Edithari()
    {
        $id         = $this->input->post('id');
        $nama_hari  = $this->input->post('nama_hari');
        
        $data = array(
            'nama_hari' => $nama_hari
        );

        $update = $this->Penjadwalan_model->UpdateHari($id, $data);

        if ($update) {
            $this->session->set_flashdata('sukses' ,"Data Hari Berhasil di Update");
            redirect(base_url('admin/hari'));
        }else {
            $this->session->set_flashdata('gagal' ,"Data Hari Gagal di Update");
            redirect(base_url('admin/hari'));
        }
    }

    public function HapusHari()
    {
        $id     = $this->input->post('id');

        $hapus = $this->Penjadwalan_model->HapusHari($id);

        if ($hapus) {
            $this->session->set_flashdata('sukses' ,"Data Hari Berhasil di Hapus");
            redirect(base_url('admin/hari'));
        }else {
            $this->session->set_flashdata('gagal' ,"Data Hari Gagal di Hapus");
            redirect(base_url('admin/hari'));
        }
    }

    
}