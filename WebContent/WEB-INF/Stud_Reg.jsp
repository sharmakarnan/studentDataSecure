<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="main">
		<h1>Student Registraion Details</h1>
		<div class="w3_agile_main_grids">
			<div class="agileits_w3layouts_main_grid">
				<form action="Studdetailsreg" method="post">
					<div class="agile_main_grid_left">
						<div class="w3_agileits_main_grid_left_grid">
							<h3>Register Here :</h3>
							
							<input type="email" name="mail" placeholder="Email" required="">
							
							<input type="password" name="Password" id="password1" placeholder="Password" required="">
							<input type="password" name="ConfirmPassword" id="password2" placeholder="Confirm Password" required="">
							
							<!-- <select id="w3_agileits_select" class="w3layouts_select" onchange="change_country(this.value)" required="">
								<option value="">Security Questions</option>
								<option value="">Question1</option>
								<option value="">Question2</option>  
								<option value="">Question3</option>							
							</select>-->
							<textarea name="Message" placeholder="Address..." required=""></textarea>
						</div>
						<div class="w3_agileits_qualifications">
							<h3>Qualifications :</h3>
							<select id="w3_agileits_select2" name="university" class="w3layouts_select" onchange="change_country(this.value)" required="">
								<option value="">Select University</option>
								<option value="MK University">Madurai Kamaraj University</option>
								<option value="Anna University">Anna University</option> 
								<option value="Bharathiyar University">Bharathiyar University</option>		
								<option value="Annamalai University">Annamalai University</option>
								<option value="Other">Other</option>							
							</select>
							<select class="w3layouts_select" name="quali" onchange="change_country(this.value)" required="">
								<option value="Post Graduation">Highest Qualification</option>
								<option value="Under Graduation">Bachelors Degree</option>
								<option value="HSC">Other</option>							
							</select>
							<select class="w3layouts_select" name="grade" onchange="change_country(this.value)" required="">
								<option value="">Grade Points</option>
								<option value="A">A</option>
								<option value="B">B</option>	
								<option value="C">C</option>
								<option value="UR">UR</option>									
							</select>
						</div>
					</div>
					<div class="agile_main_grid_left">
						<h3>Your Details :</h3>
						<input type="text" name="FirstName" placeholder="First Name" required="">
						<input type="text" name="LastName" placeholder="Last Name" required="">
						<div class="agileits_main_grid_left_l_grids">
							<div class="w3_agileits_main_grid_left_l">
								<h2>Relocation Required <span class="wthree_color">*</span></h2>
							</div>
							
							<div class="clear"> </div>
						</div>
						<select id="w3_agileits_select1" class="w3layouts_select" name="Country" onchange="change_country(this.value)" required="">
							<option value="Country">Country</option>
							<option value="America">America</option>
							<option value="Bhutan">Bhutan</option> 
							<option value="China">China</option>		
							<option value="Europe">Europe</option>
							<option value="Other">Other</option>							
						</select>
						 <input type="text" name="PhoneNumber" placeholder="Phone Number" required="">
						<input class="date" id="datepicker" type="text" name="dob" value="dd-mm-yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'dd-mm-yyyy';}" required="" >
						<div class="w3layouts_file_upload">
							<div class="w3_agileinfo_file">
								<input type="file" id="fileselect" name="fileselect[]" multiple="multiple" required="" /> 
								<h4>OR</h4>
								<div id="filedrag">drag and drop files here</div>
							</div>
							<div id="messages">
								<h4>Status Messages</h4>
							</div>
						</div>
					</div>
					<div class="clear"> </div> 
					<input type="submit" value="Submit Application">
				</form>
			</div>
		</div>
		<div class="agileits_copyright">
			
		</div>
	</div>
	<script src="js5/filedrag.js"></script>
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}
		function validatePassword(){
			var pass2=document.getElementById("password2").value;
			var pass1=document.getElementById("password1").value;
			if(pass1!=pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');	 
				//empty string means no validation error
		}
	</script>
	<!-- start-date-piker-->
		<script src="js5/jquery-ui.js"></script>
		<script>
			$(function() {
			$( "#datepicker" ).datepicker();
			});
		</script>
	<!-- //End-date-piker -->
</body>
</html>