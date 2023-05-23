<?php
defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Proposal_mahasiswa extends REST_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Proposal_mahasiswa_model', 'model');
    }

    public function index_post()
    {
        $response = $this->model->get($this->input->post());
        return $this->response($response);
    }

    public function create_post()
    {

        $this->db->select('nilai');
        $this->db->from('kuota_bimbingan');
        $kuota = $this->db->get();

        $id = $this->session->userdata('id');
        $dosen = $this->input->post('dosen_id');
        $cekPendaftaran = $this->db->get_where('proposal_mahasiswa_v', ['mahasiswa_id' => $id, 'status' => '0'])->result_array();
        $cekDospem = $this->db->get_where('proposal_mahasiswa_v', ['proposal_mahasiswa_v.dosen_id' => $dosen])->result_array();
        if (count($cekPendaftaran) > 0) {
            $response = [
                'error' => true,
                'message' => 'Masih terdapat pendaftaran yang belum di review, Harap tunggu !'
            ];
            return $this->response($response);
        }

        if (count($cekDospem) == $kuota->nilai) {
            $response = [
                'error' => true,
                'message' => 'Kouta Dosen Pembimbing Penuh'
            ];
            return $this->response($response);
        }

        $response = $this->model->create($this->input->post());
        return $this->response($response);
    }

    public function update_post($id = null)
    {
        $response = $this->model->update($this->input->post(), $id);
        return $this->response($response);
    }

    public function destroy_post($id = null)
    {
        $response = $this->model->destroy($id);
        return $this->response($response);
    }

    public function agree_post($id = null)
    {
        $response = $this->model->agree($id);
        return $this->response($response);
    }

    public function disagree_post($id = null)
    {
        $response = $this->model->disagree($id);
        return $this->response($response);
    }
}

/* End of file Proposal_mahasiswa.php */