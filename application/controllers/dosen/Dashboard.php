<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends MY_Controller
{

    public function index()
    {
        $data['template'] = $this->db->get('home_template')->result();
        return $this->load->view('dosen/dashboard', $data);
    }
}

/* End of file Dashboard.php */