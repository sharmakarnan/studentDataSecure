<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css18/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css18/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css18/style.css">

    <title>Student Details</title>
    <style type="text/css">
    #overflowTest {
  color: white;
  padding: 15px;
  width: 100%;
  height: 100px;
  overflow: scroll;
  border: 1px solid #ccc;
}

.button {
  background-color:yellow;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {
  background-color:yellow;
  border: none;
  color: red;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {border-radius: 50%;}
.button6 {border-radius: 30%;}
    </style>
  </head>
  <body>
  
  <div class="content">
    
    <div class="container">
      <h2 class="mb-5"><center>Student Details</center></h2>
      

      <div class="table-responsive">
<center><button class="button button5"><a href="Studhomepg.html">HOME</a></button></center>
        <table class="table table-striped custom-table">
          <thead>
            <tr>
              <th scope="col">File ID</th>
              <th scope="col">File Name</th>
              <th scope="col">Encrypt Data</th>
            <!--   <th scope="col">Decrypt Key</th> -->
             <th scope="col">Date</th>	

    
            </tr>
          </thead>
          <tbody>
          <%
						
								ResultSet r=null;
					     		String cid=null;
					     	//	session.setAttribute("clid", cid);
						     // Statement st = null;
						    //String nut=null;
						     
							try
						    {
								String qry4 = "SELECT * FROM udata";
								r = DBase.getconnection().createStatement().executeQuery(qry4);
								while(r.next())
								{
									
									   %>
            <tr scope="row">

                      <td>
                       <%=r.getString(1) %>
                      </td>
                      <td><%=r.getString(5) %></td>
                      <td>
                      <div id="overflowTest"> <%=r.getString(11) %> </div>
                        <!-- <small class="d-block">Far far away, behind the word mountains</small> -->
                      </td>
                    <%--   <td><%=r.getString(12) %><small class="d-block">Please Copy Decrypted key</small></td> --%>
                      <td><%=r.getString(10) %></td>
                   
                      
                    <th scope="row" class="scope" >
                      <!-- <td><a href="#" class="more">Download</a></td> -->
                        <%--  <form action="studreq" method="post" >
                         	<input type="hidden" name="fileid" values="<%=r.getString(1) %>">
                	       <input type="hidden" name="fname" values="<%=r.getString(5) %>">
                	         <td><a class="more"><input type="submit" value="Request" class="btn btn-primary" ></a></td>
                	         <td><button class="btn btn-primary" ><a href="studdatacheck">Check</a></button></td>
                         </form> --%></th>
            </tr>
            <%
									}							
									
							    }
							    catch(Exception e)
							    {
							    	e.printStackTrace();
							    }
								
								
								%>
          </tbody>
        </table>
      </div>


    </div>

  </div>
    
    

    <script src="js0/jquery-3.3.1.min.js"></script>
    <script src="js0/popper.min.js"></script>
    <script src="js0/bootstrap.min.js"></script>
    <script src="js0/main.js"></script>
  </body>
</html>