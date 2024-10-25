<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
}
 #overflowTest {

  color: red;
  padding: 15px;
  width: 80%;
  height: 80px;
  overflow: scroll;
  border: 1px solid #ccc;
}
</style>
  	<title>stud view book list</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css20/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<video src="video/sample.mp4" type="video/mp4" autoplay loop playsinline muted></video>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section" style="color='white'">Book List</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h3 class="h5 mb-4 text-center"><a  href="Studhomepg.html">Home</a></h3>
					<%-- <center>
					<form method="post" action="userbackupqryform.jsp">
        	<!-- <a style="color:yellow;"><button style="color:red;background-color:yellow;padding:10px 20px;border-radius:18px;font-size:17px;font-weight:15px;"> -->
            		<h4 class="h5 mb-4 text-center"><a style=" background-color:white; " href="userbackupqryform.jsp" >REQUEST BACKUP >></a></h4> 
			<!-- </button></a> -->
			</form></center> --%>
					
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						  <tr>
        <th>
        Book ID
        </th>
        <th>
         Book Title
        </th>
        <th>
        Author
        </th>
        <th>
        Year
        </th>
        <th>
        Year 
        </th>
        <th>
        Edition
        </th>
        <th>
        Status
        </th>
        <th>Action</th>
      </tr>
       <% 
     			
     			HttpSession session1 = request.getSession();
     			
				ResultSet rs1 = null;
					 
				String str = null,id=null,fname=null,uid=null;
				try{
				 	
				  	//String qry1 = "SELECT * FROM udata";
				  	String qry2 = "Select * from libbookdetails"; 
				  	rs1 = DBase.getconnection().createStatement().executeQuery(qry2);
				  
				  	//rs2 = Datab.getconnection().createStatement().executeQuery(qry1);
				 		while(rs1.next())
				  		{
				  			%>
				  			<tbody>
      <tr>
        <td data-title='Provider Name'><a name="id" >
          <%=rs1.getString(2) %></a>
        </td>
        <td data-title='E-mail'>
		  	 <%=rs1.getString(3) %>
		  	 
        </td>
        <td>
           <%=rs1.getString(4) %>
       
        </td>
         <td>
           <%=rs1.getString(5) %>
        </td>
         <td>
           <%=rs1.getString(6) %>
       
        </td>
         <td>
           <%=rs1.getString(7) %>
        </td>
        <td>
           <%=rs1.getString(8) %>
        </td>
        <td>
        <form method="post" action="Libstudstsupd.jsp">
        <input type="hidden" name="id" value="<%=rs1.getString(2)%>">
        	<a style="color:yellow;"><button style="color:yellow;background-color:blue;padding:10px 20px;border-radius:18px;font-size:17px;font-weight:15px;">
            Request
			</button></a>
			</form></td>
        
        <%-- <td  data-title='Provider Name'>
        	 <%=rs1.getString("status1") %>
        </td> --%>
		</tr>
      				<%
					    }
					    		
					    	}catch(Exception e)
					    {
					    		System.out.println(e);
					    }
					    	%></tbody></table>
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