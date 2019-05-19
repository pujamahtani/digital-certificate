<!--<!DOCTYPE html>-->
<?php
include_once("../../functions/db.php");
session_start();
$organization_id = $_SESSION["organization_id"];
//$organization_id = 13;
if(isset($_GET['a'])){

$a=$_GET['a'];
}
?>
<html lang="zxx" class="no-js">

<head>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">


	<link rel="stylesheet" href="../../assets/css/bootstrap/bootstrap.min.css">


</head>
<style>
	.nav-item .logout:hover{
		background: #fff;
		border: 1px solid #b0413e;
		color: #b0413e;
	}

</style>

<body>


   <nav class="navbar-light bg-light" style="padding:20px;font-size:16px;">
	<ul class="nav justify-content-end">
		<li class="nav-item">
			<a class="nav-link active" href="#" style="color:#B0413E ">Home</a>
		</li>
		<form action="logout.php" method="POST">
            <li class="nav-item">
                <a href="" class="logout btn" href="#" style="color:#fff;background-color:#b0413e; "><button type="submit" name="logout" style="background:none; border:none; color:#fff;">Logout</button></a>
            </li>
            </form>

	</ul>
	</nav>


	<!-- Start Banner Area -->
	<section class="" style="position:relative;">
		<img src="../../assets/images/background.png" alt="" style="width:1500px">


		<div class="container-fluid" style="position: absolute;bottom:375px;right:200px; background-color:#f9f9f9;width:1100px;height:450px;overflow: scroll">
		<?php
            if(isset($a)){
              if($a==1)
              {
                ?>
                <div class="alert alert-success alert-dismissible" style="margin-left:40px;margin-top:20px">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> Indicates a successful or positive action.
</div>
                  
              <?php
              }
            }
            ?>
			<div class="row">
			
			    
<!--
				<div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:100px">
					<p>hello hi</p>
				</div>
				<div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:100px ">
					<p>hello</p>
				</div>
				<div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:100px ">
					<p>hello</p>
				</div>
				<div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:100px ">
					<p>hello</p>
				</div>
				<div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:100px ">
					<p>hello</p>
				</div>
				<div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:100px ">
					<p>hello</p>
				</div>
				<div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:100px ">
					<p>hello</p>
				</div>
-->

            <?php
//$a = null;
            $query = "SELECT * FROM generation WHERE organization_id = $organization_id AND higher_authority_signature IS NULL";
                
            $result = mysqli_query($connection, $query);
            
            
            $num = mysqli_num_rows($result);
                
            $count = 0;
            for($i=1; $i<=$num; $i++){
                $row = mysqli_fetch_assoc($result);
                ?>
                
                <div class="col-xs-4 col-sm-6 col-md-6 col-lg-5" style="background-color:#CEE5F2;margin:30px 0px 0px 55px;height:200px">
					<p>Committee Name : <?php echo $row['commitee_name']; ?></p>
                    <p>Issuer : <?php echo $row['issuer_name']; ?></p>
                    <p>Date : <?php echo $row['date']; ?></p>
                    <p>Status : Pending</p>
                    <a href="records.php?generation_id=<?php echo $row['generation_id']?>" style="color:#fff; background:#b0413e; padding:7px; padding-left:20px; padding-right:20px; text-decoration:none;">Verify</a>
                    
				</div>
           <?php
            }
            

                ?>



			</div>
		</div>




	</section>


	<script src="../../assets/js/jquery.min.js"></script>

	<script src="../../assets/vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
