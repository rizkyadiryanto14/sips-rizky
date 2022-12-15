<?php

class Cekjudul extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function index()
    {
        $v['data'] = [];
        if ($this->input->post('judul')) {
            $skripsi = $this->db->get('skripsi_vl')->result_array();
            foreach ($skripsi as $item) {
                similar_text(strtolower(str_replace(' ', '', $this->input->post('judul'))), strtolower(str_replace(' ', '', $item['judul_skripsi'])), $resPercent);

                $plg = round($resPercent, 2);
                if ($plg >= 50) {
                    $item['plagiat'] =  $plg . '%';
                    $v['data'][] = $item;
                }
            }
        }
        return $this->load->view('mahasiswa/cekjudul', $v);
    }
}