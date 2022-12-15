<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Seminar extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Skripsi_model', 'model');
    }
    
    public function index()
    {
        return $this->load->view('mahasiswa/seminar');
    }

    public function detail($id = null)
    {
        if ($id) {
            return $this->load->view('mahasiswa/seminar_detail', ['seminar_id' => $id]);
        }
        redirect(base_url('mahasiswa/seminar'));
    }

    public function cetak($id = null)
    {
        $mpdf       = new \Mpdf\Mpdf();

        $join       = array(
            ['hasil_seminar', 'hasil_seminar.seminar_id = seminar.id', 'LEFT'],
            ['proposal_mahasiswa_v', 'proposal_mahasiswa_v.id = seminar.proposal_mahasiswa_id', 'LEFT'],
            ['mahasiswa', 'proposal_mahasiswa_v.mahasiswa_id=mahasiswa.id', 'LEFT'],
            ['dosen d', 'd.id=proposal_mahasiswa_v.dosen_id', 'LEFT'],
            ['dosen e', 'e.id=proposal_mahasiswa_v.dosen_penguji_id', 'LEFT']
        );

        $v['showData']   = $this->model->viewGlobalJoinWhere(
            '
                seminar.id,
                seminar.proposal_mahasiswa_id,
                seminar.tanggal,
                seminar.jam,
                seminar.dosen_penguji_id,
                seminar.dosen_id,
                seminar.tempat,
                seminar.file_proposal,
                seminar.syarat_seminar,
                seminar.surat_permohonan,
                seminar.kartu_bimbingan,
                mahasiswa.tempat_lahir,
                mahasiswa.tanggal_lahir,
                proposal_mahasiswa_v.judul as proposal_mahasiswa_judul,
                proposal_mahasiswa_v.nama_mahasiswa,
                proposal_mahasiswa_v.nim,
                proposal_mahasiswa_v.nama_prodi,
                hasil_seminar.status as hasil_seminar_status,
                d.nama AS penguji_nama,
                d.nip AS penguji_nip,
                e.nama AS pembimbing_nama,
                e.nip AS pembimbing_nip
            ',
            'seminar',
            ['seminar.id'        => $id],
            $join,
            )->result_array();
            
        $data       = $this->load->view('mahasiswa/cetak', $v, true);
        $mpdf->WriteHTML($data);
        $mpdf->Output();
    }
}

/* End of file Seminar.php */