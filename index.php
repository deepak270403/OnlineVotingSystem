<?php
  // Start the session
  session_start();
  
  // Check if an admin is logged in, redirect to admin's homepage if yes
  if(isset($_SESSION['admin'])){
	header('location: admin/home.php');
  }

  // Check if a voter is logged in, redirect to user's homepage if yes
  if(isset($_SESSION['voter'])){
	header('location: home.php');
  }
?>
<!--Include the header file-->
<?php include 'includes/header.php'; ?>

<body class="hold-transition login-page">
  <div class="login-box">
	
	<!-- Login form UI -->
	<div class="login-logo">
	  <b>Welcome Voter</b>
	</div>
	<div class="login-box-body">
	  <p class="login-box-msg">Sign in to start your session</p>

	  <form action="login.php" method="POST">
		<div class="form-group has-feedback">
		  <input type="text" class="form-control" name="voter" placeholder="Voter's ID" required>
		  <span class="glyphicon glyphicon-user form-control-feedback"></span>
		</div>
		<div class="form-group has-feedback">
		  <input type="password" class="form-control" name="password" placeholder="Password" required>
		  <span class="glyphicon glyphicon-lock form-control-feedback"></span>
		</div>
		<div class="row">
		  <div class="col-xs-4">
			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
		  </div>
		</div>
	  </form>
	</div>
	
	<!--Display error message from session if it exists-->
	<?php
	  if(isset($_SESSION['error'])){
		echo "
		  <div class='callout callout-danger text-center mt20'>
			<p>".$_SESSION['error']."</p> 
		  </div>
		";
		unset($_SESSION['error']);
	  }
	?>
	
  </div>

  <!--Include the scripts file-->
  <?php include 'includes/scripts.php' ?>
</body>
</html>
