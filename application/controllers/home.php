<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
    public function index() {
        $user_id =  $this->session->userdata('user_id');
        if (isset($user_id) && $user_id != null) {
            $this->load->view('home/index');
        } else {
            redirect('');
        }
    }
}
