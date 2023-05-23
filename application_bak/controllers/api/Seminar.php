<?php
defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Seminar extends REST_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Seminar_model', 'model');
	}

	public function index_post()
	{
		$response = $this->model->index($this->input->post());
		return $this->response($response);
	}

	public function create_post()
	{	
		$id =$this->session->userdata('id');
		$cekSempro = $this->db->select('hasil_seminar.status')->join('hasil_seminar', 'hasil_seminar.seminar_id = seminar.id')->where('mahasiswa_id', $id)->where('hasil_seminar.status', '3')->or_where('hasil_seminar.status', '2')->get('seminar')->result_array();
		if (count($cekSempro) > 0) {
			$response = [
				'error' => true,
				'message' => 'Terdapat seminar proposal yang belum diselesaikan, Harap tunggu!'
			];
			return $this->response($response);
		}
		$response = $this->model->create($this->input->post());
		return $this->response($response);
	}

	public function update_post($id = null)
	{
		$response = $this->model->update($this->input->post(), $id);
		return $this->response($response);
	}

	public function destroy_post($id = null)
	{
		$response = $this->model->destroy($id);
		return $this->response($response);
	}

	public function details_post($id = null)
	{
		$response = $this->model->details($id);
		return $this->response($response);
	}
}

/* End of file Seminar.php */
/* Location: ./application/controllers/api/Seminar.php */