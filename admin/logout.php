<?php
session_start();

if(isset($_POST["logout"])){
    session_destroy();
    header("Location: ../classes/landing_page.php");
}

?>