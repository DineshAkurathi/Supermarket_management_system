<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,700,500,300,100,900)
	;

body {
	background-image: radial-gradient( circle farthest-corner at 50.1% 52.3%,  rgba(255,231,98,1) 58.2%, rgba(251,212,0,1) 90.1% );
	font-family: "Roboto";
}

.card {
	width: 500px;
	height: 525px;
	background-color: #fafafa;
	margin: 100px auto;
	border-radius: 6px;
	box-shadow: 0 8px 25px #black;
	box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
	background-image: url('data:image/svg+xml,%3Csvg width="12" height="24" viewBox="0 0 12 24" xmlns="http://www.w3.org/2000/svg"%3E%3Cg fill="none" fill-rule="evenodd"%3E%3Cg fill="#ffb3b3" fill-opacity="0.4"%3E%3Cpath d="M2 0h2v12H2V0zm1 20c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM9 8c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zm-1 4h2v12H8V12z"/%3E%3C/g%3E%3C/g%3E%3C/svg%3E');
	
}

.title {
	text-transform: uppercase;
	color: black;
	font-weight: 600;
	font-size: 1.3em;
	letter-spacing: 1px;
	border-left: 4px solid #ed2553;
	padding-left: 20px;
	margin: 20px 0 50px 0;
}

input[type=text], input[type=password], input[type=number], input[type=tel]
	{
	border: 0;
	border-bottom: 1px solid #bbb;
	width: 90%;
	display: block;
	color: #626350;
	transition: all 0.25s;
	background-color: transparent;
	padding: 10px 10px 5px 5px;
}

input[type=submit] {
	border: 2px solid #bbb;
	background-color: transparent;
	width: 50%;
	height: 50px;
	margin: 50px auto 30px auto;
	display: block;
	padding: 0;
	color: #bbb;
	text-transform: uppercase;
	letter-spacing: 2px;
	line-height: 46px;
	font-weight: 500;
	transition: 0.2s ease all;
}

input[type=submit]:hover {
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
<header class="header">
	<h1 class="logo">
		<a href="#">Super Market Management system</a>
	</h1>
	<ul class="main-nav">
		<li><a href="Cashlogin.jsp">Back</a></li>
		<li><a href="index.jsp">Home</a></li>

	</ul>
</header>
<body>
	<div class="card" align="center">
		<br>
		<p class="title">Cashier Register Form</p>
		<form action="<%=request.getContextPath()%>/register1" method="post">
			<table style="with: 80%">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="first_name"
						pattern="([^\s][a-zA-Z\s]+)" required /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="last_name"
						pattern="([^\s][a-zA-Z\s]+)" required /></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="user_name" required /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" required /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" required /></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" name="contact" pattern="[7-9][0-9]{9}" /></td>
				</tr>
			</table>
			<input class="button" type="submit" value="Submit" />
		</form>
	</div>
</body>
</html>