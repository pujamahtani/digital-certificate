<?php
include_once("../../functions/db.php");
ob_start();
session_start();
$organization_id = $_SESSION["organization_id"];// to be uncommented
//$organization_id = 13; //to be commented afterwards when involving sessions
$template_id=$_GET['template_id'];
//echo $template_id;
    
    
?>
<html>

<head>
    <title></title>
    <link rel="stylesheet" href="../../assets/css/bootstrap/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans" rel="stylesheet">
    <style>
        body{
	font-family: "Nunito Sans", sans-serif;
	
/*	background:#f8f8f8;*/
}
    </style>
</head>

<body>
    <section id="generation_form">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5" style="padding: 50px; border: solid 2px #b0413e;">
                    <div class="form-title">
                        <div class="category-heading text-center">
                            <h3  class="text-heading" style="font-size: 30px;">Category</h3>
                            <div style="width: 50px; height: 3px; background:#b0413e; margin: 0 auto 30px;"></div>
                        </div>
                        
                        <!--End of category-heading-->
                    </div>
                    <!--End of form-title-->
                    <div class="form-content">
                        <form action="insert_generation.php" method="POST" enctype="multipart/form-data">
                          <div class="alert alert-danger display-hide">
                                            <button class="close" data-close="alert"></button> You have some form errors. Please check below. </div>
                           <div class="form-group">
                                <label for="">Organisation Name</label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <?php
                               $query = "SELECT * FROM organization WHERE organization_id = $organization_id";
                               $result = mysqli_query($connection, $query);
                               $row = mysqli_fetch_assoc($result);
                               
                               ?>
                                <input type="text" class="form-control" id="" placeholder="Organisation Name" name="name" value="<?php echo $row["name"] ?>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="">Logo <span style="color: red;">Upload a Transperent png. Tool: <a href="https://onlinepngtools.com/create-transparent-png">onlinepngtools</a></span></label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="file" accept="image/*" id="" name="logo">
                            </div>
                            <div class="form-group">
                                <label for="">Committee Name :  <span style="color:red;">format(write the committee name,then a underscore and then organization name)</span></label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="text" class="form-control" id="" placeholder="Commitee Name" name="commitee_name">
                            </div>
                            <div class="form-group">
                                <label for="">Certificate Title</label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="text" class="form-control" id="" placeholder="Certificate Title" name="certificate_title">
                            </div>
                            <div class="form-group">
                                <label for="">Date</label>
                                <div style="width: 30px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="date" class="form-control" id="" name="date">
                            </div>
                            <div class="form-group">
                                <label for="">Issuer Name</label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="text" class="form-control" id="" placeholder="Issuer Name" name="signature_1_name">
                            </div>
                            <div class="form-group">
                                <label for="">Issuer Signature <span style="color: red;">Upload a Transperent png. Tool: <a href="https://onlinepngtools.com/create-transparent-png">onlinepngtools</a></span></label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="file" id="" name="signature_1_photo" class="">
                            </div>
                            <div class="form-group">
                                <label for="">Higher Authority Name</label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="text" class="form-control" id="" placeholder="Higher Authority Name" name="signature_2_name">
                            </div>
                            <div class="form-group">
                                <label for="">Upload Excel Sheet</label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="file" id="" name="excel_sheet" class="">
                            </div>
                            <div class="form-group">
<!--                                <label for="">Upload Excel Sheet</label>-->
<!--                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>-->
                                <input type="hidden" id="" name="template_id" class="" value='<?php echo $template_id; ?>'>
                            </div>
                            
                            <button type="submit" class="btn" style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.2); background-color: #b0413e; padding: 10px; width: 25%; margiin-left: 30px; color: white;" name="submit_generation">Submit</button>
                        </form>
                    </div>
                    <!--End of form-content-->
                </div>
                <!--End of col-md-6-->
                <div class="col-md-7" style="background-color: #b0413e; padding: 50px; position:fixed; bottom:0; right:0;">
                    <div class="certificate-image" style="padding: 50px;">
                    <div class="image-outer" style="padding: 20px; padding-left: 60px;">
<!--                        <div class="image-inner">-->
                            <img src="../../assets/images/<?php echo $template_id;?>.png" alt="Work" class="img-responsive">
<!--                        </div>-->
                    </div>
                    </div><!--Certifiacte Image-->
                </div>
            </div>
            <!--End of row-->
        </div>
        <!--End of container-->
    </section>
    
    
    <script>
        
    </script>
    
</body>

</html>
