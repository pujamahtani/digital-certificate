<html>
<head>
   <title>Admin Index</title>
    <link rel="stylesheet" href="../assets/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans" rel="stylesheet">
     
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <style>
   
        body{
	font-family: "Nunito Sans", sans-serif;
	
/*	background:#f8f8f8;*/
}
	.nav-item .logout:hover{
		background: #fff;
		border: 1px solid #b0413e;
		color: #b0413e;
	}

</style>
</head>

<body>

    <nav class="navbar-light bg-light" style="padding:20px;font-size:16px;">
        <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link active" href="#" style="color:#B0413E ">Home</a>
            </li>
            <form action="logout.php" method="POST">
            <li class="nav-item">
<!--                <button type="submit" name="logout" style="background:none; border:none;"><a class="logout btn" href="#" style="color:#fff;background-color:#b0413e; ">Logout</a></button>-->
                <a href="" class="logout btn" href="#" style="color:#fff;background-color:#b0413e; "><button type="submit" name="logout" style="background:none; border:none; color:#fff;">Logout</button></a>
            </li>
            </form>
            


        </ul>
    </nav>
    <div class="container" style="background:#eee;">
   <h3 class="text-center">Add Organization</h3>
<!--   action="organization_insert.php"-->
    <form class="form-horizontal" action="organization_insert.php" method="post" name="add-form" onsubmit="return validateForm()" >
        <div class="form-group">
            <label class="control-label col-sm-2">Organization Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="Enter Organization Name" name="name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" name="email">Email</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="Enter email" name="email">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" name="mobile_no">Mobile No</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="Enter Mobile no"  name="mobile_no">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" name="need">Need</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="Enter Need" name="need">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" name="address">Address</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="Enter Address" name="address">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" name="login_issuer">Login ID for issuer</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="Enter Login ID" name="login_issuer">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" name="issuer_password">Issuer Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control"  placeholder="Enter Password" name="issuer_password">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-8" name="login_higher_authority">Login ID for Higher Authority</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="Enter Login ID" name="login_higher_authority">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-8" name="higher_authority_password">Higher Authority Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control"  placeholder="Enter Password" name="higher_authority_password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10 text-center">
                <button type="submit" class="btn btn-default" name="submit" style="text-align:center; color:#fff; background: #b0413e;7
                " value="Submit">Submit</button>
            </div>
        </div>
        
    </form>
    </div>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    
     <script>
         function validateForm() {
         var organization_name = document.forms["add-form"]["name"].value;
            if (organization_name == "") {
            alert("Name must be filled out");
            return false;
            }
         var emailAddress = document.forms["add-form"]["email"].value;
            if (emailAddress == "") {
            alert("Email must be filled out");
            return false;
            }
             
            else if (!IsValidEmail(emailAddress)) {
                alert("Invalid email address.");
            }
            var mobile = document.forms["add-form"]["mobile_no"].value;
            var phoneno = /^\d{10}$/;
            if (mobile == "") {
            alert("Mobile Number must be filled out");
            return false;
            }
            else if(!mobile.match(phoneno))
            {
                 alert("Please Enter a valid PhoneNumber");
                return false;
            }
            
            var orNeed = document.forms["add-form"]["need"].value;
//             alert(orNeed);
            if (orNeed == "") {
            alert("Need must be filled out");
            return false;
            }
            
            var addr = document.forms["add-form"]["address"].value;
            if (addr == "") {
            alert("Address must be filled out");
            return false;
            }
            
             
            
             var loginIdIssuer = document.forms["add-form"]["login_issuer"].value;
//             alert(loginIdIssuer);
            var validLoginId =/^\d+$/;
            if (loginIdIssuer == "") {
            alert("Login Id  for Issuer must be filled out");
            return false;
            }
            else if(!loginIdIssuer.match(validLoginId))
            {
               
                alert("Please Enter a valid Login Id  for Issuer");
            return false;
            }
            
             
             var loginIdAuth = document.forms["add-form"]["login_higher_authority"].value;
//             alert(loginIdIssuer);
            var validLoginIdAuth = /^\d+$/;
            if (loginIdAuth == "") {
            alert("Login Id  for Auth must be filled out");
            return false;
            }
            else if(!loginIdAuth.match(validLoginIdAuth))
            {
                alert("Please Enter a valid Login Id  for Auth");
            return false;
            }
             
             var issuerPassword = document.forms["add-form"]["issuer_password"].value;
            if (issuerPassword == "") {
            alert("Issuer Password must be filled out");
            return false;
            }
            var authPassword = document.forms["add-form"]["higher_authority_password"].value;
            if (authPassword == "") {
            alert("High Authority Password must be filled out");
            return false;
            }
            }
         function IsValidEmail(emailAddress){
            var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            return expr.test(emailAddress);
        }
        
    </script>
     
</body>


   
   


</html