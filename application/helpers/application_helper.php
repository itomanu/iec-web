<?php

/*
 * This PHP file used for helper method
 * please, make it usefull
 * 
 * @author Victor Manu
 */

/*
 * Print out flash message (error or notice)
 * 
 * @author Victor Manu
 */
function flash_message($error, $notice){    
    if ($error != '') {
        return "<div class='error'>$error</div>";
    }
    if ($notice != '') {
        return "<div class='notice'>$notice</div>";
    }
}