<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>not validation</title>
</head>
<body>
<%
	String em = request.getParameter("email");
	PrintWriter out1 = response.getWriter();
	ResultSet rs = null;
	
	/*try
	{
		String q1 = "SELECT * FROM regdetails where mail!='"+em+"'";
		 rs = DBase.getconnection().createStatement().executeQuery(q1);
	int rs2=Integer.parseInt(rs);
	if(rs2>0)
	{
		out1.print("<html><body><script>alert('Incorrect Email id');</script></body></html>");
		RequestDispatcher rs1 = request.getRequestDispatcher("Clivalid.jsp");
		rs1.include(request, response);
		
	}
	else
	{
		response.sendRedirect("Clirecdetails.jsp");
	}
	}catch(Exception e){
		e.printStackTrace();
	}*/
	
	 %>
	 
</body>
</html>