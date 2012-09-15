<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Model {
    public $table_name = "tb_users";

    function __construct() {
        parent::__construct();
    }

    /**
     * Get user who is logged in
     */
    public function current_user() {
        
    }
    
    /**
     * Validate user id and password for login
     */
    public function validate() {
        // Grap input and check it with xss clean
        $this->db->where('User_ID', $this->input->post('user_id'));
        $this->db->where('User_Passwords', md5($this->input->post('password')));

        // Run the query
        $query = $this->db->get($this->table_name);

        if ($query->num_rows == 1) {
            return true;
        }

        return false;
    }
}
?>