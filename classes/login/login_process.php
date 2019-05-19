<?php
require_once('../../functions/db.php');
session_start();
//echo "here";
if(isset($_POST['submit'])){
//    echo "here";
    $login_id=$_POST['login_id'];
    $login_password=$_POST['password'];
    
    $query="select * from users where login_id='$login_id' and password ='$login_password'";
    $result=mysqli_query($connection,$query);
    $result_set=mysqli_fetch_assoc($result);
//    echo "here";
    if(mysqli_num_rows($result) ==1)
    {   
//        echo "here";
//        end;
        $organization_id=$result_set['organization_id'];
        $role=$result_set['role'];
        if($role==0)
        {
            echo "here";
            $_SESSION['organization_id']=$organization_id;
            header("Location: ../issuer/template.php");
            
        }
        else
        {
            header("Location: ../higher_authority/requests.php");
        }
    }
    else{
        echo "Invalid";
    }
}
?>