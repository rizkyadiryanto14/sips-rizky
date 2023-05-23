<?php

class Pengumuman_proposal extends MY_Controller
{
    public function index()
    {
        return $this->load->view('admin/pengumuman_proposal');
    }
}