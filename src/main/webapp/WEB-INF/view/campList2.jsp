<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Camp List</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
	    		<script type="text/javascript">
	    		function Confirm(){
	    			alert("Please Remember the CampId for Registration");
	    		}
	    		</script>
</head>
<body style="background-color: powderblue;">
<nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a class="navbar-brand">Online Blood Donation Camp System ! </a>
		</div>
		</nav>
<div align="center"><H1><font color="brown">Available Blood Donation Camps</font></H1></div>
	<div class="container">
		<table class="table table-striped">
			

			<thead>
				<tr>
					<th>Camp Id</th>
					<th>Place</th>
					<th>Date</th>
					<th>Organizer</th>
					<th>Organizer Phone</th>
					
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${campDetails}" var="camp">
					<tr>
						<td>${camp.campId}</td>
						<td>${camp.place}</td>
						<td>${camp.date}</td>
						<td>${camp.organizer}</td>
						<td>${camp.organizerPhone}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	

	<div align="center"><a class="btn btn-primary mb-2"  href="donerForm" onclick="return Confirm()">Register Yourself</a></div>
	<div ><a class="btn btn-warning"  href="home">Back to Home Page</a></div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>