<?php

class Jadwal_dosen_model extends CI_Model
{
    public function GetJadwal()
    {
        return $this->db->get('dosen')->result();
    }

    public function TambahJadwal($data, $id)
    {
        $this->db->where('id', $id);
        return $this->db->insert('dosen', $data);
    }

    public function EditJadwal($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update('dosen', $data);
    }

    public function HapusJadwal($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('dosen');
    }
}
