<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trash page</title>
</head>
<style>
h1 {
	color: #006666;
	text-align: center;
}

button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}
</style>
<script language="javascript" type="text/javascript">
	function doSubmitlogin() {
		window.open("Managerlogin.jsp", "_self");
	}
	function doSubmitregistration() {
		window.open("UserRegistration.jsp", "_self");
	}
</script>
<body>
	<center>
		<h1>Welcome to Manager Login/Register Form</h1>
		<br> <br>
		<button onclick="doSubmitlogin()">Login</button>
		<button onclick="doSubmitregistration()">Register</button>
	</center>
</body>
</html>