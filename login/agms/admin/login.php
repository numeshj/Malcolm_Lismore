<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['login'])) {
    $adminuser = $_POST['username'];
    $password = $_POST['password'];

    $query = mysqli_query($con, "SELECT ID, Password FROM tbladmin WHERE UserName='$adminuser'");
    $row = mysqli_fetch_assoc($query);
    
    if ($row) {
        $hashed_password = $row['Password'];
        
        if (password_verify($password, $hashed_password)) {
            $_SESSION['agmsaid'] = $row['ID'];
            header('location: dashboard.php');
        } else {
            echo "<script>alert('Invalid Details');</script>";
        }
    } else {
        echo "<script>alert('Invalid Details');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login | Malcolm Lismore Gallery Management System</title>
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!-- External CSS -->
    <!-- Font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
</head>

<body class="login-img3-body">
    <div class="container">
        <form class="login-form" action="" method="post">
		
            <div class="login-wrap"><p style="text-align: center;">
      <img class="img-fluid" src="../../../login/mclogob.png" style="height: 65px; margin: 0 auto; display: block;" alt=""/>
   </p>
                
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_profile"></i></span>
                    <input type="text" class="form-control" name="username" placeholder="Username" autofocus required="true">
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                    <input type="password" class="form-control" name="password" placeholder="Password" required="true">
                </div>
                <lable><span class="pull-right"> <a href="forgot-password.php"> Forgot Password?</a></span></label>
                <button class="btn btn-primary btn-lg btn-block" type="submit" name="login">Login</button>
                <p style="margin-top:3%; font-weight:bold"><a href="../../../index.html">Back to Home page</a></p>
            </div>
        </form>
    </div>
</body>

</html>
