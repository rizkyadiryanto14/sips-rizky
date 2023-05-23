<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dosen_model extends CI_Model
{

    protected $table = "dosen";

    public function get()
    {
        $this->db->select("*");
        $dosen = $this->db->get($this->table)->result_array();

        $hasil['error'] = false;
        $hasil['message'] = ($dosen) ? "data berhasil ditemukan" : "data tidak tersedia";
        $hasil['data'] = $dosen;

        return $hasil;
    }

    public function getSignature($where = null)
    {
        $this->db->select('signature');
        $this->db->from('dosen');
        if ($where != null) {
            $this->db->where('id', $where);
        }
        return $this->db->get()->row();
    }

    public function getById()
    {
        $dosen = $this->db->get_where($this->table, array('id' => $this->input->post('id')))->result();

        $hasil['error'] = false;
        $hasil['message'] = ($dosen) ? "data berhasil ditemukan" : "data tidak tersedia";
        $hasil['data'] = $dosen;

        return $hasil;
    }

    public function create($input)
    {
        $data = [
            'nip' => $input['nip'],
            'nama' => $input['nama'],
            'nomor_telepon' => $input['nomor_telepon'],
            'email' => $input['email'],
            'password' => $input['password'],
            'level' => $input['level']
        ];

        $validate = $this->app->validate($data);

        if ($validate === true) {
            $cek = $this->db->get_where($this->table, ['dosen.password' => $data['password']])->num_rows();
            if ($cek > 0) {
                $hasil = [
                    'error' => true,
                    'message' => "nip sudah digunakan"
                ];
            } else {
                $this->db->insert($this->table, $data);
                $hasil = [
                    'error' => false,
                    'message' => "data berhasil ditambah",
                    'data_id' => $this->db->insert_id()
                ];
            }
        } else {
            $hasil = $validate;
        }

        return $hasil;
    }

    public function update($input, $id)
    {
        $data = [
            'nip' => $input['nip'],
            'nama' => $input['nama'],
            'nomor_telepon' => $input['nomor_telepon'],
            'email' => $input['email']
        ];

        $kondisi = ['dosen.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi)->num_rows();

        if ($cek > 0) {
            $validate = $this->app->validate($data);

            if ($validate === true) {
                $cek = $this->db->get_where($this->table, ['dosen.id <>' => $id, 'dosen.nip' => $data['nip']])->num_rows();
                if ($cek > 0) {
                    $hasil = [
                        'error' => true,
                        'message' => "nip sudah digunakan"
                    ];
                } else {
                    $this->db->update($this->table, $data, $kondisi);
                    $hasil = [
                        'error' => false,
                        'message' => "data berhasil diedit"
                    ];
                }
            } else {
                $hasil = $validate;
            }
        } else {
            $hasil = [
                'error' => true,
                'message' => "data tidak ditemukan"
            ];
        }

        return $hasil;
    }

    public function destroy($id)
    {
        $kondisi = ['dosen.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi);

        if ($cek > 0) {
            $this->db->delete($this->table, $kondisi);
            $hasil = [
                'error' => false,
                'message' => "data berhasil dihapus"
            ];
        } else {
            $hasil = [
                'error' => true,
                'message' => "data tidak ditemukan"
            ];
        }

        return $hasil;
    }

    public function update_signature($table, $post)
    {
        $params = [
            'signature' => $post['ttd']
        ];

        $this->db->where('id', $post['id']);

        $this->db->update($table, $params);
    }

    public function details($id)
    {
        $kondisi = [
            'id' => $id
        ];

        $dosen = $this->db->get_where($this->table, ['id' => $id])->row_array();

        $hasil = [
            'error' => ($dosen) ? false : true,
            'message' => ($dosen) ? "data berhasil ditemukan" : "data tidak ditemukan",
            'data' => $dosen
        ];

        return $hasil;
    }

    public function get_timeline()
    {
        $query = $this->db->get('home_template')->result();
        return $query->row();
    }
}

/* End of file Dosen_model.php */