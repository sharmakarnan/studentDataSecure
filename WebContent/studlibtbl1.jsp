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
<title>Student request coding</title>
</head>
<body>
<%
String mail = request.getParameter("mail");
System.out.println(mail);
String pwd =request.getParameter("Password");
String conpass =request.getParameter("ConfirmPassword");
String adr =request.getParameter("Message");
String uni =request.getParameter("university");
String quali =request.getParameter("quali");
String gr =request.getParameter("grade");
String fn =request.getParameter("FirstName");
String ln =request.getParameter("LastName");
String country =request.getParameter("Country");
String ph =request.getParameter("PhoneNumber");
String Dob =request.getParameter("dob");

try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj1","root","root");
	String id = request.getParameter("id");
	String qry = "update set libbookdetails where bookid='"+id+"'";
	int i = DBase.getconnection().createStatement().executeUpdate(qry);
	
	if(i>0)
	{
		%>
		<script>
		alert('Requested Successfull..');
		window.location='Libraryhomepg.html';
		</script>
		<%		out.print("<html><body><script>alert('Requested Successfull..');</script></body></html>");
		
		RequestDispatcher rs = request.getRequestDispatcher("Libraryhomepg.html");
		rs.include(request, response);
	
		
	
	%>
			<script>
		alert('Requested Successfull..');
		window.location='Libraryhomepg.html';
		</script>	
	<%}
	else
	{
		out.print("<html><body><script>alert('Oops! Something went wrong...');</script></body></html>");
		RequestDispatcher rs = request.getRequestDispatcher("Libraryhomepg.html");
		rs.include(request, response);
		response.sendRedirect("Studupload.jsp");
		
	}
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>