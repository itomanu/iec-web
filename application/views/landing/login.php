<div id="login_form">
    <h2>User Login</h2>
    <?
    echo flash_message($error, $notice);
    echo form_open('users/login', "method='post'");
    echo form_label('NIM', 'user_id');
    echo form_input('user_id', $username, "size = '25'");
    echo form_label('Password', 'password');
    echo form_password('password', '', "size = '25'");
    echo form_submit('submit', 'Login');
    echo form_close(); ?>
</div>