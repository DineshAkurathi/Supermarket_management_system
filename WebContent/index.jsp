<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>
<style>
@import	url(https://fonts.googleapis.com/css?family=Roboto:400,700,500,300,100,900);

body {
	background-image: url("https://images.pexels.com/photos/2733918/pexels-photo-2733918.jpeg?cs=srgb&dl=assorted-vegetable-lot-2733918.jpg&fm=jpg");
	background-size: cover;
	background-color: black;
	font-family: "Roboto";
}

.card {
	width: 300px;
	height: 425px;
	background-color: #fafafa;
	margin: 100px auto;
	border-radius: 6px;
	box-shadow: 0 8px 25px #black;
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
.managerButton{
    border: 2px solid red;
    color: red;
}
.cashierButton{
    border: 2px solid green;
    color: green;
}
.managerButton, .cashierButton {
	
	background-color: transparent;
	width: 75%;
	height: 50px;
	margin: 65px auto 30px auto;
	display: block;
	padding: 0;
	text-transform: uppercase;
	letter-spacing: 2px;
	line-height: 46px;
	font-weight: 500;
	transition: 0.2s ease all;
	overflow: hidden;
}

.managerButton:hover {
	color: #fff;
	border: 2px solid #fff;
	background-color: red;
	transition: width 0.4s ease-in-out, height 0.4s ease-in-out;
	border: 2px solid red;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.cashierButton:hover {
	color: #fff;
	border: 2px solid #fff;
	background-color: green;
	transition: width 0.4s ease-in-out, height 0.4s ease-in-out;
	border: 2px solid green;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.managerButton:hover span {
  padding-right: 25px;
  transform: scale(1.2);
}
.cashierButton:hover span {
  padding-right: 25px;
  transform: scale(1.2);
}
.managerButton span,.cashierButton span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.4s;
}
.managerButton span:after,.cashierButton span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
}
.managerButton:hover span:after,.cashierButton:hover span:after {
  opacity: 1;
  right: 0;
}
h1{
color: white;
}
</style>
</head>
<script language="javascript" type="text/javascript">
	function ManagerSubmit() {
		window.open("Managerlogin.jsp", "_self");
	}
	function CashierSubmit() {
		window.open("Cashlogin.jsp", "_self");
	}
</script>
<body>
<h1>welcome to </h1>
    <div class="card">
        <br>
<p class="title">Welcome! Choose the Profile</p>
<button class="managerButton" onclick="ManagerSubmit();" value="Register"><span>Manager</span></button>
<button class="cashierButton" onclick="CashierSubmit();" value="Register"><span>Cashier</span></button>
</div>
</body>
</html>
