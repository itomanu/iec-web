<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
* Controller for handling User like
* logout, login, etc
*
* @author Boy Gorby
* @modified Victor Manu
* fix code and repair logics
*
*/

class Users extends CI_Controller {
    public function index($username = '') {
        redirect('');
    }

    public function login() {
        if (isset($_POST)) {
            if (!$this->user->validate()) {
                $this->session->set_flashdata('error', "Maaf, NIM dan password Anda tidak sesuai");
                if($username = $this->input->post('user_id')) $this->session->set_flashdata('saved_user_id', $username);
                redirect('');
            } else {
                $this->session->unset_userdata('saved_user_id');
                $this->session->set_flashdata('notice', "Selamat datang!");
                $this->session->set_userdata('user_id', $this->input->post('user_id'));
                redirect('home/index');
            }
        } else {
            redirect('');
        }
    }
    
    public function logout() {
        $user_id =  $this->session->userdata('user_id');
        if (isset($user_id) && $user_id != null) $this->session->unset_userdata('user_id');
        redirect('');
    }
}
