<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Status</title>
		<!--/metadata -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="keywords" content="Corp Deal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
	<link href="css/lsb.css" rel="stylesheet" type="text/css"><!-- gallery -->

	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
	<style>
	 /* body  {
	 background-image: url("images/customer1.png");
	 background-repeat: no-repeat; 
	 background-attachment: fixed;
	 background-position: center; 
	 background-size: auto ; 
	}  */
	.hei{
	 height:600px;
	 background-image: url("images/Edureg.jpg");
	 background-repeat: no-repeat; 
	 background-attachment: fixed;
	 background-position: center; 
	 background-size: 100% ;
	
	}
	hr { 
  display: block;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  margin-left: auto;
  margin-right: auto;
  border-style: inset;
  border-width: 1px;
} 

</style>

	<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top:50px;
}

#customers td, #customers th {
  border: 1px solid #282828 ;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:  #f2f2f2 ;}
#customers tr:nth-child(odd){background-color:  #f2f2f2 ;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: /* #045766 */ #ff4f81;
  color: white;
}
</style>
	
</head>

<body>
	<!-- header -->
						<a href="clienthomepg.html">
							<center><h1>HOME</h1></center>
						</a>
					</div>
					<!--/.navbar-header-->
					
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- header Ends -->
	<hr>
<div class="hei">
<c:if test="${param.st eq 'kw'}">
						
						</c:if>
						
<center><h3 style="Padding-top:20px;color: red;background-color: Lightblue;font-weight:bold;">REQUESTED DATA</h3></center>

<table id="customers">
       <thead>  
          <tr> 
          <th>S.No</th>
             <th>FILE ID</th>
            <th>FILE NAME</th>
            <th>REQUESTED DATE</th>
            <th>STATUS</th>
            <th>KEY</th>
            <th>ACTION</th>
          </tr>
          </thead>
             <%
            /*  Integer oid = (Integer)session.getAttribute("uid"); */  
         		Integer oid = 1;
             	Statement st = null;
             	ResultSet rs = null; 
             	ResultSet rs1 = null; 
             	int part = 0;
             	String part1 = null;
             	String id1 = null;
             	try {
             		Connection con = DBase.getconnection();
             		st = con.createStatement();
             		/* String qry ="SELECT * FROM datareq WHERE uid='"+oid+"'"; */ 
             		String qry1 = "select * from udata";
             		/* rs = st.executeQuery(qry); */
             		rs1 = DBase.getconnection().prepareStatement(qry1).executeQuery();
             		int k = 1;
             		while (/* rs.next() &&*/rs1.next()) {
             			 String uid = rs1.getString("uid");
             			String fid = rs1.getString("id"); 
             %>
	  <tbody>
	     <tr> 
	        <td><%out.print(k); %></td>
            <td> <%=rs1.getString("id")%> </td>
             <td> <%=rs1.getString("fname")%> </td>
           <td> <%=rs1.getString("date")%> </td>
           <td> <%=rs1.getString("status")%> </td>
           <td> <%=rs1.getString("deckey")%> </td>
          <td>
          <a href="Download.jsp?data=<%=uid %>&fid=<%=fid %>" style="color:red;font-weight:bold;font-size:15px;">DOWNLOAD</a></td>
          </tr>
	<%	
	k++;
	}
	
}
catch(Exception ex){out.println(ex);}



%>
       </tbody>
          </table>     
	
	
</div>
<!-- footer -->





</body>

</html>