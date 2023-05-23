<?php 

class Jam extends MY_Controller
{
    public function __construct()
    {
     parent::__construct();
     $this->load->model('Penjadwalan_model');   
    }

    public function index()
    {
        $data['jam'] = $this->Penjadwalan_model->GetJam();
        $this->load->view('admin/penjadwalan/jam', $data);
    }

    public function TambahJam()
    {
        $range_jam = $this->input->post('range_jam');

        $data = array(
            'range_jam'     => $range_jam
        );

        $insert = $this->Penjadwalan_model->TambahJam($data);

        if ($insert) {
            $this->session->set_flashdata('sukses', 'Data jam Berhasil Di Tambahkan');
            redirect(base_url('admin/jam'));
        }else {
            $this->session->set_flashdata('gagal', 'Data Tidak Berhasil Di Tambahkan');
            redirect(base_url('admin/jam'));
        }
    }

    public function EditJam()
    {
        $id         = $this->input->post('id');
        $range_jam  = $this->input->post('range_jam');

        $data = array(
            'range_jam'     => $range_jam
        );

        $update = $this->Penjadwalan_model->UpdateJam($id,$data);

        if ($update) {
            $this->session->set_flashdata('sukses', 'Data jam Berhasil Di Tambahkan');
            redirect(base_url('admin/jam'));
        }else {
            $this->session->set_flashdata('gagal', 'Data Tidak Berhasil Di Tambahkan');
            redirect(base_url('admin/jam'));
        }
    }

    public function HapusJam()
    {
        $id     = $this->input->post('id');

        $hapus  = $this->Penjadwalan_model->HapusJam($id);

        if($hapus){
            $this->session->set_flashdata('sukses', 'Data Berhasil Di Hapus');
            redirect(base_url('admin/jam'));
        }else {
            $this->session->set_flashdata('gagal','Data gagal di hapus');
            redirect(base_url('admin/jam'));
        }
    }
}