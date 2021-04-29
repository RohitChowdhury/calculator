<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style type="text/css">
#container{
  background-image: url("https://image.freepik.com/free-photo/heart-hand-philanthropy_73523-1626.jpg"); 


/* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
 
  <div  class="bg-text" align="center" id="container">
	<h1>Welcome to Blood Donation Camp System</h1>
	<h3>Login as</h3>
	<a class="btn btn-warning"href="adminLogin">Admin</a>
	<br />
	<a  class="btn btn-info" href="campList2">Available Blood Donation Camps</a>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
</body>
</html>