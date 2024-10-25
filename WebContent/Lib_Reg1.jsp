<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Registration</title>
</head>
<body><%
String name = request.getParameter("Username");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String cp = request.getParameter("Conpwd");
		try
		{
			String qry = "insert into libreg (User,Emailid,Pass,Conpass) values(?,?,?,?)";
			PreparedStatement ps = DBase.getconnection().prepareStatement(qry);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pwd);
			ps.setString(4, cp);
			
			int i = ps.executeUpdate();
			if(i>0)
			{
				%>
				<script>
				alert('Register Successfull..');
				window.location='Lib_login.jsp';
				</script>
				<%
				
			}
			else
			{
				%>
				<script>
				alert('Oops! Something went wrong..');
				window.location='Lib_login.jsp';
				</script>
				<%
			}
		
		}catch(Exception exp)
		
		{
			System.out.println(exp);
		} %>
</body>
</html>