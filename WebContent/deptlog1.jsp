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
<title>Insert title here</title>
</head>
<body>
<%
String m=request.getParameter("mail");
String p=request.getParameter("password1");

try{
	int a;
	String qer = "Select * from depttbl where em='"+m+"' and sts='"+p+"'";
	ResultSet r = DBase.getconnection().prepareStatement(qer).executeQuery();
	while(r.next()) {
		int i=1;
		if(i>0){
		%>
		<script>
 alert("Login Successfully");
 window.location="depthomepg1.html";
 </script>
		<% }
		else{
		%>
			<script>
			 alert("Login Unsuccessfully");
			 window.location="depthomepg.html";
			 </script><%
		}
	}}catch(Exception e)
{
	System.out.println(e);
	
} %>
</body>
</html>