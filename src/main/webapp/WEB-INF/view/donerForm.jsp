<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Your Details</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.errors {
	color: red;
	/*padding: 650px;
	padding-top:150px; */
}
</style>
<script type="text/javascript">
	function validate() {
		var regex_text = /[a-z A-Z]/;
		var regex_num =/[0-9]/;
		var regex_email=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		var a = document.getElementById("name").value;
		var b= document.getElementById("phone").value;
		var c=document.getElementById("campid").value;
		var d=document.getElementById("email").value;
		if (a == "" || a == null || a.length <= 2) {
			alert("Name must contain Minimum 3 Characters !");
			return false;
		} else if (regex_text.test(a) == false) {
			alert("Name must contain Only Characters");
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
		else if(c=="" || c==null){
			alert("Camp Id Can't be blank");
			return false;
		}
    	 else if(regex_num.test(c)==false){
 			alert("CampId Must Contain Only Numbers");
 			return false;
 		}
    	 else  if(d=="" || d==null){
			alert("Email Can't be blank");
			return false;
		} else if(regex_email.test(d)==false){
 			alert("Please provide Valid Email");
 			return false;
 		}
    	
	}
</script>
</head>
<body style="background-color: powderblue;">
<nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a class="navbar-brand">Online Blood Donation Camp System ! </a>
		</div>
		</nav>
	<div align="center">
		<h1>Insert Your Details</h1>
		<form:form method="post" action="" modelAttribute="doner" onsubmit="return validate()">
		<table>
		<tr>
			<div class="form-group ">
			
				<td>Name :</td>
				<td><form:input path="name" name="name" id="name"/></td>

				<form:errors path="name" cssClass="errors"></form:errors>
			</div>
			</tr>
			<tr>
			<div class="form-group">
				<td>Gender :</td>
				<%--<form:input path="gender" required="required" />
				<br /> --%>
				
				<td><input class="w3-radio" type="radio" value="Male"
						path="gender" id="Gender" name="gender" /> <label for="Gender">Male</label>
						<input class="w3-radio" type="radio" value="Female" path="gender"
						id="Gender" name="gender" /> <label for="Female">Female</label></td>
			</div>
			</tr>
		<tr>
			<div class="form-group">
				<td>PhoneNumber :</td>
				<td><form:input path="phone"  id="phone" /></td>
				<br />
			</div>
			</tr>
			<tr>
			<div class="form-group">
				<td>E-mail :</td>
				<td><form:input path="email" required="required" id="email"/></td>
				<br />
			</div>
			</tr>
			<tr>
			<div class="form-group">
				<td>Blood-Group :</td>
				<td><form:input path="blodGroup" required="required" /></td>
			</div>
			</tr>
			<tr>
			<div class="form-group">
			<td>Donation CampId :</td>
			<td><form:input type="number" path="registerCampId"  id="campid"/></td>
				<br />
			</div>
			</tr>
			<tr>
			<td><input class="btn btn-primary" type="submit" value="Save"></td></tr>
</table>
		</form:form>

		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
</body>
</html>