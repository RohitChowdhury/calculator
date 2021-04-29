<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Camp Form</title>
<style>
.errors {
	color: red;
	/*padding: 650px;
	padding-top:150px; */
}
</style>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript">
	function validate() {
		var regex_text = /[a-z A-Z]/;
		var regex_num =/[0-9]/;
		var a = document.getElementById("place").value;
		var b= document.getElementById("phone").value;
		var c=document.getElementById("organizer").value;
		if (a == "" || a == null || a.length <= 2) {
			alert("Place must contain Minimum 3 Characters !");
			return false;
		} else if (regex_text.test(a) == false) {
			alert("Place must contain Only Characters");
			return false;
		}
		else if(b=="" || b==null || b.length<10 || b.length>10){
			alert("Phone Number must Contain Exact 10 Digit");
			return false;
		}
		else if(regex_num.test(b)==false){
			alert("Phone Must Contain Only Numbers");
			return false;
		}
		else if(c=="" || c==null || c.length<5){
			alert("Organizer Name must Contain 5 Characters");
			return false;
		}
    	 else if (regex_text.test(c) == false) {
					alert("Organizer Name must contain Only Characters");
					return false;
		}
	}
</script>
</head>
<body style="background-color: powderblue;">
<nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a class="navbar-brand">Blood Donation Camp System </a>
		</div>
		</nav>
	<div class="container" align="center">
		<h1>Give the New Blood Donation Camp Details</h1>
		<form:form method="post" action="" modelAttribute="donation"
			onsubmit="return validate()">
	Place : <form:input path="place" type="text" id="place" />

			<br />
	Date : <form:input type="date" path="date" required="required" />
			<br />
	PhoneNumber : <form:input path="organizerPhone" 
				id="phone" />
			<br />
	Organizer  : <form:input path="organizer" 
				id="organizer" />
			<br />
			<br />
			<input class="btn btn-success" type="submit" value="Save">

		</form:form>
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
</body>
</html>