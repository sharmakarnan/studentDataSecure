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
<title>Insert title here</title>
</head>
<body>
<%
response.setContentType("text/html");



java.util.Date now = new java.util.Date();
String date=now.toString();
String DATE_FORMAT = "dd-MM-yyyy";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
ResultSet rs = null;
try {
String qry  = "Select * from regdetails";

String sts = "requested";
rs = DBase.getconnection().createStatement().executeQuery(qry);
while(rs.next()){
	 	String fn = rs.getString(8);
	 	String ln = rs.getString(9);
	 	String mail = rs.getString(1);
	 	String ph = rs.getString(11);
	 	String qry1 = "insert into clireq values('"+fn+"','"+ln+"','"+mail+"','"+ph+"','"+strDateNew+"','"+sts+"')";
	 	
	 	
	 	PreparedStatement ps = DBase.getconnection().prepareStatement(qry1);
	 	
	int s = ps.executeUpdate();
	
	if(s>0)
	{
		%>
		<script>
		alert("Requested send to admin");
		window.location="clienthomepg.html";
		</script>
		<%
		 
	}else
	{
		%>
		<script>
		alert("Requested not send to admin");
		window.location="index.html";</script>
		<%
	}
	}}catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>