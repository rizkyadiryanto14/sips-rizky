<?php

class Daftar_judul_model extends CI_Model
{
    public function get_daftar()
    {
        $this->db->select('*');
        $this->db->from('daftar_judul');
        $this->db->order_by('id', 'DESC');
        $this->checkPlagiat('daftar_judul');
        return $this->db->get();
    }

    private function checkPlagiat($data)
    {
        $allData = [];
        $id = [];
        $judul = [];
        foreach ($data as $item) {
            $id[] = $item['id'];
            $judul[] = $item['judul_skripsi'];
        }

        foreach ($data as $item) {
            $resultCheck = [];
            for ($i = 0; $i < count($judul); $i++) {
                if ($item['id'] == $id[$i] && strtolower(str_replace(' ', '', $judul[$i])) != strtolower(str_replace(' ', '', $item['judul_skripsi']))) {
                    similar_text(strtolower(str_replace(' ', '', $judul[$i])), strtolower(str_replace(' ', '', $item['judul_skripsi'])), $resPercent);
                    $resultCheck[] = $resPercent;
                }
            }
            $item['plagiat'] = round(max($resultCheck), 2) . '%';
            $allData[] = $item;
        }
        return $allData;
    }

    public function tambahData($data)
    {
        return $this->db->insert('daftar_judul', $data);
    }

    public function updateData($data, $id)
    {
        $this->db->where('id', $id['id']);
        $this->db->update('daftar_judul', $data);
    }

    public function deleteData($id, $table)
    {
        $this->db->where($id);
        $this->db->delete($table);
    }
}