<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student record delete</title>
</head>
<body>
<%
String m=request.getParameter("mail");


try{
//	int a;
	String qry = "Delete from regdetails where mail='"+m+"'";
	int rs = DBase.getconnection().prepareStatement(qry).executeUpdate();
	if(rs>0){
		%>
		<script>
 			alert("Record Deleted successfully");
 			window.location="depthomepg.html";
	    </script>
		<% }
		else{
		%>
			<script>
			 alert("Oops! Somthing went wrong");
			 window.location="index.html";
			 </script><%
		}
	}catch(Exception e){System.out.println(e);} 
	%>
</body>
</html>