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
                        <form action="" method="POST" enctype="multipart/form-data">
                           <div class="form-group">
                                <label for="">Organisation Name</label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="text" class="form-control" id="" placeholder="Organisation Name" name="organisation_name">
                            </div>
                            <div class="form-group">
                                <label for="">Logo <span style="color: red;">Upload a Transperent png. Tool: <a href="https://onlinepngtools.com/create-transparent-png">onlinepngtools</a></span></label>
                                <div style="width: 50px; height: 3px; background:#b0413e; margin-bottom: 15px;"></div>
                                <input type="file" id="" name="logo">
                            </div>
                            <div class="form-group">
                                <label for="">Commitee Name</label>
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
                            <button type="submit" class="btn" style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.2); background-color: #b0413e; padding: 10px; width: 25%; margiin-left: 30px; color: white;">Submit</button>
                        </form>
                    </div>
                    <!--End of form-content-->
                </div>
                <!--End of col-md-6-->
<!-- YAHA RSOLUTION K WAJS FATT SAKTA H !SO AJUSTMNTS KRNA THOI IR UR PAING MARGIN MAI-->
                <div class="col-md-7" style="background-color: #b0413e; padding: 50px; position:fixed; bottom:-4; right:0;">
<!--
                    <div class="certificate-image" style="padding: 50px;">
                    <div class="" style="margin-top:100px;">
-->
                        <div class="image-inner" style="margin-left:50px;">
                            <img src="../../assets/images/preview1.png" alt="Work" class="img-responsive">
                        </div>
<!--
                    </div>
                    </div>Certifiacte Image
-->
                </div>
            </div>
            <!--End of row-->
        </div>
        <!--End of container-->
    </section>
</body>

</html>
