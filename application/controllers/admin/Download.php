<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Download extends MY_Controller
{

    public function Download_Proses()
    {
        force_download('assets/essense/panduanskripsi/');
    }
}