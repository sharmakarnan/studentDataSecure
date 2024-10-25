<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student book request based on id</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Job Application Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- /font files -->
<!-- css files -->
<link href="css111/style.css" rel='stylesheet' type='text/css' media="all" />
<link rel="stylesheet" href="css111/j-forms.css">

<!-- /css files -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

</head>
<h1 style="background-color:yellow;color:red;text-align:center;"><b> Student Request </b></h1>
<body>
<div class="content-w3ls">
	<div class="form-w3ls">
	 <%-- <% 
     			
     			HttpSession session1 = request.getSession();
     			
				ResultSet rs1 = null;
					 
				String str = null,id1=null,data=null,key=null,uid1=null,fid1=null;
				
				String id = request.getParameter("id");
				String fid = request.getParameter("fn");
				String uid = request.getParameter("uid");
				 
				try{
					
				  	//String qry1 = "SELECT * FROM udata";
				  	String qry2 = "Select * from encryptdetails1 where fid='"+id+"'"; 
				  	rs1 = DBase.getconnection().createStatement().executeQuery(qry2);
				  	String test = rs1.toString();
				  
				  		
				  	while(rs1.next()){
				  		
				  		//rs2 = Datab.getconnection().createStatement().executeQuery(qry1);
				  			//id = (String) session1.getAttribute("fid");
				  			//fname = (String) session1.getAttribute("fn");
				  			//uid = (String) session1.getAttribute("uid");
				 		}
				  	
	}
	catch(Exception ex){ex.printStackTrace();}

%> --%>

		<form action= "studlibtbl1.jsp" method="post">
			<div class="content-wthree1">
				<div class="grid-agileits1">
		
					<div class="form-control">	
					<!-- <input type="hidden" value= name="fid"> -->
						<label class="header" >Book ID<span>*</span></label>
						<input type="text"  name="id" placeholder="Enter Book ID" required="">
					</div>	
				
				<div class="wthreesubmitaits">
					<button><a style="color:red;font-weight:bold;font-size:20px;">CHECK</a></button>
				</div>
				<%
				HttpSession session1 = request.getSession();
     			
				ResultSet rs1 = null;
					 
				String str = null,id1=null,data=null,key=null,uid1=null,fid1=null;
				
				String id = request.getParameter("id");
				 
				try{
					
				  	//String qry1 = "SELECT * FROM udata";
				  	String qry2 = "Select * from libbookdetails where bookid='"+id+"'"; 
				  	rs1 = DBase.getconnection().createStatement().executeQuery(qry2);
				  	String bid = rs1.getString(3);
				  	System.out.println(bid);
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				%>
				<div class="wthreesubmitaits">
					<button><a href="Libraryhomepg.html" style="color:red;font-weight:bold;font-size:20px;">HOME</a></button>
				</div>
				</form>	
			</div>
		</div>
	
</body>
</html>