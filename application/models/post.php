<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Post extends CI_Model {
    public $table_name = "tb_posts";
    
    function __construct() {
        parent::__construct();
    }
    
    public function getAll() {
        $query = $this->db->query(
                "SELECT tb_posts_types.Ptyp_Name, tb_users.User_Name,
                    tb_posts.Post_Title, tb_posts.Post_Picture, tb_posts.Post_Content, 
                    tb_posts.Post_CounterVote1, tb_posts.Post_CounterVote2, tb_posts.Post_UpdatedAt 
                FROM tb_posts, tb_users, tb_posts_types
                WHERE tb_posts.Post_User_ID = tb_users.User_ID
                AND tb_posts_types.Ptyp_ID = tb_posts.Post_Ptyp_ID
                ");
        return $query->result();
    }
    
    public function getUserName() {
        $user_id = $this->session->userdata('user_id');
        $query = $this->db->query(
                "SELECT tb_users.User_Name
                FROM tb_users
                WHERE tb_users.User_ID ='$user_id' "
                );
        return $query->row()->User_Name;
    }
    
    public function getPostByPostType($type){
        $query = $this->db->query(
                "SELECT tb_posts_types.Ptyp_Name, tb_users.User_Name,
                    tb_posts.Post_Title, tb_posts.Post_Picture, tb_posts.Post_Content, 
                    tb_posts.Post_CounterVote1, tb_posts.Post_CounterVote2, tb_posts.Post_UpdatedAt 
                FROM tb_posts, tb_users, tb_posts_types
                WHERE tb_posts_types.Ptyp_Name = '$type'
                ORDER BY tb_posts.Post_UpdatedAt DESC
                ");
        return $query->result();
    }
}
?>