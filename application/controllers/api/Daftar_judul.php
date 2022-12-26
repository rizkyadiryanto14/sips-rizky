<?php
defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Daftar_judul extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Daftar_judul_model', 'model');
    }

    public function index_post()
    {
        $response = $this->model->index($this->input->post());
        return $this->response($response);
    }
}