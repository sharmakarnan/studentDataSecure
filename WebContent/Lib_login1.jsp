<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Login</title>
</head>
<body>
<%

String m=request.getParameter("name");
String p=request.getParameter("password");

try{
	int a;
	String qer = "Select * from libreg where Emailid='"+m+"' and Conpass='"+p+"'";
	ResultSet r = DBase.getconnection().prepareStatement(qer).executeQuery();
	
	while(r.next()) {
		int i=1;
		if(i>0){
		%>
		<script>
 			alert("Login Successfully");
 			window.location="Libraryhomepg.html";
 		</script>
		<% }
		else{
		%>
			<script>
			 alert("Login Unsuccessfully");
			 window.location="index.jsp";
			 </script><%
		}
	}}catch(Exception e)
{
	System.out.println(e);
	
} %>
</body>
</html>