<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Users extends MY_Controller
{

    public function index()
    {
        return $this->load->view('admin/users');
    }
}