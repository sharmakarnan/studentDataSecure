<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
    <%@ page import="java.sql.*" %>
 <%@page import="utility.DBase"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,resources.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String id = request.getParameter("id"); 
/* Integer uid = (Integer)session.getAttribute("uid"); */
Integer uid = 1;
String oid = request.getParameter("uid");
String fname = request.getParameter("fname");


java.util.Date now = new java.util.Date();
String date=now.toString();
String DATE_FORMAT = "dd-MM-yyyy";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;

try
{
String sta = "Allow Access";
Connection conn =DBase.getconnection();
Statement stmt = conn.createStatement();
Statement stmt1 = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM udata WHERE uid='"+uid+"'");
ResultSet rs1 = stmt1.executeQuery("Select * from regdetails");
if(rs.next() && rs1.next()){
	/* PreparedStatement ps=conn.prepareStatement("INSERT INTO datareq(fid,fname,uid,oid,uname,uemail,uphone,date,status) VALUES('"+id+"','"+fname+"','"+uid+"','"+oid+"','"+rs1.getString("fn")+"','"+rs1.getString("mail")+"','"+rs1.getString("ph")+"','"+strDateNew+"','"+sta+"')"); */
	String q = "Update udata set status='"+sta+"'";
	int s = conn.createStatement().executeUpdate(q);
	/* int i = ps.executeUpdate(); */
	if(s>0){
	%>
	<script>
	alert("Access requested");
	window.location="Adminpage.html?st=rqd";
	</script>
	<%
	}
	
	
}


		
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>