<?php

class Pengumuman_seminar extends MY_Controller

{
    public function index()
    {
        return $this->load->view('mahasiswa/pengumuman_seminar');
    }
}