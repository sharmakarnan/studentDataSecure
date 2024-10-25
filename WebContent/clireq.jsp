<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client data request</title>

 <style>.embed-responsive .embed-responsive-item,
  .embed-responsive iframe,
  .embed-responsive embed,
  .embed-responsive object,
  .embed-responsive video {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0; }
    
     video {
  object-fit: cover;
  width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
}

html, body {
  height: 100%;
}
html {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
  font-size: 150%;
  line-height: 1.4;
}</style>
  	<title>opensource user file list</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css20/style.css">

	</head>
<body>
<video  src="video/sample.mp4" type="video/mp4" autoplay loop playsinline muted></video>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section" style="color='white'">Department User Password</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h3 class="h5 mb-4 text-center"><a  href="clienthomepg.html">Home</a></h3>
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
					    
					      <tr>
					        
					        <th>Name</th>
					        <th>Email</th>
					        <th>Mobile</th>
					        <th>Action</th>
					      </tr>
					    </thead>
					    <% 
					   
					    ResultSet rs1 = null;
					    ResultSet rs2 = null;
					    String str = null;
					    try{
					    	
					    	//String qry1 = "SELECT * FROM udata";
					    	String qry2 = "Select * from clijobdetail"; 
					    	rs1 = DBase.getconnection().createStatement().executeQuery(qry2);
					    	//rs2 = Datab.getconnection().createStatement().executeQuery(qry1);
					    		while(rs1.next())
					    		{
					    			 
					    			
					    	%>
					    <tbody>
					      
					      
					      <tr>

					    			<td><%=rs1.getString(1) %></td>
					    			<td><%=rs1.getString(2) %></td>
					    			<td><%=rs1.getString(3) %></td>
					    			
					    			<td>
										<form action="clireq1.jsp" method="post" autocomplete="off">
										<input type="submit"  value="REQUEST" class="btn btn-primary"></form>
										
									</td>
					    			</tr>
					    	
					    			<%
					    			}
					    		
					    	}catch(Exception e)
					    {
					    		System.out.println(e);
					    }
					    	%>
					   </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js20/jquery.min.js"></script>
  <script src="js20/popper.js"></script>
  <script src="js20/bootstrap.min.js"></script>
  <script src="js20/main.js"></script>
					    			

</body>
</html>