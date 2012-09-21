<?
echo $username;
echo "&nbsp";
echo anchor('users/logout', 'Logout');
foreach ($postsByType as $row) {  
    echo "<li>
        $row->Post_Picture</br>
        $row->User_Name</br>
        $row->Post_Title
        ($row->Ptyp_Name)</br>
        $row->Post_Content</br>
        $row->Post_UpdatedAt</br>
        $row->Post_CounterVote1
        $row->Post_CounterVote2
    </li>";
}
?>