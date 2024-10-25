<%@ page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>

<%
java.util.Date now = new java.util.Date();
String date=now.toString();
String DATE_FORMAT = "HH.mm";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now);%>
<html>
<head>
<title>Fault tolerance</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%

String fid = request.getParameter("fid");

Blob b = null;
String fname = null;
Integer count = 0;
try
{

Connection conn = DBase.getconnection();
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery("Select * from udata where id='"+fid+"'");
while(rs.next())
{
	 b = rs.getBlob("data2");
	 fname = rs.getString("Fname");
	count = rs.getInt("count");
}
//response.sendRedirect("view.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

	if(b != null)
		{
			
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("text");
			response.setHeader("Content-Disposition","attachment; fileName=\""+fname+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("document1");
			response.sendRedirect("UserHome.jsp");
		}
		else
		{
			//response.sendRedirect("cost_recharge2.jsp");
			System.out.println("null");
		}
	try
	{
	int c = count+1;
	Connection conn = DBase.getconnection();
	PreparedStatement ps = conn.prepareStatement("UPDATE udata SET count='"+c+"' WHERE id='"+fid+"'");
	int i = ps.executeUpdate();
	
	if(i>0){
		response.sendRedirect("UserHome.jsp");
	}else{
		response.sendRedirect("Download2.jsp");
	}
	
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}
	

	response.sendRedirect("UserHome.jsp");
%>

</body>
</html>