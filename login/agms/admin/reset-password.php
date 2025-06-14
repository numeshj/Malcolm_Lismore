<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
error_reporting(0);

if (isset($_POST['submit'])) {
    $contactno = $_SESSION['contactno'];
    $email = $_SESSION['email'];
    $password = $_POST['newpassword'];

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $query = mysqli_query($con, "UPDATE tbladmin SET Password='$hashed_password' WHERE Email='$email' && MobileNumber='$contactno'");

if ($query) {
    echo "<script>alert('Password successfully changed');
    window.location.href = 'login.php';</script>";
    session_destroy();
    exit;

    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>Reset Password | Malcolm Lismore Gallery Management System</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!-- external css -->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
    <script type="text/javascript">
        function checkpass() {
            if (document.changepassword.newpassword.value != document.changepassword.confirmpassword.value) {
                alert('New Password and Confirm Password field does not match');
                document.changepassword.confirmpassword.focus();
                return false;
            }
            return true;
        }

    </script>
</head>

<body class="login-img3-body">

    <div class="container">

        <form class="login-form" action="" method="post" name="changepassword" onsubmit="return checkpass();">
            <div class="login-wrap">
                <h1><img class="img-fluid" src="images/mclogob.png" style="height: 75px;" alt=""/></h1>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                    <input type="password" class="form-control" name="newpassword" placeholder="New Password"
                        required="true">
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                    <input type="password" class="form-control" name="confirmpassword" placeholder="Confirm Password"
                        required="true">
                </div>
                <button class="btn btn-primary btn-lg btn-block" type="submit" name="submit">Reset</button>
                <span class="pull-right"> <a href="login.php"> Sign in</a></span>
            </div>
        </form>

    </div>

</body>

</html>
