<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Job Application Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- /font files -->
<!-- css files -->
<link href="css16/style.css" rel='stylesheet' type='text/css' media="all" />
<link rel="stylesheet" href="css16/j-forms.css">

<!-- /css files -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<style>
.button {
  background-color:yellow;
  border: none;
  color: red;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {border-radius: 20%;}
</style>
<body>
<%
	String em = request.getParameter("email");
	PrintWriter out1 = response.getWriter();
	ResultSet rs = null;
	String s1 = null;
	String s2 = null;
	String s3 = null;
	String s4 = null;
	String s5 = null;
	String s6 = null;
	String s7 = null;

	try
	{
		
		String q1 = "SELECT * FROM regdetails where mail='"+em+"'";
		
		rs = DBase.getconnection().createStatement().executeQuery(q1);
		while(rs.next())
		{
			
			 s1 = rs.getString(1);
			 s2 = rs.getString(8);
			 s3 = rs.getString(11);
			 s4 = rs.getString(4);
			 s5 = rs.getString(5);
			 s6 = rs.getString(6);
			 s7 = rs.getString(10);
		}
		
			//out1.print("<html><body><script>alert('Incorrect Email id');</script></body></html>");
			//response.sendRedirect("Cli_Login.html");
			//response.getOutputStream().print("<html><body><script>alert('Incorrect Email id');</script></body></html>");
			//request.getRequestDispatcher("Cli_Login.jsp").include(request, response);
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>
<h1 class="header-w3ls">Job Application Form</h1>
<div class="content-w3ls">
	<div class="form-w3ls">
		<form action="Clijob" method="post" autocomplete="off">
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
						<label class="header">Name <span>*</span></label>
						<input type="text" id="name" name="name" placeholder="Name" value="<%=s2 %>" title="Please enter your Full Name" required="">
						
					</div>
		
					<div class="form-control">	
						<label class="header">Email <span>*</span></label>
						<input type="email" id="email" name="email" placeholder="Mail@example.com"  value="<%=s1%>" title="Please enter a Valid Email Address" required="">
					</div>
					<div class="form-control"> 
						<label class="header">Phone <span>*</span></label>
						<input type="text" id="name" name="phone" placeholder="Phone"  value="<%=s3 %>" title="Please enter your Phone No" required="">
					</div>
				
				<div class="form-control"> 
						<label class="header">Address <span>*</span></label>
						<input type="text" id="name" name="Adr" placeholder="Address" value="<%=s4 %>" title="Please enter your Phone No" required="">
					</div>
				</div>
				<div class="form-control"> 
						<label class="header">Qualification<span>*</span></label>
						<input type="text" id="name" name="qly" placeholder="Qualification"  value="<%=s6 %>"title="Please enter your Phone No" required="">
					</div>
				</div>
				<div class="form-control"> 
						<label class="header">University<span>*</span></label>
						<input type="text" id="name" name="un" placeholder="University"  value="<%=s5 %>"title="Please enter your Phone No" required="">
					</div>
				</div>
				<div class="form-control"> 
						<label class="header">Country<span>*</span></label>
						<input type="text" id="name" name="ctry" placeholder="Country"  value="<%=s7 %>"title="Please enter your Phone No" required="">
					</div>
			
				<div class="form-control">
				<div class="main-row">
						<label class="header">What position are you applying for? <span>*</span></label>
							<select name="job">
								<option value="none" name="job1" selected="" disabled="">--Please Select--</option>
								
								<option value="Information Tech" name="job1">IT</option>
								<option value="Digital Marketing" name="job1">Digital Marketing</option>
								<option value="Part-Time Job" name="job1">Part-Time Jobs</option>
								
							</select>
							<i></i>
						
					</div>
					</div>
			
			<div class="content-wthree2">
				<div class="grid-w3layouts1">
					<div class="w3-agile1">
						<label class="rating">Select your Expected CTC<span>*</span></label>
						<ul>
							<li>
								<input type="radio" id="a-option" name="selector1" value="2.5L">
								<label for="a-option" name="sel">2.5L CTC </label>
								<div class="check"></div>
							</li>
							<li>
								<input type="radio" id="b-option" name="selector1" value="3.0L">
								<label for="b-option" name="sel">3.0L CTC</label>
								<div class="check"><div class="inside"></div></div>
							</li>
							<li>
								<input type="radio" id="c-option" name="selector1" value="4.5L">
								<label for="c-option" name="sel">4.5L CTC</label>
								<div class="check"><div class="inside"></div></div>
							</li>
							<li>
								<input type="radio" id="d-option" name="selector1" value="5.0L">
								<label for="d-option" name="sel">5L CTC</label>
								<div class="check"></div>
							</li>
						
						</ul>
					</div>
						</div>
				</div>
				
				<div class="clear"></div>
			
		
				<div class="w3ls-btn">
					<div class="contact-forms">
					<label class="rating">Upload your resume</label>
						<label class="input append-small-btn">
								<div class="upload-btn">
									Upload
									<input type="file" name="file1" onchange="document.getElementById('file1_input').value = this.value;">
								</div>
						</label>
						<center><table>	<tr><td>
				<div class="wthreesubmitaits">
					<center><input type="submit" name="submit" value="SUBMIT"></center>
				</div></td>
				<td>
				<td><!-- <div class="wthreesubmitails"> -->
					<button class="button button5"><a href="clireq.jsp">Request</a></button>
				</td> 
			    <td><span class="input-group-btn">
                   <button class="button button5">Log out</button>
                 </span></td>
                </table></center>  </div></div>
				</form>
					
					</div>
					</div>
	</div>
	</div>
	
</div>




</body>
</html>