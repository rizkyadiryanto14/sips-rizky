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
        $v['data'] = [];
        if ($this->input->post('judul')) {
            $skripsi = $this->db->get('daftar_judul')->result_array();
            foreach ($skripsi as $item) {
                similar_text(strtolower(str_replace(' ', '', $this->input->post('judul'))), strtolower(str_replace(' ', '', $item['judul_skripsi'])), $resPercent);

                $plg = round($resPercent, 2);
                if ($plg >= 60) {
                    $item['plagiat'] =  $plg . '%';
                    $v['data'][] = $item;
                } else if ($plg <= 60) {
                    $item['plagiat'] =  $plg . '%';
                    $v['data'][] = $item;
                }
            }
        }

        return $this->load->view('admin/dashboard', $v);
    }
}

/* End of file Dashboard.php */