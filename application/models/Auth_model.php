<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_model extends CI_Model
{

    public function login($input)
    {
        $email      = $input['email'];
        $nip        = $input['password'];

        if (empty($email)) {
            $hasil  = [
                'error'             => true,
                'message'           => "email harus diisi"
            ];

            goto output;
        }

        if (empty($nip)) {
            $hasil  = [
                'error'             => true,
                'message'           => "Password harus diisi"
            ];
            goto output;
        }

        $dosen      = $this->db->get_where('dosen', ['email' => $email]);

        if ($dosen->num_rows() > 0) {
            foreach ($dosen->result_array() as $key => $item) {
                if ($item['password'] == $nip) {
                    $hasil = [
                        'error'     => false,
                        'message'   => "berhasil login",
                        'data'      => $item
                    ];
                    goto output;
                }
            }
            $hasil = [
                'error'             => true,
                'message'           => "Password salah"
            ];
            goto output;
        } else {
            $hasil = [
                'error'             => true,
                'message'           => "email tidak ditemukan"
            ];
            goto output;
        }

        output:
        return $hasil;
    }
    
    public function loginMahasiswa($input)
    {
        $nip        = $input['nim'];
        $password   = $input['password'];

        $data       = [
            'nip'                   => $nip,
            'password'              => $password
        ];

        if (empty($nip)) {
            $data  = [
                'error'             => true,
                'message'           => "NIM harus diisi"
            ];

            goto output;
        }

        if (empty($password)) {
            $data  = [
                'error'             => true,
                'message'           => "Password harus diisi"
            ];
            goto output;
        }

        $mahasiswa      = $this->db->get_where('mahasiswa', ['nim' => $nip]);

        if ($mahasiswa->num_rows() > 0) {
            foreach ($mahasiswa->result_array() as $key => $item) {
                if ($password == password_verify($password, $item['password'])) {
                    $hasil = [
                        'error'     => false,
                        'message'   => "berhasil login",
                        'data'      => $item
                    ];
                    goto output;
                }
            }
            
            $hasil = [
                'error'             => true,
                'message'           => "Password salah"
            ];
            goto output;
        } else {
            $hasil = [
                'error'             => true,
                'message'           => "nim tidak ditemukan"
            ];
            goto output;
        }

        output:
        return $hasil;
    }
}

/* End of file Auth_model.php */