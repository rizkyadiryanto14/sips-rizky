<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends MY_Controller
{


    public function __construct()
    {
        parent::__construct();
        $this->load->model('Skripsi_model', 'model');
    }


    public function index()
    {
        $jmlhMahasiswa      = $this->model->viewAll('*', 'mahasiswa')->num_rows();
        $PropDoneMahasiswa  = $this->model->viewWhereAssosiative('*', 'proposal_mahasiswa', ['status'  => 1])->num_rows();
        $SeminarMahasiswa   = $this->model->viewWhereAssosiative('*', 'hasil_seminar', ['status'  => 1])->num_rows();
        $SkripsiMahasiswa   = $this->model->viewAll('*', 'skripsi')->num_rows();

        $v                  = [
            'judul'     => base64_encode(json_encode($this->model->admin_index($this->input->post()))),
            'sudah'     => $PropDoneMahasiswa . "," . $SeminarMahasiswa . "," . $SkripsiMahasiswa,
            'belum'     => ($jmlhMahasiswa - $PropDoneMahasiswa) . "," . ($jmlhMahasiswa - $SeminarMahasiswa) . "," . ($jmlhMahasiswa - $SkripsiMahasiswa)

        ];
        $v['template'] = $this->db->get('home_template')->result();
        return $this->load->view('kaprodi/dashboard', $v);
    }
}

/* End of file Dashboard.php */