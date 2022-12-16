<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Seminar extends MY_Controller
{

    public function index()
    {
        return $this->load->view('dosen/seminar');
    }

    public function detail($id = null)
    {
        if ($id) {
            return $this->load->view('dosen/seminar_detail', ['seminar_id' => $id]);
        }
        redirect(base_url('dosen/seminar'));
    }

    public function tandantangan($id = null)
    {
        if ($id) {
            return $this->load->view('dosen/tandatangan', ['seminar_id' => $id]);
        }
        redirect(base_url('dosen/seminar'));
    }

    public function update_tandatangan($id = null)
    {
        if ($id) {
            $def_tandatangan = $this->input->post('tandatangan');
            $tandatangan = $_FILES['tandatangan']['name'];

            $path                               = './assets/essence/panduanskripsi' . $def_tandatangan;
            $config['upload_path']              = $path;
            $config['allowed_types']            = 'pdf|png|jpeg|doc|docx';
            $config['max_size']                 = 2048;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            unlink($path);
            if (!$this->upload->do_upload('tandatangan')) {
                echo json_encode($this->upload->display_errors());
            } else {
                $upload_data = $this->upload->data();

                $data['tandatangan'] = $upload_data['file_name'];
                if ($this->db->update('seminar')) {
                    # code...
                }
            }
        }
    }
}

/* End of file Seminar.php */