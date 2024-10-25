<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student data</title>
</head>
<body>
<!doctype html>
<html lang="en">
  
<head>
  	
<title>Educational Department</title>
  
  <meta charset="utf-8">
   
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css13/style.css">

	</head>
	<body>
	<section class="ftco-section">
	<form action="index.html" method="post" autocomplete="off">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Educational Department</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h4 class="text-center mb-4">Students Records</h4>
					<div class="table-wrap">
						<table class="table">
					    <thead class="thead-primary">
					      <tr>
					        <th>Name</th>
					        <th>Email</th>
					        <th>Phone</th>
					        <th>City</th>
					        <th>Job</th>
					        <th>CTC</th>
					      </tr>
					    </thead>
					    <% 
					    ResultSet rs = null;
					    Statement st= null;
					    
					    try{
					    	String qry = "SELECT * FROM clijobdetail";
					    	rs = DBase.getconnection().createStatement().executeQuery(qry);
					    	
					    	if(rs.next())
					    	{
					    		while(rs.next())
					    		{
					    			%>
					    			<tr>
					    			<td><%=rs.getString("name") %></td>
					    			<td><%=rs.getString("email") %></td>
					    			<td><%=rs.getString("phone") %></td>
					    			<td><%=rs.getString("state") %></td>
					    			<td><%=rs.getString("job") %></td>
					    			<td><%=rs.getString("ctc") %></td>
					    			</tr>
					    			
					    			<%
					    		}
					    		}
					    	}catch(Exception e)
					    {
					    		System.out.println(e);
					    }
					    
					    	%>
					    	
					  </table>				    			
					    			
					</div>
				</div>
			</div>
		</div><center><button type="button"><a href="Adminpage.html">HOME</a></button></center>
		
	</section>

	<script src="js6/jquery.min.js"></script>
  <script src="js6/popper.js"></script>
  <script src="js6/bootstrap.min.js"></script>
  <script src="js6/main.js"></script>

	</body>
</html>

