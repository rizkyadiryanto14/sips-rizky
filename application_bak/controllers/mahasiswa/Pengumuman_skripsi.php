<?php

class Pengumuman_Skripsi extends MY_Controller
{
    public function index()
    {
        return $this->load->view('mahasiswa/pengumuman_skripsi');
    }
}