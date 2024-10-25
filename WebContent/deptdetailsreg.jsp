<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String fname = request.getParameter("FirstName");
	String pwd =request.getParameter("Password");
	String conpass =request.getParameter("ConfirmPassword");
	String uni =request.getParameter("university");
	String clgname = request.getParameter("clgname");
	String tot = request.getParameter("tot");
	String subname = request.getParameter("subname");
	String fn =request.getParameter("FirstName");
	String ln =request.getParameter("LastName");
	String em =request.getParameter("mail");
	String ph =request.getParameter("PhoneNumber");
	String Dob =request.getParameter("dob");
	String id = null;
	String sts = "null";
String s="null";

String qry = "insert into depttbl  values ('"+id+"','"+fname+"','"+pwd+"','"+conpass+"','"+uni+"','"+clgname+"','"+tot+"','"+subname+"','"+fn+"','"+ln+"','"+em+"','"+ph+"','"+sts+"')";
PreparedStatement ps = DBase.getconnection().prepareStatement(qry);
int i = ps.executeUpdate();
if(i>0){
%>
<script>
 alert("Register Successfull");
 window.location="depthomepg.html";
 </script>
 <%
}
else
{%>
	<script>
	alert("Register successfully");
	window.location="depthomepg.html";
	</script>
	

<% 
}
}
catch(Exception ex)
{
ex.printStackTrace();
}
%>
</body>
</html>
