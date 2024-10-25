<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="utility.DBase"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Download</title>
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
	 height:500px;
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

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin-top:50px;
  font-color:#282828;
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
  background-color: /* #045766 */ LightBlue;
}
		input[type=text]{
		  width: 80%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  box-sizing: border-box;
		  border: 3px solid #555;
		  -webkit-transition: 0.5s;
		  transition: 0.5s;
		  outline: none;
		  font-color:black;
		}
		textarea{
		  width: 80%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  box-sizing: border-box;
		  border: 3px solid #555;
		  -webkit-transition: 0.5s;
		  transition: 0.5s;
		  outline: none;
		  font-color:black;
		}
		
</style>
	
</head>

<body>
	<!-- header -->
	
				</button>
						<a class="navbar-brand" href="index.html">
							<h1>HOME</h1>
						</a>
						
					
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav navbar-right">
								<jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>	
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- header Ends -->
	<hr>
<div class="hei">
<center><h3 style="Padding-top:20px;color: red;background-color: Lightblue;font-weight:bold;">DOWNLOAD DECRPT DATA</h3></center>

<%
String fid = request.getParameter("fid");
System.out.print(fid);
String dkey = request.getParameter("deckey");
System.out.print(dkey);

Statement st = null;
	ResultSet rs = null;
String data1 = null;
	try {
		Connection con = DBase.getconnection();
		st = con.createStatement();
		String qry ="SELECT * FROM udata WHERE id='"+fid+"' AND deckey='"+dkey+"'"; 
		rs = st.executeQuery(qry);
		if (rs.next()) {
			data1 = rs.getString("data1"); 
			
		
%>


<form action="DownloadDB.jsp" method="post" autocomplete="off">
<input type="hidden" value=<%=fid%> name="fid">
	<center> <table id="customers">
		<tr><th>FID</th><td><%=fid %></td></tr>
		<tr><th>DATA</th><td><textarea rows="6" cols="10" readonly><%=data1 %>
		
		</textarea></td><td><input type="submit" value="DOWNLOAD"></td></tr>
	</table></center>
	</form>

<%
		
		} else{
			response.sendRedirect("RequestedList.jsp?st=kw");
		}
	}
	catch(Exception ex){out.println(ex);}



%>
		
	
</div>
<!-- footer -->

<!-- //bootstrap-modal-pop-up two--> 

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- flexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
					<script type="text/javascript">
						$(window).load(function(){
						  $('.flexslider').flexslider({
							animation: "slide",
							start: function(slider){
							  $('body').removeClass('loading');
							}
						  });
						});
					</script>
				<!-- //flexSlider -->
	<!-- gallery-pop-up -->
	<script src="js/lsb.min.js"></script>
	<script>
	$(window).load(function() {
		  $.fn.lightspeedBox();
		});
	</script>
<!-- //gallery-pop-up -->

<!-- Number Scroler-->
	<script src="js/numscroller-1.0.js"></script>
<!-- /Number Scroler-->
<!-- start-smoth-scrolling -->
				<script type="text/javascript" src="js/move-top.js"></script>
				<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
		<!-- start-smoth-scrolling -->
		<!-- smooth scrolling-bottom-to-top -->
				<script type="text/javascript">
					$(document).ready(function() {
					/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
						};
					*/								
					$().UItoTop({ easingType: 'easeOutQuart' });
					});
				</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				<script src="js/SmoothScroll.min.js"></script>



 



</body>

</html>