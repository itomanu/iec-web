<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Landing extends CI_Controller {
    public function index() {
        if ($this->session->userdata('user_id')) redirect('home', 'index');
        else {
            $data['title'] = 'IEC Site | Login';
            $data['page'] = 'landing/login';
            $data['notice'] = $this->session->flashdata('notice');
            $data['error'] = $this->session->flashdata('error');

            $this->session->keep_flashdata('saved_user_id');
            $data['username'] = $this->session->flashdata('saved_user_id');
            $this->load->view('public/template', $data);
        }
    }
}
