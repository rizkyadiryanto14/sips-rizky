<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Jadwal_dosen extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('Jadwal_dosen_model');
    }
    public function index()
    {
        $data['jadwal_dosen']   = $this->Jadwal_dosen_model->GetJadwal();
        $this->load->view('admin/penjadwalan/jadwal_dosen', $data);
    }

    public function ValidationRule()
    {
        $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[5]|max_length[12]');
        $this->form_validation->set_rules('password', 'Password', 'required');
    }

    public function TambahJadwal()
    {

        $id_dosen   = $this->input->post('id_dosen');
        $jadwal     = $this->input->post('jadwal');
        $ruangan    = $this->input->post('ruangan');
        $nama_mk    = $this->input->post('nama_mk');

        $data = array(
            'id_dosen'      => $id_dosen,
            'jadwal'        => $jadwal,
            'ruangan'       => $ruangan,
            'nama_mk'       => $nama_mk
        );
        var_dump($data);
        die();

        $insert = $this->Jadwal_dosen_model->TambahJadwal($id_dosen, $data);

        if ($insert) {
            $this->session->set_flashdata('sukses', 'Data Jadwal Dosen Berhasil Di Tambahkan');
            redirect(base_url('admin/jadwal_dosen'));
        } else {
            $this->session->set_flashdata('gagal', 'Data Jadwal Dosen gagal Di Tambahkan');
            redirect(base_url('admin/jadwal_dosen'));
        }
    }

    public function EditJadwalDosen()
    {
        $id         = $this->input->post('id');
        $nama_dosen = $this->input->post('nama_dosen');
        $jadwal     = $this->input->post('jadwal');
        $ruangan    = $this->input->post('ruangan');
        $nama_mk    = $this->input->post('nama_mk');

        $data = array(
            'nama_dosen'    => $nama_dosen,
            'jadwal'         => $jadwal,
            'ruangan'       => $ruangan,
            'nama_mk'       => $nama_mk
        );

        $update = $this->Jadwal_dosen_model->EditJadwal($id, $data);

        if ($update) {
            $this->session->set_flashdata('sukses', 'Data Jadwal Dosen Berhasil Di Update');
            redirect(base_url('admin/jadwal_dosen'));
        } else {
            $this->session->set_flashdata('gagal', 'Data Jadwal Dosen Gagal di update');
            redirect(base_url('admin/jadwal_dosen'));
        }
    }

    public function DeleteJadwal()
    {
        $id     = $this->input->post('id');

        $delete = $this->Jadwal_dosen_model->HapusJadwal($id);

        if ($delete) {
            $this->session->set_flashdata('sukses', 'Data Berhasil Di Hapus');
            redirect(base_url('admin/jadwal_dosen'));
        } else {
            $this->session->set_flashdata('gagal', 'Data Gagal di Hapus');
            redirect(base_url('admin/jadwal_dosen'));
        }
    }

    public function ImportExcel()
    {
        $spreadsheet = new Spreadsheet();
        $activeWorksheet = $spreadsheet->getActiveSheet();
        $activeWorksheet->setCellValue('A1', 'Hello !');
        $writer = new Xlsx($spreadsheet);
        $berhasil = $writer->save('hello world.xlsx');

        if (!$berhasil) {
            $this->session->set_flashdata('sukses', 'Data Excel Berhasil Di Export');
            redirect(base_url('admin/jadwal_dosen'));
        } else {
            $this->session->set_flashdata('gagal', 'Data Excek Gagal Di Export');
            redirect(base_url('admin/jadwal_dosen'));
        }
    }
}
