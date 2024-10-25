<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Meta tag Keywords -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="keywords" content="effective register form Widget a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);

function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link rel="stylesheet" href="css15/style.css" type="text/css" media="all" /><!-- Style-CSS -->
<link rel="stylesheet" href="css15/font-awesome.min.css" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Expletus+Sans" rel="stylesheet">
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
<section class="agile-main">
	<header><h1>Educational <label>Signup</label> form</h1></header>
	<div class="agile-top">
		<h2>sign up</h2>
		<form action="RegisterController12" method="post" autocomplete="off">
			<div class="agile-user">
				<p>name</p>
				<span><i class="fa fa-user" aria-hidden="true"></i></span>
				<input type="text" name="name" placeholder="enter your name" required="">
				<div class="clear"></div>
			</div>
			<div class="agile-email">
				<p>email</p>
				<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
				<input type="email" name="email" placeholder="enter your email" required="">
				<div class="clear"></div>
			</div>
			<div class="agile-username">
				<p>Phone Number</p>
				<span><i class="fa fa-users" aria-hidden="true"></i></span>
				<input type="text" name="phone" placeholder="enter your phone number" required="">
				<div class="clear"></div>
			</div>
			<div class="agile-password">
				<p>password</p>
				<span><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
				<input type="password" name="pass" placeholder="enter your password" required="">
				<div class="clear"></div>
			</div>
			<div class="agile-cpassword">
				<p>confirm password</p>
				<span><i class="fa fa-lock" aria-hidden="true"></i></span>
				<input type="password" name="cpass" placeholder="confirm your password" required="">
				<div class="clear"></div>
			</div>
			<button type="submit" onclick="return Validate()"></button>
		</form>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	<footer></footer>
</section>
</body>
</html>