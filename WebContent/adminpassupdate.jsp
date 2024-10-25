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
<title>Admin Password Update</title>
</head>
<body>
<%
try
{
	String str =request.getParameter("pass");
	String str2 = "Your Password is "+ str;
	
	String em = request.getParameter("mail");
	response.setContentType("text/html");  


	String qur = "update depttbl set sts='"+str+"' where em='"+em+"'";
	int r = DBase.getconnection().prepareStatement(qur).executeUpdate();
	
if(r>0){
%>
<script>
 alert("Password Sended");
 window.location="Adminpage.html";
 </script>
 <%
}
 else
 {%>
	<script>
 alert("Password not Sended");
 window.location="Adminpage.html";
 </script> 
 <%}}catch(Exception ex)
 {
	 ex.printStackTrace();
	 }
 %>
</body>
</html>