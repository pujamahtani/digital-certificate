<?php
if(isset($_POST['logout'])){
    session_destroy();
    header("Location: ../landing_page.php");
}

?>