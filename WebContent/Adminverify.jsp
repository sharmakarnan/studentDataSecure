<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
   
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css13/style.css">
<style>
.divScroll {
overflow:scroll;
height:100px;
width:200px;
}
</style>
	</head>
<title>Admin Verification</title>
</head>
<body>
<form method="post" action="deptupload" enctype="multipart/form-data" autocomplete="off">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Admin View</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h4 class="text-center mb-4">Students Records</h4>
					<div class="table-wrap">
						<table class="table">
					    <thead class="thead-primary">
					      <tr>
					        <th>First Name</th>
					        <th>Last Name</th>
					        <th>Address</th>
					        <th>Email</th>
					        <th>Qualification</th>
					        <th>University</th>
					        <th>Grade</th>
					        <th>Country</th>
					        <th>Mobile Number</th>
					        <th>Date-Of-Birth</th>
					        <th>File Name</th>
					        <th>Date</th>
					        <th>Encrypt Data</th>
					        <th>Semantic Data</th>
					      </tr>
					    </thead>
					    <% 
					    ResultSet rs = null;
					    ResultSet rs1 = null;
					    Statement st= null;
					    try{
					    	String qry = "SELECT * FROM regdetails";
					    	String qry1 = "SELECT * FROM udata";
					    	String qry2 = "Select  from udata";
					    	rs = DBase.getconnection().createStatement().executeQuery(qry);
					    	rs1 = DBase.getconnection().createStatement().executeQuery(qry1);
					    	
					    	
					    		while(rs.next()&&rs1.next())
					    		{
					    			%>
					    			<tr>
					    			<td><%=rs.getString("fn") %></td>
					    			<td><%=rs.getString("ln") %></td>
					    			<td><%=rs.getString("adr") %></td>
					    			<td><%=rs.getString("mail") %></td>
					    			<td><%=rs.getString("quali") %></td>
					    			<td><%=rs.getString("uni") %></td>
					    			<td><%=rs.getString("gr") %></td>
					    			<td><%=rs.getString("country") %></td>
					    			<td><%=rs.getString("ph") %></td>
					    			<td><%=rs.getString(12) %></td>
					    		 	<td><%=rs1.getString("Fname")%></td>
					    			<td><%=rs1.getString("date") %></td> 
					    				 
					    			<td><div class="divScroll"><%=rs1.getString("enc") %></div></td>
					    			<td><%=rs1.getString(3) %></td>
					    			</tr>
					    			<%
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
		</div>
		 
	</section>

	<script src="js6/jquery.min.js"></script>
  <script src="js6/popper.js"></script>
  <script src="js6/bootstrap.min.js"></script>
  <script src="js6/main.js"></script>
</form>
<center><button type="button"><a href="Adminpage.html">LOGOUT</a></button></center>
</body>
</html>