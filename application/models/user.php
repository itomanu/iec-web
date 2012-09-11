<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class User extends CI_Model{
    public $table_name = "albums";
    
    function __construct(){
        parent::__construct();
    }
     
    public function validate(){
        // grab user input
        $username = $this->security->xss_clean($this->input->post('username'));
        $password = $this->security->xss_clean($this->input->post('password'));
         
        // Prep the query
        $this->db->where('User_ID', $username);
        $this->db->where('User_Password', $password);
         
        // Run the query
        $query = $this->db->get($this->table_name);
        // Let's check if there are any results
        if($query->num_rows == 1)
        {
            $row = $query->row();
            return true;
        }
        // If the previous process did not validate
        // then return false.
        return false;
    }
}
?>