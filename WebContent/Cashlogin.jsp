<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cashier Login</title>
<style>
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,700,500,300,100,900)
	;

body {
	background-image: radial-gradient(circle farthest-corner at 50.1% 52.3%, rgba(255, 231, 98
		, 1) 58.2%, rgba(251, 212, 0, 1) 90.1%);
	font-family: "Roboto";
}

.card {
	width: 300px;
	height: 525px;
	background-color: #fafafa;
	margin: 100px auto;
	border-radius: 6px;
	box-shadow: 0 8px 25px #black;
	box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
	background-image:
		url('data:image/svg+xml,%3Csvg width="12" height="24" viewBox="0 0 12 24" xmlns="http://www.w3.org/2000/svg"%3E%3Cg fill="none" fill-rule="evenodd"%3E%3Cg fill="#ffb3b3" fill-opacity="0.4"%3E%3Cpath d="M2 0h2v12H2V0zm1 20c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM9 8c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zm-1 4h2v12H8V12z"/%3E%3C/g%3E%3C/g%3E%3C/svg%3E');
}

.title {
	text-transform: uppercase;
	color: black;
	font-weight: 600;
	font-size: 1.3em;
	letter-spacing: 1px;
	border-left: 4px solid #ed2553;
	margin: 20px 0 50px 0;
}

.SubmitButton, .RegisterButton {
	border: 2px solid #bbb;
	background-color: transparent;
	width: 75%;
	height: 50px;
	margin: 35px auto 30px auto;
	display: block;
	padding: 0;
	color: #bbb;
	text-transform: uppercase;
	letter-spacing: 2px;
	line-height: 46px;
	font-weight: 500;
	transition: 0.2s ease all;
}

input[type=text], input[type=password] {
	border: 0;
	border-bottom: 1px solid #bbb;
	width: 80%;
	display: block;
	color: #626350;
	transition: all 0.25s;
	background-color: transparent;
	padding: 10px 10px 5px 5px;
}

.SubmitButton:hover {
	color: #ed2553;
	border: 2px solid #ed2553;
}

.RegisterButton:hover {
	color: green;
	border: 2px solid green;
}

* {
	box-sizing: border-box;
}

body {
	font-family: 'Montserrat', sans-serif;
	line-height: 1.6;
	margin: 0;
	min-height: 100vh;
}

ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

h2, h3, a {
	background: linear-gradient(to left, #5FC3E4 0%, #E55D87 100%);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

a {
	text-decoration: none;
}

.logo {
	margin: 0;
	font-size: 1.45em;
}

.main-nav {
	margin-top: 5px;
}

.logo a, .main-nav a {
	padding: 10px 15px;
	text-transform: uppercase;
	text-align: center;
	display: block;
}

.main-nav a {
	color: #34495e;
	font-size: .99em;
}

.main-nav a, li:hover {
	color: pink;
}

.header {
	padding-top: .5em;
	padding-bottom: .5em;
	border: 1px solid #a2a2a2;
	background-color: #f4f4f4;
	-webkit-box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
	box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

@media ( min-width : 769px) {
	.header, .main-nav {
		display: flex;
	}
	.header {
		flex-direction: column;
		align-items: center; . header { width : 80%;
		margin: 0 auto;
		max-width: 1150px;
	}
}

}
@media ( min-width : 1025px) {
	.header {
		flex-direction: row;
		justify-content: space-between;
	}
}
</style>
<script language="javascript" type="text/javascript">
	function changeSubmit() {
		window.open("ChangePasswordForm.jsp", "_self");
	}
	function doSubmit1() {
		window.open("CashierRegistration.jsp", "_self");
	}
</script>
<header class="header">
<h1 class="logo">
	<a href="#">Super Market Management system</a>
</h1>
<ul class="main-nav">
	<li><a href="index.jsp">Home</a></li>
</ul>
</header>
</head>
<body>
	<div class="card" align="center">
		<br>
		<p class="title">Cashier Login</p>
		<form action="Cashloginvalidation.jsp" method="post">
			<label for="username">UserName:</label> <input type="text"
				name="username" /><br> <label for="password">Password:
			</label> <input type="password" name="password" />
			<button class="SubmitButton" type="submit">Login</button>
		</form>
		<button class="RegisterButton" onclick="doSubmit1()">Register</button>
		<a href="ChangePasswordForm.jsp">forgot password? click here</a>
	</div>
</body>
</html>