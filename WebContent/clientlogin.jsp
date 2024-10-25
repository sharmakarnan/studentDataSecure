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
<title>Client Login</title>
</head>
<body>
<%
String n = request.getParameter("Username");
String p = request.getParameter("Password");

try
{
	String qer = "Select * from clientreg where Email=? and Conpass=?";
	PreparedStatement ps = DBase.getconnection().prepareStatement(qer);
	ps.setString(1, n);
	ps.setString(2, p);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
		System.out.println("testing..");
	int i=1;
	if(i>0)
		
	{
		System.out.println("testing..");
		%>
		<script>
		alert('Login Successfull..');
		window.location='clienthomepg.html';
		</script>
		<%
	}
	else
	{
		%>
		<script>
		alert('Login Unsuccessfull..');
		window.location='Cli_Login.html';
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