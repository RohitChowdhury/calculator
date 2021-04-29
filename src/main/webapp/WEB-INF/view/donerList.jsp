<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doner List</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body style="background-color: powderblue;">
<nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a class="navbar-brand">Blood Donation Camp System </a>
		</div>
		</nav>
<div align="justify"><H1>Doners List</H1></div>
	<div class="container">
		<table class="table table-striped">
			

			<thead>
				<tr>
					<th>Doner Id</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Phone</th>
					<th>Email Id</th>
					<th>Blood Group</th>
					<th>Registered CampId</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${donerDetails}" var="todo">
					<tr>
						<td>${todo.donerId}</td>
						<td>${todo.name}</td>
						<td>${todo.gender}</td>
						<td>${todo.phone}</td>
						<td>${todo.email}</td>
						<td>${todo.blodGroup}</td>
						<td>${todo.registerCampId}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<div align="center"><a class="btn btn-primary mb-2" href="adminApplication">Admin Home</a></div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>