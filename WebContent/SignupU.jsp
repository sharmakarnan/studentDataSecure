<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>

<!DOCTYPE html>
<html>
<head>
<title>SignUp/SignIn</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smooth Sliding Forms template Responsive, Login form web template,Flat Pricing w3tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/css1/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->

<!-- font-awesome icons -->
<link href="css/css1/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->

<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Cormorant+Unicase:300,400,500,600,700" rel="stylesheet"><!--web font-->
<!-- //web font -->
<style type="text/css">
body  {
	 background-image: url("images/signdb4.jpg");
	 background-repeat: no-repeat; 
	 background-attachment: fixed;
	 background-position: center; 
	 background-size: 100% ; 
	 }

</style>

<script type="text/javascript">
function checkPass()
{
    //Store the password field objects into variables ...
    var password = document.getElementById('pas1');
    var confirm  = document.getElementById('pas2');
    //Store the Confirmation Message Object ...
    var message = document.getElementById('confirm-message2');
    //Set the colors we will be using ...
    var good_color = "#006400";
    var bad_color  = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if((password.value.length>7)&&(confirm.value.length>7))
    {
   		 if(password.value == confirm.value)
    	{
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        //confirm.style.backgroundColor = good_color;
        message.style.color           = good_color;
        message.innerHTML             = 'Passwords Match!';
        return true;
    	}
    	else
    	{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        //confirm.style.backgroundColor = bad_color;
        message.style.color           = bad_color;
        message.innerHTML             = 'Passwords Does Not Match!';
    	return false;
    	}
}  
}

function Validate() {
    var password = document.getElementById("pas1").value;
    var confirmPassword = document.getElementById("pas2").value;
    if (password != confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}

function validate(evt) {
	  var theEvent = evt || window.event;

	  // Handle paste
	  if (theEvent.type === 'paste') {
	      key = event.clipboardData.getData('text/plain');
	  } else {
	  // Handle key press
	      var key = theEvent.keyCode || theEvent.which;
	      key = String.fromCharCode(key);
	  }
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	};


</script>



</head>
<body>
				<c:if test="${param.st eq 'reg2'}">
						<p class="info"><img src="images/info.png" width="30" height="30"> Email Id Already exists</p>
						</c:if>
	<!-- main -->
	<div class="main agileits-w3layouts">
		<h1>DATA User Sign Up</h1>
		<div class="main-agileinfo"> 
			<div class="agileui-forms">
				<div class="container-form">
					<div class="form-item log-in"><!-- login form-->
						<div class="w3table agileinfo"> 
							<div class="w3table-cell register"> 
								<div class="w3table-tophead">
									<h2>Sign in</h2>
								</div>
								<form action="LoginControl1" method="post" autocomplete="off"> 
									<div class="fields-grid">
										<div class="styled-input agile-styled-input-top">
											<input type="text" name="em" required=""> 
											<label>Email</label>
											<span></span>
										</div>
										<div class="styled-input">
											<input type="Password" name="pw" required="">
											<label>Password</label>
											<span></span>
										</div>
									<!-- 	<a href="#">forgot password?</a>		 -->								
										<input type="submit" value="Sign in"> 
									</div>
									<!-- <div class="social-grids">
										<div class="social-text">
											<p>Or Sign in with</p>
										</div>
										<div class="social-icons">
											<ul>
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-rss"></i></a></li>
											</ul>
										</div>
										<div class="clear"> </div>
									</div> -->

								</form>  
							</div>
						</div>
					</div>
					
					<!--  -->
					
					<div class="form-item sign-up"><!-- sign-up form-->
						<div class="w3table w3-agileits">
							<div class="w3table-cell register">   
									<h3>Sign up</h3>
								<form action="RegisterController12" method="post" autocomplete="off">
									<div class="fields-grid">
										<div class="styled-input agile-styled-input-top">
											<input type="text" name="name" required=""> 
											<label>Name</label>
											<span></span>
										</div>
										<div class="styled-input">
											<input type="email" name="email" required="">
											<label>Email</label>
											<span></span>
										</div>
										<div class="styled-input">
											<input type="tel" name="phone" required="" MAXLENGTH="10" onkeypress='validate(event)'>
											<label>Phone Number</label>
											<span></span>
										</div>
										<div class="styled-input">
											<input type="password" name="pass" required="" id="pas1" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
											<label>Password</label>
											<span></span>
										</div>
										<div class="styled-input">
											<input type="password" name="cpass" required="" id="pas2" onkeyup="checkPass();" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
											<label>Confirm Password</label>
											<span></span>
										</div>
										<div class="clear"> </div>
<!-- 										 <label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>I agree to the <a href="#">Terms and Conditions</a></label>
 -->									</div>
									<input type="submit" value="Sign up" onclick="return Validate()">
								</form>

							</div>
						</div>
					</div>
				</div>
				<div class="container-info">
					<div class="info-w3lsitem">
						<div class="w3table">
							<div class="w3table-cell">
								<p> Have an account? </p>
								<div class="btn"> Sign in </div>
								<br>
								<div class="btn"><a href="index.jsp" style="color:white;">Home</a> </div>
							</div>
						</div>
					</div>
					<div class="info-w3lsitem">
						<div class="w3table">
							<div class="w3table-cell">
								<p> Dont have an account?</p>
								<div class="btn">Sign up</div>
								<br>
								<div class="btn"><a href="index.jsp" style="color:white;">Home</a> </div>
							</div>
						</div>
					</div>
					<div class="clear"> </div>
				</div> 
				
				
			</div> 
		</div>	
	</div>   
	<!-- //main -->
	<!-- copyright -->
	<div class="copyw3-agile">
		<!-- <p> © 2017 Smooth Sliding Forms . All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts.</a></p> -->
	</div>
	<!-- //copyright --> 
	<!-- js -->  
	<script  src=" js/js1/jquery-1.12.3.min.js"></script> 
	<script>
		$(".info-w3lsitem .btn").click(function() {
			  $(".main-agileinfo").toggleClass("log-in");
			});
			$(".container-form .btn").click(function() {
			  $(".main-agileinfo").addClass("active");
		});
	</script>
	<!-- //js --> 
</body>
</html>