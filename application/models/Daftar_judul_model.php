<?php

class Daftar_judul_model extends CI_Model
{
    public function get_daftar()
    {
        $this->db->select('*');
        $this->db->from('daftar_judul');
        $this->db->order_by('id', 'DESC');
        return $this->db->get();
    }

    public function tambahData($data)
    {
        return $this->db->insert('daftar_judul', $data);
    }
}