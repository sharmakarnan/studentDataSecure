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
<title>Department ID request</title>
</head>
<body>
<%
try
{
	
	String str2 = "Requested";
	
	String em = request.getParameter("em");
	System.out.println(em);
	response.setContentType("text/html");  

	String qur = "update depttbl set sts='"+str2+"' where em='"+em+"'";
	int i = DBase.getconnection().prepareStatement(qur).executeUpdate();	
	if(i>0){
		%>
	<script>
		 alert("Requested Successfully");
 		window.location="depthomepg.html";
 	</script>
	 <%
	}
	 else
 	{%>
	<script>
 		alert("Oops! Something went wrong");
 		window.location="depthomepg.html";
 	</script> 
 	<%}}catch(Exception ex)
 	{
		 ex.printStackTrace();
	 }
	 %>
</body>
</html>