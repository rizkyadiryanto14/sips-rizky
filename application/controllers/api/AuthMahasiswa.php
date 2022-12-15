<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class AuthMahasiswa extends REST_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Auth_model', 'model');
    }

    public function login_post()
    {
        $response = $this->model->loginMahasiswa($this->input->post());
        return $this->response($response);
    }

}

/* End of file Auth.php */