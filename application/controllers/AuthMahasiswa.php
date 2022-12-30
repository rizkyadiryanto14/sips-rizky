<?php
defined('BASEPATH') or exit('No direct script access allowed');

class AuthMahasiswa extends MY_Controller
{

    public function index()
    {
        $this->login();
    }

    public function login()
    {
        return $this->load->view('home/cek');
    }

    public function cek($id = null, $level = null)
    {
        if (empty($id) || empty($level)) {
            redirect(base_url());
        }
        
        $this->session->set_userdata([
            'id' => $id,
            'level' => $level
        ]);
        
        $this->app->auth($level);
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url());
    }
}

/* End of file Auth.php */