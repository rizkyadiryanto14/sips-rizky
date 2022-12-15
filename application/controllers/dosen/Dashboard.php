<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends MY_Controller
{

    public function index()
    {
        $data = $this->db->get('home_template')->row();
        return $this->load->view('dosen/dashboard', $data);
    }
}

/* End of file Dashboard.php */