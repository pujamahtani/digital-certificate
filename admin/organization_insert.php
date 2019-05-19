<?php
require_once('../functions/db.php');

// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
//use PHPMailer\PHPMailer\PHPMailer;
//use PHPMailer\PHPMailer\Exception;
//
//$recv = $_POST['email'];
//echo $recv;
//$password=$_POST['login_password'];
////Load Composer's autoloader
//require 'phpmailer/vendor/autoload.php';
//
//$mail = new PHPMailer(true);                              // Passing `true` enables exceptions
//try {
//    //Server settings
//    $mail->SMTPDebug = 2;                                 // Enable verbose debug output
//    $mail->isSMTP();                                      // Set mailer to use SMTP
//    $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
//    $mail->SMTPAuth = true;                               // Enable SMTP authentication
//    $mail->Username = 'sanjayjanyani43@gmail.com';                 // SMTP username
//    $mail->Password = '9730319048';                           // SMTP password 9730319048
//    $mail->SMTPSecure = 'tls';          //ssl                  // Enable TLS encryption, `ssl` also accepted
//    $mail->Port = 567;                      //465              // TCP port to connect to
//
//    //Recipients
//    $mail->setFrom('sanjayjanyani43@gmail.com', 'sanjay');
//    $mail->addAddress($recv);     // Add a recipient
////    $mail->addAddress('ellen@example.com');               // Name is optional
////    $mail->addReplyTo('info@example.com', 'Information');
////    $mail->addCC('cc@example.com');
////    $mail->addBCC('bcc@example.com');
//
//    //Attachments
////    $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
////    $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
//
//    //Content
//    $mail->isHTML(true);                                  // Set email format to HTML
//    $mail->Subject = 'Congratulations you have been logged in ';
//    $mail->Body    = 'Hello you have been logged in to vesit question paper your password is <b>'.$password.'</b> .Kindly change your password ';
//    $mail->AltBody = 'your password is <b>'.$password.'</b> Kindly change your password before using it';
//
//    $mail->send();
//    echo 'Message has been sent';
////    $url=
////    echo '<script type="text/javascript">';
////echo 'window.location.href="../Admin/student_register.php';
////echo '</script>';
//    
//} catch (Exception $e) {
//    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
//}
//echo "<script>window.location.href='../Admin/student_register.php?q=1'</script>";
//header("Location: ../Admin/student_register.php");
//exit();






if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile_no = $_POST['mobile_no'];
    $need = $_POST['need'];
    $address = $_POST['address'];
    $login_issuer = $_POST['login_issuer'];
    $issuer_password = $_POST['issuer_password'];
    $login_higher_authority=$_POST['login_higher_authority'];
    $higher_authority_password=$_POST['higher_authority_password'];
//    echo $connection;
    
//    $query = "SELECT * FROM organization";
//    $result = mysqli_query($connection, $query);
//    if(!$result)
//    {
//        die("Query Failed : ". mysqli_error($connection));
//    }

//    if(mysqli_num_rows($result)!=0){
    $query = "INSERT INTO organization(name, email, mobile_no, need, address, login_issuer, issuer_password,login_higher_authority,higher_authority_password) VALUES('$name', '$email',$mobile_no, '$need', '$address', '$login_issuer', '$issuer_password','$login_higher_authority','$higher_authority_password')";
    echo $query;    
    $query_result = mysqli_query($connection, $query);
    if(!$query_result)
    {
        die("Query Failed : ". mysqli_error($connection));
    }
    
    
    $organization_id=mysqli_insert_id($connection);
    $query="Insert into users(organization_id,login_id,password,role) values($organization_id,'$login_issuer','$issuer_password',0)";
    $result=mysqli_query($connection,$query);
    $query="Insert into users(organization_id,login_id,password,role) values($organization_id,'$login_higher_authority','$higher_authority_password',1)";
    $result=mysqli_query($connection,$query);
    
    
    
//    }

    
}
?>

