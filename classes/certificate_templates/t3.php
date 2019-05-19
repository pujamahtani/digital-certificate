<?php
$student_name = "Vishal Israni";
$field = "Academics";
$rank = "1st";
$class= "D15";
$organisation_name = "VIVEKANAND INSTITUTE OF TECHNOLOGY";
$date = "22/07/2018";
$signature_1 = "Signature";
$signature_2 = "Signature";
$certificate_title = "Certificate of Achievement";
$committee_name = "CSI";

?>
   <html>
    <head>
       <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

       <link rel="stylesheet" href="../../assets/css/bootstrap/bootstrap.min.css">
       
       <link rel="stylesheet" href="../../assets/css/style-certificate.css">
        <title>Certificate</title>
    </head>
    <body>
        <div class="content">
        <div class="container show-bg">
            <div class="background">
                <div class="bg-1">
                    <div class="row">
                <div class="col-md-12">
                    <div class="certificate-body-2">
                     <div class="certi-qr-code">
                        <div class="qr-code" style="margin-left:30px">
                            <img src="../../assets/images/qr-code.png" alt="">
                        </div>
                    </div><!--certi-qr-code-->
                    <div class="certi-logo-2">
               <div class="logo-2">
                   
               </div>
               </div>
                <div class="certi-title-2">
                   <p style="margin-right : 10px"><?php echo $certificate_title?></p>
               </div><!--certi-title-2-->
               <div class="organisation-2">
                   <p><?php echo $organisation_name?></p>
               </div>
                <div class="certi-body-2">
                   <p>This is to certify <span><?php echo $student_name;?>  </span> has secured <?php echo $rank; ?> rank of class <?php echo $class;?> for his/her performance in <span>  <?php echo $field;?>  </span></p>
                   
               </div><!--certi-body-2-->
                <div class="row">
               <div class="col-md-4 col-sm-4">
                   <div class="certi-date-2"><p>Date: <?php echo $date;?></p></div>
               </div>
               <div class="col-md-4 col-sm-4">
               <div class="sign2">
                   <p><image class="sign" src="../../assets/images/signature.png"></image></p><p>Signature 1</p>
               </div>
               </div>
               <div class="col-md-4 col-sm-4">
               <div class="sign2">
                   <p><image class="sign"></image></p><p>Signature 1</p>
               </div>
               </div>
                </div><!--row-->
                </div><!--certificate-body-2-->
                </div><!--col-md-12-->
            </div><!--row-->
                </div>
            </div>
            
        </div><!--container-->
        </div><!--content-->
    </body>
</html>