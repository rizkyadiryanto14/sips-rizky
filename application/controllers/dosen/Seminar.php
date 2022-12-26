<?php

use PhpParser\Node\Expr\PostDec;

defined('BASEPATH') or exit('No direct script access allowed');

class Seminar extends MY_Controller
{

    public function index()
    {
        return $this->load->view('dosen/seminar');
    }

    public function detail($id = null)
    {
        if ($id) {
            return $this->load->view('dosen/seminar_detail', ['seminar_id' => $id]);
        }
        redirect(base_url('dosen/seminar'));
    }

    public function tandantangan($id = null)
    {
        if ($id) {
            return $this->load->view('dosen/tandatangan', ['seminar_id' => $id]);
        }
        redirect(base_url('dosen/seminar'));
    }
}

/* End of file Seminar.php */