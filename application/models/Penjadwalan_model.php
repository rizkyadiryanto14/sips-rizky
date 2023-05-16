<?php 


class Penjadwalan_model extends CI_Model
{

    //hari
    public function tambahData($data)
    {
        return $this->db->insert('hari', $data);
    }

    public function GetData()
    {
        return $this->db->get('hari')->result();
    }

    public function UpdateHari($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update('hari', $data);
    }

    public function HapusHari($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('hari');
    }

    //ruangan

    public function AmbilDataRuangan()
    {
        return $this->db->get('ruangan')->result();
    }

    public function TambahRuangan($data)
    {
        return $this->db->insert('ruangan', $data);
    }

    public function UpdateRuangan($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update('ruangan', $data);
    }

    public function DeleteRuangan($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('ruangan');
    }

    //jam

    public function GetJam()
    {
        return $this->db->get('jam')->result();
    }

    public function TambahJam($data)
    {
        return $this->db->insert('jam', $data);
    }
}