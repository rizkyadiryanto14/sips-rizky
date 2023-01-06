<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Proposal_mahasiswa_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Email_model', 'emailm');
    }

    protected $table = "proposal_mahasiswa";

    public function get($input)
    {
        $kondisi = [];
        if ($input['dosen_id']) {
            $kondisi['proposal_mahasiswa.dosen_id'] = $input['dosen_id'];
        }

        if ($input['status']) {
            $kondisi['status'] = $input['status'];
        }

        if ($input['mahasiswa_id']) {
            $kondisi['mahasiswa_id'] = $input['mahasiswa_id'];
        }

        $this->db->select("*");
        if ($kondisi) {
            $this->db->where($kondisi);
        }
        $proposal_mahasiswa = $this->db->get($this->table)->result_array();
        $proposal_mahasiswa = $this->checkPlagiat($proposal_mahasiswa);

        $hasil['error'] = false;
        $hasil['message'] = ($proposal_mahasiswa) ? "data berhasil ditemukan" : "data tidak tersedia";
        $hasil['data'] = $proposal_mahasiswa;

        foreach ($proposal_mahasiswa as $key => $item) {
            $hasil['data'][$key]['mahasiswa'] = $this->db->get_where('mahasiswa_v', ['mahasiswa_v.id' => $item['mahasiswa_id']])->row_array();
            $hasil['data'][$key]['pembimbing'] = $this->db->get_where('dosen', ['dosen.id' => $item['dosen_id']])->row_array();
        }

        return $hasil;
    }

    public function create($input)
    {
        $data = [
            'mahasiswa_id' => $input['mahasiswa_id'],
            'judul' => $input['judul'],
            'outline_skripsi' => $input['outline_skripsi'],
            'dosen_id' => $input['dosen_id'],
            'krs' => $input['krs'],
            'transkip' => $input['transkip']
        ];

        $validate = $this->app->validate($data);

        if ($validate === true) {

            $file_nama = date('Ymdhis') . '.pdf';

            $transkip_file = explode(';base64,', $data['transkip'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/transkip/' . $file_nama, base64_decode($transkip_file));
            $data['transkip'] = $file_nama;

            $krs_file = explode(';base64,', $data['krs'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/krs/' . $file_nama, base64_decode($krs_file));
            $data['krs'] = $file_nama;

            $outline_skripsi_file = explode(';base64,', $data['outline_skripsi'])[1];
            file_put_contents(FCPATH . 'cdn/vendor/skripsi/outline_skripsi/' . $file_nama, base64_decode($outline_skripsi_file));
            $data['outline_skripsi'] = $file_nama;

            $this->db->insert($this->table, $data);
            $data_id = $this->db->insert_id();
            $hasil = [
                'error' => false,
                'message' => "data berhasil ditambah",
                'data_id' => $data_id
            ];
        } else {
            $hasil = $validate;
        }

        return $hasil;
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
                if ($item['id'] != $id[$i]) {
                    similar_text(strtolower(str_replace(' ', '', $judul[$i])), strtolower(str_replace(' ', '', $item['judul_skripsi'])), $resPercent);
                    $resultCheck[] = $resPercent;
                }
            }
            $item['plagiat'] = round(max($resultCheck), 2) . '%';
            $allData[] = $item;
        }
        return $allData;
    }

    public function update($input, $id)
    {
        $data = [
            'mahasiswa_id' => $input['mahasiswa_id'],
            'judul' => $input['judul'],
            'ringkasan' => $input['ringkasan'],
            'dosen_id' => $input['dosen_id'],
        ];

        $kondisi = ['proposal_mahasiswa.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi)->num_rows();

        if ($cek > 0) {
            $validate = $this->app->validate($data);

            if ($validate === true) {

                if ($input['transkip'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/transkip/' . $input['def_transkip']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 transkip
                    $transkip_file = explode(';base64,', $input['transkip'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/transkip/' . $file_nama, base64_decode($transkip_file));
                    $data['transkip'] = $file_nama;
                }

                if ($input['krs'] != '') {
                    unlink(FCPATH . 'cdn/vendor/skripsi/krs/' . $input['def_krs']);
                    $file_nama = date('Ymdhis') . '.pdf';
                    // upload base64 krs
                    $krs_file = explode(';base64,', $input['krs'])[1];
                    file_put_contents(FCPATH . 'cdn/vendor/skripsi/krs/' . $file_nama, base64_decode($krs_file));
                    $data['krs'] = $file_nama;
                }

                $this->db->update($this->table, $data, $kondisi);
                $hasil = [
                    'error' => false,
                    'message' => "data berhasil diedit"
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
        $kondisi = ['proposal_mahasiswa.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi)->num_rows();

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

    public function agree($id)
    {
        $kondisi = ['proposal_mahasiswa.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi);

        if ($cek > 00) {
            $dataUpdate = array(
                'status' => '1',
            );

            $email = '';
            $dProposal = $this->db->get_where('proposal_mahasiswa_v', array('id' => $id))->result();
            foreach ($dProposal as $dp) {
                $email = $dp->email;
            }

            if ($this->db->update($this->table, $dataUpdate, $kondisi)) {
                $isi_email = '
                    <p>Usulan proposal anda telah disetujui, silahkan lanjut ke tahap berikutnya.</p>
                    ';
                $this->emailm->send('Usulan Proposal Disetujui', $email, $isi_email);

                $hasil = [
                    'error' => false,
                    'message' => "proposal berhasil disetujui",
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
        $kondisi = ['proposal_mahasiswa.id' => $id];
        $cek = $this->db->get_where($this->table, $kondisi);

        if ($cek > 00) {

            $email = '';
            $dProposal = $this->db->get_where('proposal_mahasiswa_v', array('id' => $id))->result();
            foreach ($dProposal as $dp) {
                $email = $dp->email;
            }

            if ($this->db->update($this->table, ['status' => "0"], $kondisi)) {

                $isi_email = '
                    <p>Usulan proposal anda tidak disetujui, silahkan membenarkan usulan proposal anda.</p>
                    ';
                $this->emailm->send('Usulan Proposal Tidak Disetujui', $email, $isi_email);

                $hasil = [
                    'error' => false,
                    'message' => "proposal batal disetujui"
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
}

/* End of file Proposal_mahasiswa_model.php */