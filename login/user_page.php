<?php

@include 'config.php';

session_start();

if(!isset($_SESSION['user_name'])){
   header('location:login_form.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>user page</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   
	<style>

	</style>

</head>
<body>
   
<div class="container">

   <div class="content">
   <h1><img class="img-fluid" src="mclogob.png" style="height: 65px;" alt=""/></h1>
      <h3>hi, <span>user</span></h3>
      <h1>welcome <span><?php echo $_SESSION['user_name'] ?></span></h1>
      <p>this is an user page</p>
      <a href="user/index.html" class="btn">login</a>
      <a href="login_form.php" class="btn">Back</a>
      <a href="logout.php" class="btn">logout</a>
   </div>

</div>

</body>
</html>