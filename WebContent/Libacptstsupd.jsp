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
<title>Library Accept code</title>
</head>
<body>
<%
String ma = request.getParameter("id");
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj1","root","root");
	String r = "Accepted";
	String q = "Update libbookdetails set sts='"+r+"' where bookid='"+ma+"'";
	int s = DBase.getconnection().createStatement().executeUpdate(q);
	
	if(s>0)
	{
	%>
		<script>
			alert('Accepted Successfully..!');
			window.location='Libraryhomepg.html';
		</script>
	<%
	}
	else{
		%>
		<script>
			alert('Request not found..!!');
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