<?php
include_once("../../functions/db.php");
session_start();
$organization_id = $_SESSION["organization_id"]; //to be uncommented
//$organization_id = 13; //to be commented afterwards when involving sessions
//if(isset($_GET['template_id'])){
//    echo "here";
//    $template_id=$_GET['template_id'];
//    echo $template_id;
//    end();
//    }
if(isset($_POST["submit_generation"])){
    $name = $_POST["name"];
//    $logo = $_POST["logo"];
    $commitee_name = $_POST["commitee_name"];
//    echo $commitee_name;
    $certificate_title = $_POST["certificate_title"];
    $date = $_POST["date"];
    $signature_1_name = $_POST["signature_1_name"];
//    $signature_1_photo = $_POST["signature_1_photo"];
    $signature_2_name = $_POST["signature_2_name"];
//    $excel_sheet = $_POST["excel_sheet"];
    $template_id=$_POST['template_id'];
    
    $query = "INSERT INTO generation(organization_id, template_id, commitee_name, certificate_title, issuer_name, higher_authority_name, date) VALUES($organization_id, '$template_id','$commitee_name', '$certificate_title', '$signature_1_name', '$signature_2_name','$date')";
    
//    echo $query;
    
    $result = mysqli_query($connection, $query);
    
    $recent_id = mysqli_insert_id($connection);
    
    
    
    
    if(isset($_FILES['logo'])){
        //yes the file was uploaded so we are initializing all the required variables
        $image_name = $_FILES['logo']['name'];
        $image_size = $_FILES['logo']['size'];
        $temp_name = $_FILES['logo']['tmp_name'];
        $file_type = $_FILES['logo']['type'];
//        echo "here";
        echo $image_name;
        
//        echo "ss";
//        $file_extension = strtolower(end(explode(".",$image_name)));
    }
    
    $image_name=$recent_id.".png";
//    echo "<br>".$image_name;
    if(isset($_FILES['logo'])){
        echo 'here';
        move_uploaded_file($temp_name,"../logo_images/".$image_name);   
    }
//    echo "ADDED";
    
    
    $image = $recent_id.".png";
//    echo $image;
    $query = "UPDATE generation SET logo = '$image' WHERE generation_id = $recent_id";
//    echo $recent_id;    
    $result = mysqli_query($connection, $query);
    
    
    
    
    if(isset($_FILES['signature_1_photo'])){
        //yes the file was uploaded so we are initializing all the required variables
        $image_name = $_FILES['signature_1_photo']['name'];
        $image_size = $_FILES['signature_1_photo']['size'];
        $temp_name = $_FILES['signature_1_photo']['tmp_name'];
        $file_type = $_FILES['signature_1_photo']['type'];
        
//        echo $image_name;
//        $file_extension = strtolower(end(explode(".",$image_name)));
    }
    
    $image_name=$recent_id.".png";
    if(isset($_FILES['signature_1_photo'])){
        move_uploaded_file($temp_name,"images/issuer_signature/".$image_name);   
    }
//    echo "ADDED";
    
    
    $image = $recent_id.".png";
//    echo $image;
    $query = "UPDATE generation SET issuer_signature = '$image' WHERE generation_id = $recent_id";
//    echo $recent_id;    
    $result = mysqli_query($connection, $query);
    
    
    
    
    
    
    
    
    
    
    
    
    $sql = "CREATE TABLE $commitee_name (
  student_id int(11) NOT NULL AUTO_INCREMENT,
  student_name varchar(255) NOT NULL,
  class varchar(255) NOT NULL,
  rank varchar(255) NOT NULL,
  field varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  qr_image varchar(255) NOT NULL,
  link varchar(255) NOT NULL,
  previous_hash TEXT,
   PRIMARY KEY (student_id)
)";
    
//    echo $sql;
    
    $result = mysqli_query($connection, $query);
    if (mysqli_query($connection, $sql)) {
//    echo "Table created successfully";
} else {
    echo "Error creating table: " . mysqli_error($connection);
}

    
    
    
    
    
    
    
    
    
    
    $value = explode(".", $_FILES["excel_sheet"]["name"]);
$extension = strtolower(array_pop($value));
 $allowed_extension = array("xls", "xlsx", "csv"); //allowed extension
 if(in_array($extension, $allowed_extension)) //check selected file extension is present in allowed extension array
 {
  $file = $_FILES["excel_sheet"]["tmp_name"]; // getting temporary source of excel file
  include("PHPExcel/IOFactory.php"); // Add PHPExcel Library in this code
  $objPHPExcel = PHPExcel_IOFactory::load($file); // create object of PHPExcel library by using load() method and in load method define path of selected file

//  $output .= "<label class='text-success'>Data Inserted</label><br /><table class='table table-bordered'>";
  foreach ($objPHPExcel->getWorksheetIterator() as $worksheet)
  {
   $highestRow = $worksheet->getHighestRow();
   for($row=2; $row<=$highestRow; $row++)
   {
//    $output .= "<tr>";
//    $student_id = mysqli_real_escape_string($connection, $worksheet->getCellByColumnAndRow(0, $row)->getValue());
       
    $student_name = mysqli_real_escape_string($connection, $worksheet->getCellByColumnAndRow(0, $row)->getValue());
       
    $class = mysqli_real_escape_string($connection, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
       
    $rank = mysqli_real_escape_string($connection, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
       
    $field = mysqli_real_escape_string($connection, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
       
    $email = mysqli_real_escape_string($connection, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
//    $add = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(2, $row)->getValue());   
    $query = "INSERT INTO $commitee_name(student_name, class, rank, field, email) VALUES ('$student_name', '$class', '$rank', '$field', '$email')";
    mysqli_query($connection, $query);
//       echo $query;
//    $output .= '<td>'.$name.'</td>';
//    $output .= '<td>'.$email.'</td>';
////    $output .= '<td>'.$add.'</td>';   
//    $output .= '</tr>';
   }
  } 
//  $output .= '</table>';

 }
 else
 {
//  $output = '<label class="text-danger">Invalid File</label>'; //if non excel file then
 }
    
header("Location: template.php");
    
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    


?>