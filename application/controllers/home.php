<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
    public function index() {
        $user_id =  $this->session->userdata('user_id');
        $data['posts'] = $this->post->getAll();
        $data['postsByType'] = $this->post->getPostByPostType('2008');
        $data['username'] = $this->post->getUserName();
        if (isset($user_id) && $user_id != null) {
            $this->load->view('home/index', $data);
        } else {
            redirect('');
        }
    }
}
