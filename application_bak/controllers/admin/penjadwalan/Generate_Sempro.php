<?php 

class Generate_Sempro extends MY_Controller
{
    public function __construct()
    {
     parent::__construct();
     $this->load->model('Penjadwalan_model');   
    }

    public function index()
    {
        $this->load->view('admin/penjadwalan/generate_sempro');
    }

    public function GenerateJadwal()
    {
        
    }
}