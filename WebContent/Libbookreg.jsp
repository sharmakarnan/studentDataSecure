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
<title>Library Book Details</title>
</head>
<body>
<%

String dt =request.getParameter("dept");
String bkid =request.getParameter("bookid");
String bt =request.getParameter("booktitle");
String authname =request.getParameter("authname");
String yr =request.getParameter("year");
String edi =request.getParameter("edi");
String sub =request.getParameter("sub");
;
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj1","root","root");
	String r = "Pending";
	PreparedStatement ps=con1.prepareStatement("insert into libbookdetails values(?,?,?,?,?,?,?,'"+r+"')");
	
	
	ps.setString(1,dt);
	ps.setString(2,bkid);
	ps.setString(3,bt);
	ps.setString(4,authname);
	ps.setString(5,yr);
	ps.setString(6,edi);
	ps.setString(7,sub);
	
	
	int i = ps.executeUpdate();
	
	if(i>0)
	{
	%>
		<script>
			alert('Updated Successfully..!!');
			window.location='Libraryhomepg.html';
		</script>
	<%
	}
	else{
		%>
		<script>
			alert('Oops! Something went wrong!!');
			window.location('Libraryhomepg.html');
		</script>
	<%
		
	}
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>