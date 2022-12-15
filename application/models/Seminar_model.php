<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Seminar_model extends CI_Model
{

	protected $table = "seminar";

	public function index($input)
	{
		$this->db->select('
			seminar.id,
			seminar.proposal_mahasiswa_id,
			seminar.tanggal,
			seminar.jam,
			seminar.dosen_penguji_id,
			seminar.dosen_id,
			seminar.tempat,
			seminar.file_proposal,
			seminar.syarat_seminar,
			seminar.surat_permohonan,
			seminar.kartu_bimbingan,
			proposal_mahasiswa_v.judul as proposal_mahasiswa_judul,
			proposal_mahasiswa_v.nama_mahasiswa,
			proposal_mahasiswa_v.nim,
			proposal_mahasiswa_v.nama_prodi,
			hasil_seminar.status as hasil_seminar_status,
			d.nama AS pembimbing_nama,
			e.nama AS penguji_nama
		');

		$this->db->from($this->table);
		$this->db->join('hasil_seminar', 'hasil_seminar.seminar_id = seminar.id', 'left');
		$this->db->join('proposal_mahasiswa_v', 'proposal_mahasiswa_v.id = seminar.proposal_mahasiswa_id', 'left');
		$this->db->join('dosen d', 'd.id=proposal_mahasiswa_v.dosen_id', 'LEFT');
		$this->db->join('dosen e', 'e.id=proposal_mahasiswa_v.dosen_penguji_id', 'LEFT');

		if ($input['mahasiswa_id']) {
			$this->db->where('proposal_mahasiswa_v.mahasiswa_id', $input['mahasiswa_id']);
		}

		$seminar = $this->db->get()->result_array();

		$hasil = [
			'error' 		=> false,
			'message' 		=> ($seminar) ? "data berhasil ditemukan" : "data tidak tersedia",
			'data' 			=> $seminar,
		];

		return $hasil;
	}

	public function create($input)
	{


		$data = [
			'proposal_mahasiswa_id' => $input['proposal_mahasiswa_id'],
			'dosen_id' => $input['dosen_id'],
			'file_proposal' => $input['file_proposal'],
			'kartu_bimbingan' => $input['kartu_bimbingan'],
			'surat_permohonan' => $input['surat_permohonan'],
			'syarat_seminar' => $input['syarat_seminar'],
		];

		$validation = $this->app->validate($data);

		if ($validation === true) {
			$file_nama = date('Ymdhis') . '.pdf';

			// upload base64 file_proposal
			$file_proposal_file = explode(';base64,', $data['file_proposal'])[1];
			file_put_contents(FCPATH . 'cdn/vendor/file_proposal/' . $file_nama, base64_decode($file_proposal_file));
			$data['file_proposal'] = $file_nama;

			// upload kartu bimbingan
			$kartu_bimbingan_file = explode(';base64,', $data['kartu_bimbingan'])[1];
			file_put_contents(FCPATH . 'cdn/vendor/kartu_bimbingan/' . $file_nama, base64_decode($kartu_bimbingan_file));
			$data['kartu_bimbingan'] = $file_nama;

			// uploud surat permohonan
			$surat_permohonan_file = explode(';base64,', $data['surat_permohonan'])[1];
			file_put_contents(FCPATH . 'cdn/vendor/surat_permohonan/' . $file_nama, base64_decode($surat_permohonan_file));
			$data['surat_permohonan'] = $file_nama;

			// uploud syarat_seminar
			$syarat_seminar_file = explode(';base64,', $data['syarat_seminar'])[1];
			file_put_contents(FCPATH . 'cdn/vendor/syarat_seminar/' . $file_nama, base64_decode($syarat_seminar_file));
			$data['syarat_seminar'] = $file_nama;

			$this->db->insert($this->table, $data);
			$data_id = $this->db->insert_id();
			$this->db->insert("hasil_seminar", [
				'seminar_id' => $data_id,
				'berita_acara' => "",
				'masukan' => "",
				'status' => '3'
			]);

			$hasil = [
				'error' => false,
				'message' => "data berhasil ditambahkan",
				'data_id' => $data_id
			];
		} else {
			$hasil = $validation;
		}

		return $hasil;
	}

	public function details($id)
	{
		$this->db->select('
			seminar.id,
			seminar.proposal_mahasiswa_id,
			seminar.tanggal,
			seminar.jam,
			seminar.dosen_id,
			seminar.dosen_penguji_id,
			seminar.tempat,
			seminar.surat_permohonan,
			seminar.file_proposal,
			seminar.syarat_seminar,
			seminar.kartu_bimbingan,
			proposal_mahasiswa.judul as proposal_mahasiswa_judul,
			mahasiswa.id as mahasiswa_id,
			mahasiswa.nama as mahasiswa_nama,
			mahasiswa.email,
		');

		$this->db->from($this->table);
		$this->db->join('proposal_mahasiswa', 'proposal_mahasiswa.id = seminar.proposal_mahasiswa_id', 'left');
		$this->db->join('mahasiswa', 'mahasiswa.id = proposal_mahasiswa.mahasiswa_id', 'left');
		$this->db->where('seminar.id', $id);

		$seminar = $this->db->get()->row_array();

		$hasil = [
			'error' => ($seminar) ? false : true,
			'message' => ($seminar) ? "data berhasil ditemukan" : "data tidak tersedia",
			'data' => $seminar
		];

		if ($hasil['data']) {
			$hasil['data']['hasil'] = $this->db->get_where('hasil_seminar', ['seminar_id' => $hasil['data']['id']])->row_array();
		}

		return $hasil;
	}

	public function destroy($id)
	{
		$kondisi = [
			'id' => $id
		];

		$seminar = $this->db->get_where($this->table, $kondisi)->row_array();

		if ($seminar) {
			$hasil_seminar = $this->db->get_where('hasil_seminar', ['seminar_id' => $id])->result_array();
			foreach ($hasil_seminar as $key => $item) {
				if ($item['berita_acara']) {
					unlink(FCPATH . 'cdn/vendor/berita_acara/' . $item['berita_acara']);
				}
				if ($item['masukan']) {
					unlink(FCPATH . 'cdn/vendor/masukan/' . $item['masukan']);
				}
			}
			unlink(FCPATH . 'cdn/vendor/file_proposal/' . $seminar['file_proposal']);
			unlink(FCPATH . 'cdn/vendor/kartu_bimbingan/' . $seminar['kartu_bimbingan']);
			unlink(FCPATH . 'cdn/vendor/surat_permohonan/' . $seminar['surat_permohonan']);
			unlink(FCPATH . 'cdn/vendor/syarat_seminar/' . $seminar['syarat_seminar']);

			$this->db->delete("hasil_seminar", ['seminar_id' => $id]);
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
}

/* End of file Seminar_model.php */
/* Location: ./application/models/Seminar_model.php */