<?php 

class Ruangan extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Penjadwalan_model', 'model');
    }

    public function index()
    {
        $data['ruangan']  = $this->Penjadwalan_model->AmbilDataRuangan();
        $this->load->view('admin/penjadwalan/ruangan', $data);
    }

    public function TambahRuangan()
    {
        $nama_ruangan = $this->input->post('nama_ruangan');

        $data = array(
            'nama_ruangan'  => $nama_ruangan
        );

        $insert = $this->Penjadwalan_model->TambahRuangan($data);

        if ($insert) {
            $this->session->set_flashdata('sukses', 'Data Ruangan Berhasil Di Tambahkan');
            redirect(base_url('ruangan'));
        }else {
            $this->session->set_flashdata('gagal', 'Data Tidak Berhasil Di Tambahkan');
            redirect(base_url('ruangan'));
        }


    }
}