<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (strlen($_SESSION['agmsaid']) == 0) {
    header('location:logout.php');
} else {
    if (isset($_POST['submit'])) {
        $adminid = $_SESSION['agmsaid'];
        $aname = $_POST['adminname'];
        $uname = $_POST['username'];
        $mobno = $_POST['contactnumber'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Check if the username already exists
        $select = "SELECT * FROM tbladmin WHERE UserName = '$uname'";
        $result = mysqli_query($con, $select);
        
        if (mysqli_num_rows($result) > 0) {
            $error[] = 'Username already exists!';
        } else {
            // Hash the password
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);

            // Insert the data into the database
            $insert = "INSERT INTO tbladmin(AdminName, UserName, MobileNumber, Email, Password) 
                       VALUES('$aname', '$uname', '$mobno', '$email', '$hashed_password')";
            $query = mysqli_query($con, $insert);

            if ($query) {
                echo "<script>alert('Admin profile has been created.');</script>";
                echo "<script>window.location.href='add-admin-profile.php'</script>";
            } else {
                echo "<script>alert('Something Went Wrong. Please try again.');</script>";
            }
        }
    }
}
?>
  
  
<!DOCTYPE html>
<html lang="en">

<head>
  
 

  <title>Admin-Profile | Malcolm Lismore Photography</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

</head>

<body>
  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->
   <?php include_once('includes/header.php');?>
    <!--header end-->

    <!--sidebar start-->
<?php include_once('includes/sidebar.php');?>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="dashboard.php">Home</a></li>
              <li><i class="icon_documents_alt"></i>Pages</li>
              <li><i class="fa fa-user-md"></i>Profile</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <!-- profile-widget -->
       
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading tab-bg-info">
                <ul class="nav nav-tabs">
                 
                 
                  <li class="">
                    <a data-toggle="tab" href="#edit-profile">
                        <i class="icon-envelope"></i>Add Profile</a>
                  </li>
                </ul>
              </header>
              <div class="panel-body">
                <div >
                 
                  
                  <div id="edit-profile" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h1> Add Profile </h1>
                        <form class="form-horizontal" role="form" method="post" action="">
                          

                           <div class="form-group">
                            <label class="col-lg-2 control-label">Admin Name</label>
                            <div class="col-lg-6">
                              <input class=" form-control" id="adminname" name="adminname" type="text" required placeholder="Enter the name">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">User Name</label>
                            <div class="col-lg-6">
                              <input class=" form-control" id="username" name="username" type="text" required placeholder="Enter the email">
                            </div>
                          </div>
                          
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Contact Number</label>
                            <div class="col-lg-6">
                              <input class="form-control " id="contactnumber" name="contactnumber" type="text" required placeholder="Enter the contact number">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-6">
                              <input class="form-control " id="email" name="email" type="email" required placeholder="Enter the password">
                            </div>
                          </div>
						   <div class="form-group">
                            <label class="col-lg-2 control-label">Password</label>
                            <div class="col-lg-6">
                              <input class="form-control " id="password" name="password" type="password" required placeholder="Enter the password">
                            </div>
                          </div>
                         

                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button type="submit" class="btn btn-primary" name="submit">Create Profile</button>
                              
                            </div>
                          </div>
                        </form>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>

        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <?php include_once('includes/footer.php');?>
  </section>
  <!-- container section end -->
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery knob -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>

  <script>
    //knob
    $(".knob").knob();
  </script>


</body>

</html>