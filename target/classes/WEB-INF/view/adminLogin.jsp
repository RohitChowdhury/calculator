<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body style="background-color: #e5eaf5;">
	<nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a class="navbar-brand">Blood Donation Camp System </a>
		</div>

	</nav>
	<div align="center">

		<h1>Please give the Login Credentials Admin!</h1>
		<form action="adminLogin" method="post">
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			<div class="form-group">
				<label>Name :</label> <input type="text" name="user">
			</div>
			<div class="form-group">
				<label>Password:</label> <input type="password" name="password">
			</div>
			<input class="btn btn-success" type="submit">
		</form>

		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
</body>
</html>