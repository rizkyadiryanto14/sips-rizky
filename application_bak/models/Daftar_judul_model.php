<?php

class Daftar_judul_model extends CI_Model
{
    protected $table = 'daftar_judul';

    public function get_daftar()
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->order_by('id', 'DESC');
        return $this->db->get();
    }


    public function tambahData($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function updateData($data, $id)
    {
        $this->db->where('id', $id['id']);
        $this->db->update($this->table, $data);
    }

    public function deleteData($id, $table)
    {
        $this->db->where($id);
        $this->db->delete($table);
    }
}