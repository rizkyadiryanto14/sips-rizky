<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
        $this->load->model('Skripsi_model', 'model');
    }

    public function index()
    {
        $v['judul'] = base64_encode(json_encode($this->model->index($this->input->post())));
        $v['template'] = $this->db->get('home_template')->result();
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
        return $this->load->view('mahasiswa/dashboard', $v);
    }

    public function cekdeadline($id)
    {
        $cek = $this->db->get_where('skripsi', array('mahasiswa_id' => $id))->num_rows();
        if ($cek == 0) {
            $this->db->where('id', $id);
            $this->db->update('mahasiswa', array('status' => '0'));

            $this->db->where('mahasiswa_id', $id);
            $this->db->update('proposal_mahasiswa', array('deadline' => null, 'status' => '0'));
            echo json_encode('waktu habis');
        } else {
            echo json_encode('aman');
        }
    }

    public function getDeadline()
    {
        $mahasiswa_id = $this->input->post('mahasiswa_id');
        $kondisi = array(
            'mahasiswa_id' => $mahasiswa_id,
            'status' => 1
        );
        $this->db->where($kondisi);
        $data = $this->db->get('proposal_mahasiswa_v')->result();
        echo json_encode($data);
    }
}

/* End of file Dashboard.php */