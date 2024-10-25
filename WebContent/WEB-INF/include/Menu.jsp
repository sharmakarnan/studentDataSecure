<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>


<!-- CLOUD -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==1}">
<!-- CLOUD Menu -->
								<li class="active"><a href="index.html" class="effect-3 ">Home</a></li>
								<li><a href="ownersC.jsp" class="effect-3 ">USERS</a></li>
								<li><a href="usersC.jsp" class="effect-3 ">USER DATA</a></li>
								<li><a href="donorC.jsp" class="effect-3 ">DONOR DATA</a></li>
								<li><a href="Logout.jsp" class="effect-3 ">Logout</a></li>
</c:if>

<!-- OWNER -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==3}">
<!-- OWNER is logged in : Employee Menu -->
							<li class="active"><a href="OwnerHome.jsp" class="effect-3 ">Home</a></li>
								<li><a href="Upload.jsp" class="effect-3 ">Upload</a></li>
								<li><a href="UploadSta.jsp" class="effect-3 ">Cloud Data</a></li>
								<li><a href="RequestList.jsp" class="effect-3 ">Key Requets</a></li>
								<li><a href="Logout.jsp" class="effect-3 ">Logout</a></li>
</c:if>

<!-- USER -->
 <c:if test="${sessionScope.uid!=null && sessionScope.Role==2 }">
<!-- USER is logged in : USER Menu -->
								<li class="active"><a href="UserHome.jsp" class="effect-3 ">Home</a></li>
								<li><a href="UserSearch.jsp" class="effect-3 ">Search</a></li>
								<li><a href="RequestedList.jsp" class="effect-3 ">Requested</a></li>
								<li><a href="Logout.jsp" class="effect-3 ">Logout</a></li>
</c:if>

<!-- PROVIDER -->
 <c:if test="${sessionScope.Role==4 }">
<!-- PROVIDER is logged in : USER Menu -->
								<li class="active"><a href="UserHome.jsp" class="effect-3 ">Home</a></li>
								<li><a href="Donor.jsp" class="effect-3 ">Become a Donor</a></li>
								<li><a href="FindDonor.jsp" class="effect-3 ">Donor Search</a></li>
								<li><a href="Logout.jsp" class="effect-3 ">Logout</a></li>
</c:if>



