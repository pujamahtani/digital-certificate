<?php
require_once("../../functions/db.php");
include('phpqrcode/qrlib.php'); 
//$organization_id=$_SESSION['organization_id'];
$organization_id=13;



if(isset($_POST['verify']))
{
//    echo "here";
    $generation_id=$_POST['generation_id'];
//$generation_id=1;
    echo "<br>".$generation_id;
    if(isset($_FILES['higher_authority_signature'])){
        //yes the file was uploaded so we are initializing all the required variables
        $image_name = $_FILES['higher_authority_signature']['name'];
        $image_size = $_FILES['higher_authority_signature']['size'];
        $temp_name = $_FILES['higher_authority_signature']['tmp_name'];
        $file_type = $_FILES['higher_authority_signature']['type'];
        
//        echo $image_name;
//        $file_extension = strtolower(end(explode(".",$image_name)));
    }
    
    $image_name=$generation_id.".png";
    if(isset($_FILES['higher_authority_signature'])){
        move_uploaded_file($temp_name,"images/higher_authority_signature/".$image_name);   
    }
//    echo "ADDED";
    
    
    
    
    $image = $generation_id.".png";
//    echo $image;
    $query = "UPDATE generation SET higher_authority_signature = '$image' WHERE generation_id = $generation_id";
//    echo $recent_id;    
    $result = mysqli_query($connection, $query);


$query="Select * from generation where generation_id=$generation_id";
//echo $query;
$result_set=mysqli_query($connection,$query);
$row=mysqli_fetch_assoc($result_set);
$table_name=$row['commitee_name'];
$template_id=$row['template_id'];

//echo $table_name;

$query="Select * from $table_name";
$result_set=mysqli_query($connection,$query);
    
$num=mysqli_num_rows($result_set);
$count=0;
    
while($count!=$num)
{   
//    echo "<br>";
    $row=mysqli_fetch_assoc($result_set);
    $student_id=$row['student_id'];
    $name=$row['student_name'];
//    echo $student_id;
    $count=$count+1;
    $folder="images/";
    
    
//    $qr_name=explode(".",$generation_id,$student_id);
    $file_name=".png";
    $qr_name=$generation_id.$student_id.$file_name;
    $text=$name;
    
//    echo $qr_name;
    $file=$folder.$qr_name;
    
    $link="generation_id=".$generation_id."&"."student_id=".$student_id;
//    echo "<br><br>";
    echo $link;
    $links='localhost/bitcampdigi/classes/certificate_templates/'.$template_id.".php?".$link;
//    echo $links;
//    echo $qr_name;
    QRcode::png($links,$file);
    $query="Update $table_name set qr_image='$qr_name',link='$links' where student_id=$student_id";
//    echo $query;
    $result=mysqli_query($connection,$query);
}
    
$query="Select * from $table_name";
echo $query;
$result_set=mysqli_query($connection,$query);
$row=mysqli_fetch_assoc($result_set);
$emails=$row['email'];
echo $emails;
$link=$row['link'];
    echo $link;

    
//require_once("phpmailer/test.php");   
//require_once("C:\xampp\htdocs\classes\higher_authority\phpmailer/my_mail.php?email=$email");   

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //code for blockchain
    
    
    

include_once("Block.php");


//if(isset($_GET["generation_id"])){
//    $generation_id = $_GET["generation_id"];
//}

//$generation_id = 44;


$query = "SELECT * FROM generation WHERE generation_id = $generation_id";

$result = mysqli_query($connection, $query);
$row = mysqli_fetch_assoc($result);

$commitee_name = $row["commitee_name"];



$query = "SELECT * FROM $commitee_name";
$result = mysqli_query($connection, $query);


$num = mysqli_num_rows($result);
//echo $num;
$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
for($i=1; $i<=$num; $i++){
    
    $row = mysqli_fetch_assoc($result);
    $student_id = $row["student_id"];
//    echo $student_id." ";
    $student_name = $row["student_name"];
    $class = $row["class"];
    $rank = $row["rank"];
    $field = $row["field"];
    $email = $row["email"];

    
    
//    $obj = new Block();
    if($i==1){
        $previousHash = 0;
//        echo $previousHash;
        $obj = Block::createGenesisBlock(1,$student_name,$class,$rank,$field,$email);
        $chain1 = [$obj->student_id, $obj->hash];
//        print_r($chain1);
//        echo "<br><br>";
        fwrite($myfile, implode("\n",$chain1));
        fwrite($myfile , "\n");
//        echo $obj->previousHash();
    }else{
        $previousHash = $_SESSION["previousHash"];
        $obj = new Block($student_id,$student_name,$class,$rank,$field,$email);
//        $obj->previousHash();
//        echo $obj->student_id." ";
        $chain1 = [$obj->student_id, $obj->hash];
//        print_r($chain1);
//        echo $previousHash;
        echo "<br><br>";
        fwrite($myfile, implode("\n",$chain1));
        fwrite($myfile , "\n");
        
    }
    
    $query = "UPDATE $commitee_name SET previous_hash = '$previousHash' WHERE student_id = $i";
    $result1 = mysqli_query($connection, $query);
    
    
    
    
    
}

    echo "<br>";
    echo "here";
    echo $emails;
    header("Location: phpmailer/my_mail.php?email=$emails&link=$link");
//    header("Location: requests.php?a=1");
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
?>