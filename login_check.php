<?php
session_start();
$userLoggedIn = false; 

// Check if the user is logged in
if (isset($_SESSION['user_id'])) {
    $userLoggedIn = true;

$user_name = $_SESSION['user_name'];
$user_email = $_SESSION['user_email'];
$user_id = $_SESSION['user_id'];
}

?>