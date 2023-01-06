<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Skripsi_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Email_model', 'emailm');
    }
    protected $table = "skripsi";

    public function index($input)
    {
        $kondisi = [];
        if ($input['mahasiswa_id']) {
            $kondisi['skripsi_vl.mahasiswa_id'] = $input['mahasiswa_id'];
        }

        if ($kondisi) {
            $this->db->where($kondisi);
        }

        $skripsi = $this->db->get('skripsi_vl')->result_array();

        $hasil = [
            'error' => false,
            'message' => ($skripsi) ? "data berhasil ditemukan" : "data tidak tersedia",
            'data' => $skripsi,
        ];

        return $hasil;
    }

    public function admin_index($input)
    {
        $skripsi = $this->db->get('skripsi_vl')->result_array();

        $hasil = [
            'error' => false,
            'message' => ($skripsi) ? "data berhasil ditemukan" : "data tidak tersedia",
            'data' => $skripsi,
        ];

        return $hasil;
    }


    public function create($input)
    {
        $data = [
            'judul_skripsi' => $input['judul_skripsi'],
            'dosen_id' => $input['dosen_id'],
            'dosen_penguji_id' => $input['dosen_penguji_id'],
            'mahasiswa_id' => $input['mahasiswa_id'],
            'krs' => $input['krs'],
            'file_skripsi' => $input['file_skripsi'],
            'formulir' => $input['formulir'],
            'kwitansi' => $input['kwitansi'],
            'lulus_mkWajib' => $input['lulus_mkWajib'],
            'kartu_bimbingan' => $input['kartu_bimbingan'],
            'transkip' => $input['transkip'],
            'sertifikat' => $input['sertifikat'],
            'lembar_persetujuan' => $input['lembar_persetujuan'],
            'bebas_bauk' => $input['bebas_bauk'],
        ];

        $validation = $this->app->validate($data);

        if ($validation === true) {
            $file_nama = date('Ymdhis') . '.pdf';

            // upload base64 file_skripsi
            $krs_file = explode(';base64,', $data['krs'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/krs/' . $file_nama, base64_decode($krs_file));
            $data['krs'] = $file_nama;

            // upload base64 file_skripsi
            $file_skripsi_file = explode(';base64,', $data['file_skripsi'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/file_skripsi/' . $file_nama, base64_decode($file_skripsi_file));
            $data['file_skripsi'] = $file_nama;

            // upload sk_tim
            $formulir_file = explode(';base64,', $data['formulir'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/formulir/' . $file_nama, base64_decode($formulir_file));
            $data['formulir'] = $file_nama;

            // upload base64 file_skripsi
            $kwitansi_file = explode(';base64,', $data['kwitansi'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/kwitansi/' . $file_nama, base64_decode($kwitansi_file));
            $data['kwitansi'] = $file_nama;

            $lulus_mkWajib_file = explode(';base64,', $data['lulus_mkWajib'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/lulus_mkWajib/' . $file_nama, base64_decode($lulus_mkWajib_file));
            $data['lulus_mkWajib'] = $file_nama;

            $kartu_bimbingan_file = explode(';base64,', $data['kartu_bimbingan'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/kartu_bimbingan/' . $file_nama, base64_decode($kartu_bimbingan_file));
            $data['kartu_bimbingan'] = $file_nama;

            $transkip_file = explode(';base64,', $data['transkip'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/transkip/' . $file_nama, base64_decode($transkip_file));
            $data['transkip'] = $file_nama;

            $sertifikat_file = explode(';base64,', $data['sertifikat'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/sertifikat/' . $file_nama, base64_decode($sertifikat_file));
            $data['sertifikat'] = $file_nama;

            $lembar_persetujuan_file = explode(';base64,', $data['lembar_persetujuan'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/lembar_persetujuan/' . $file_nama, base64_decode($lembar_persetujuan_file));
            $data['lembar_persetujuan'] = $file_nama;

            $bebas_bauk_file = explode(';base64,', $data['bebas_bauk'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/bebas_bauk/' . $file_nama, base64_decode($bebas_bauk_file));
            $data['bebas_bauk'] = $file_nama;

            if ($this->db->insert('skripsi', $data)) {
                $data_id = $this->db->insert_id();

                $hasil = [
                    'error' => false,
                    'message' => "data berhasil ditambahkan",
                    'data_id' => $data_id
                ];
            }
        } else {
            $hasil = $validation;
        }

        return $hasil;
    }

    public function update($input, $id)
    {
        $data = [
            'judul_skripsi' => $input['judul_skripsi'],
            'jadwal_skripsi' => $input['jadwal_skripsi'],
            'tempat' => $input['tempat'],
            'dosen_id' => $input['dosen_id'],
            'dosen_penguji_id' => $input['dosen_penguji_id'],
            'mahasiswa_id' => $input['mahasiswa_id'],
            'krs' => $input['krs'],
            'file_skripsi' => $input['file_skripsi'],
            'formulir' => $input['formulir'],
            'kwitansi' => $input['kwitansi'],
            'lulus_mkWajib' => $input['lulus_mkWajib'],
            'kartu_bimbingan' => $input['kartu_bimbingan'],
            'transkip' => $input['transkip'],
            'sertifikat' => $input['sertifikat'],
            'lembar_persetujuan' => $input['lembar_persetujuan'],
            'bebas_bauk' => $input['bebas_bauk'],
        ];

        $kondisi = ['skripsi.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi)->num_rows();

        if ($cek > 0) {
            $validate = $this->app->validate($data);
            if ($validate === true) {

                if ($input['krs'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/krs/' . $input['def_krs']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 krs
                    $krs_file = explode(';base64,', $input['krs'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/krs/' . $file_nama, base64_decode($krs_file));
                    $data['krs'] = $file_nama;
                }
                if ($input['file_skripsi'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/file_skripsi/' . $input['def_file_skripsi']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 file_skripsi 
                    $file_skripsi_file = explode(';base64,', $input['file_skripsi'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/file_skripsi/' . $file_nama, base64_decode($file_skripsi_file));
                    $data['file_skripsi'] = $file_nama;
                }
                if ($input['formulir'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/formulir/' . $input['def_formulir']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 formulir
                    $formulir_file = explode(';base64,', $input['formulir'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/formulir/' . $file_nama, base64_decode($formulir_file));
                    $data['formulir'] = $file_nama;
                }
                if ($input['kwitansi'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/kwitansi/' . $input['def_kwitansi']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 kwitansi
                    $kwitansi_file = explode(';base64,', $input['kwitansi'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/kwitansi/' . $file_nama, base64_decode($kwitansi_file));
                    $data['kwitansi'] = $file_nama;
                }

                if ($input['lulus_mkWajib'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/lulus_mkWajib/' . $input['def_lulus_mkWajib']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 lulus_mkWajib
                    $lulus_mkWajib_file = explode(';base64,', $input['lulus_mkWajib'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/lulus_mkWajib/' . $file_nama, base64_decode($lulus_mkWajib_file));
                    $data['lulus_mkWajib'] = $file_nama;
                }

                if ($input['kartu_bimbingan'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/kartu_bimbingan/' . $input['def_kartu_bimbingan']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 kartu_bimbingan
                    $kartu_bimbingan_file = explode(';base64,', $input['kartu_bimbingan'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/kartu_bimbingan/' . $file_nama, base64_decode($kartu_bimbingan_file));
                    $data['kartu_bimbingan'] = $file_nama;
                }

                if ($input['transkip'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/transkip/' . $input['def_transkip']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 transkip
                    $transkip_file = explode(';base64,', $input['transkip'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/transkip/' . $file_nama, base64_decode($transkip_file));
                    $data['transkip'] = $file_nama;
                }

                if ($input['sertifikat'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/sertifikat/' . $input['def_sertifikat']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 sertifikat
                    $sertifikat_file = explode(';base64,', $input['sertifikat'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/sertifikat/' . $file_nama, base64_decode($sertifikat_file));
                    $data['sertifikat'] = $file_nama;
                }

                if ($input['lembar_persetujuan'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/lembar_persetujuan/' . $input['def_lembar_persetujuan']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 lembar_persetujuan
                    $lembar_persetujuan_file = explode(';base64,', $input['lembar_persetujuan'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/lembar_persetujuan/' . $file_nama, base64_decode($lembar_persetujuan_file));
                    $data['lembar_persetujuan'] = $file_nama;
                }

                if ($input['bebas_bauk'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/bebas_bauk/' . $input['def_bebas_bauk']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 bebas_bauk
                    $bebas_bauk_file = explode(';base64,', $input['bebas_bauk'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/bebas_bauk/' . $file_nama, base64_decode($bebas_bauk_file));
                    $data['bebas_bauk'] = $file_nama;
                }

                $this->db->update($this->table, $data, $kondisi);
                $hasil = [
                    'error' => false,
                    'message' => "data berhasil diedit",
                ];
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
        $kondisi = [
            'id' => $id
        ];

        $skripsi = $this->db->get_where($this->table, $kondisi)->row_array();

        if ($skripsi) {
            unlink(FCPATH . 'cdn/vendor/skripsi/file_skripsi/' . $skripsi['file_skripsi']);
            unlink(FCPATH . 'cdn/vendor/skripsi/sk_tim/' . $skripsi['sk_tim']);
            unlink(FCPATH . 'cdn/vendor/skripsi/persetujuan/' . $skripsi['persetujuan']);
            unlink(FCPATH . 'cdn/vendor/skripsi/bukti_konsultasi/' . $skripsi['bukti_konsultasi']);
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

    public function agree($id)
    {
        $kondisi = ['skripsi.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi);

        $email = '';
        $dskripsi = $this->db->get_where('skripsi_vl', array('id' => $id))->result();
        foreach ($dskripsi as $ds) {
            $email = $ds->email;
        }

        if ($cek > 00) {
            if ($this->db->update($this->table, ['status' => "1"], $kondisi)) {
                $isi_email = '
                    <p>Seminar akhir / skripsi anda telah disetujui</p>
                    ';
                $this->emailm->send('Seminar Akhir Disetujui', $email, $isi_email);

                $hasil = [
                    'error' => false,
                    'message' => "skripsi berhasil disetujui"
                ];
            }
        } else {
            $hasil = [
                'error' => true,
                'message' => "data tidak ditemukan"
            ];
        }

        return $hasil;
    }

    public function disagree($id)
    {
        $kondisi = ['skripsi.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi);

        $email = '';
        $dskripsi = $this->db->get_where('skripsi_vl', array('id' => $id))->result();
        foreach ($dskripsi as $ds) {
            $email = $ds->email;
        }
        if ($cek > 00) {
            if ($this->db->update($this->table, ['status' => "0"], $kondisi)) {
                $isi_email = '
                    <p>Seminar akhir / skripsi anda ditolak</p>
                    ';
                $this->emailm->send('Seminar Akhir Ditolak', $email, $isi_email);

                $hasil = [
                    'error' => false,
                    'message' => "skripsi batal disetujui"
                ];
            }
        } else {
            $hasil = [
                'error' => true,
                'message' => "data tidak ditemukan"
            ];
        }

        return $hasil;
    }

    public function viewAll($select, $tbl)
    {
        $this->db->select($select);
        $this->db->from($tbl);
        $query = $this->db->get();
        return $query;
    }

    public function viewWhereAssosiative($select, $tbl, $assosiative)
    {
        $this->db->select($select);
        $this->db->from($tbl);
        $this->db->where($assosiative);
        $query = $this->db->get();
        return $query;
    }

    public function viewGlobalJoinWhere($select, $tbl, $where, $join)
    {
        $this->db->select($select);
        $this->db->from($tbl);
        $this->db->where($where);
        foreach ($join as $row) {
            $this->db->join($row[0], $row[1], $row[2]);
        }
        $query = $this->db->get();
        return $query;
    }
}

/* End of file skripsi_model.php */
/* Location: ./application/models/skripsi_model.php */