<?php
	include 'includes/session.php';
	define('EMAIL', 'pspk2425.gabbar@gmail.com');
	define('PASS', '');


	if(isset($_POST['add'])){
		$firstname = $_POST['firstname'];include 'includes/session.php';
		define('EMAIL', 'pspk2425.gabbar@gmail.com');
		define('PASS', '');
		
		// Load SMTP credentials from environment variables
		$smtp_host = getenv('SMTP_HOST');
		$smtp_port = getenv('SMTP_PORT');
		$smtp_username = getenv('SMTP_USERNAME');
		$smtp_password = getenv('SMTP_PASSWORD');
		
		if (isset($_POST['add'])) {
			// Rest of your code...
		
			$mail = new PHPMailer;
		
			$mail->isSMTP();
			$mail->Host = $smtp_host;
			$mail->Port = $smtp_port;
			$mail->SMTPAuth = true;
			$mail->Username = $smtp_username;
			$mail->Password = $smtp_password;
			$mail->SMTPSecure = 'tls';
		
			// Rest of your code...
		
			if (!$mail->send()) {
				echo 'Message could not be sent.';
				echo 'Mailer Error: ' . $mail->ErrorInfo;
			} else {
				echo 'Message has been sent';
			}  
		} else {
			$_SESSION['error'] = 'Fill up add form first';
		}
		
		header('location: voters.php');
		
		$hashed_firstname = password_hash($_POST['firstname'],PASSWORD_DEFAULT);
		$lastname = $_POST['lastname'];
		$hashed_lastname = password_hash($_POST['lastname'],PASSWORD_DEFAULT);
		$email = $_POST['email'];
		$unhashed_password = $_POST['password'];
		$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		$filename = $_FILES['photo']['name'];
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
		}
		//generate voters id
		$set = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$voter = substr(str_shuffle($set), 0, 8);

		$sql = "INSERT INTO voters (voters_id, password, firstname, lastname, photo, email) VALUES ('$voter', '$password', '$firstname', '$lastname', '$filename','$email')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Voter added successfully';
		require 'phpmailer/PHPMailerAutoload.php';
		require 'phpmailer/class.phpmailer.php';
		require 'phpmailer/class.smtp.php';

		$mail = new PHPMailer;

		$mail->isSMTP();                                      // Set mailer to use SMTP
		$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
		$mail->SMTPAuth = true;                               // Enable SMTP authentication
		$mail->Username = EMAIL;                 // SMTP username
		$mail->Password = 'ffoqauwkrqkqlwll';                           // SMTP password
		$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
		$mail->Port = 587;                                    // TCP port to connect to

		$mail->setFrom(EMAIL, 'Gymkhana Elections');
		$mail->addAddress($email);     // Add a recipient
		// $mail->addAddress('ellen@example.com');               // Name is optional
		$mail->addReplyTo(EMAIL);
		


		$mail->isHTML(true);                                  // Set email format to HTML

		$mail->Subject = 'Your Voter Credentials';
		$mail->Body    = '<div><h3>Voter ID :</h3>'.$voter.'<br><h3>Password :</h3>'.$unhashed_password	.'</div>';
		$mail->AltBody = 'Voter ID : ${voter}\n\nPassword:{$password}';
		if(!$mail->send()) {
			echo 'Message could not be sent.';
			echo 'Mailer Error: ' . $mail->ErrorInfo;
		} else {
			echo 'Message has been sent';
		}	
	}else{
		$_SESSION['error'] = $conn->error;
	}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: voters.php');
?>