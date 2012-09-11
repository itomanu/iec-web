<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Landing extends CI_Controller {

    function __construct() {

        parent::__construct();
    }

    public function index($msg = NULL) {

        $data['msg'] = $msg;
        $this->load->view('landing/login_view', $data);
    }

    public function login_process() {

        if (isset($_POST)) {
            $this->load->model('user');
            // Validate the user can login
            $result = $this->login_model->validate();
            // Now we verify the result
            if (!$result) {
                // If user did not validate, then show them login page again
                $this->session->set_flashdata('error', "Oops, Username / Password tidak sesuai = $id!");
                $this->index();
            } else {
                $this->session->set_flashdata('success', "Welcome!");
                redirect('index');
            }
        }else
            {
            redirect('index');
            }
    }

}

