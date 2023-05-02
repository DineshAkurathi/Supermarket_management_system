<!DOCTYPE html>
<html>
<style>
body {
	font-family: 'Open Sans', sans-serif;
	font-size: 16px;
	text-align: center;
	color: #444;
	background: #d0d0d0;
}

.card {
	width: 400px;
	height: 525px;
	background-color: #fafafa;
	margin: 60px auto;
	border-radius: .4em;
	position: relative;
	box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
	box-shadow: 0 1.7em 5.5em -.94em rgba(black, .3), 0 2em 3em .5em
		rgba(black, .1), 0 1.8em 2em -1.5em rgba(black, .2);
	background-image: linear-gradient(200deg, rgba(255, 204, 0, 1) 53.7%,
		rgba(253, 168, 10, 1) 88.9%);
	will-change: background, box-shadow;
}
/* Reset Select */
select {
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	appearance: none;
	outline: 0;
	box-shadow: none;
	border: 0 !important;
	background: #fff;
	background-image: none;
}
/* Remove IE arrow */
select::-ms-expand {
	display: none;
}
/* Custom Select */
.select {
	border: .5px solid #34495e;
	position: relative;
	display: flex;
	width: 10em;
	height: 2em;
	line-height: 2.5;
	background: #2c3e50;
	overflow: hidden;
	border-radius: .25em;
}

select {
	flex: 1;
	padding: 0 .5em;
	color: black;
	cursor: pointer;
	font-size: 100%;
}
/* Arrow */
.select::after {
	content: '\25BC';
	position: absolute;
	top: 0;
	right: 0;
	padding: 0 0.5em;
	background: #34495e;
	cursor: pointer;
	pointer-events: none;
	-webkit-transition: .25s all ease;
	-o-transition: .25s all ease;
	transition: .25s all ease;
}
/* Transition */
.select:hover::after {
	color: #f39c12;
}

h1 {
	color: #34495e;
	font-family: 'Open Sans', sans-serif;
	border-left: 4px solid #34495e;
}

input[type=text], input[type=password], input[type=number], input[type=tel]
	{
	border: 0;
	border-bottom: 1px solid #fff;
	width: 100%;
	display: block;
	color: #626350;
	transition: all 0.25s;
	background-color: transparent;
	padding: 10px 10px 5px 5px;
}

.bottom {
	width: 400px;
	padding-bottom: 0px;
	position: absolute;
	bottom: 0;
	border-bottom-left-radius: .4em;
	border-bottom-right-radius: .4em;
}

input[type=submit] {
	border: 2px solid #34495e;
	background-color: #34495e;
	width: 100%;
	height: 50px;
	margin: auto;
	display: block;
	padding: 0;
	color: #fff;
	text-transform: uppercase;
	letter-spacing: 2px;
	line-height: 46px;
	font-weight: 500;
	transition: 0.2s ease all;
	border-bottom-left-radius: .4em;
	border-bottom-right-radius: .4em;
}

input[type=submit]:hover {
	border: 2px solid #34495e;
	background-color: #34495e;
}

td {
	margin-top: 20px;
	padding-top: 20px;
	color: #34495e;
}

* {
	box-sizing: border-box;
}

body {
	font-family: 'Montserrat', sans-serif;
	line-height: 1.6;
	margin: 0;
	min-height: 100vh;
	background-image: linear-gradient(109.6deg, rgba(245, 239, 249, 1) 30.1%,
		rgba(207, 211, 236, 1) 100.2%);
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
		<li><a href="MangerInventory.jsp">BACK</a></li>
		<li><a href="Managerlogin.jsp">Log out</a></li>
	</ul>
</header>
<body>
	<div class="card" align="center">
		<br>
		<br>
		<h1>Add the item details</h1>
		<form method="post" action="<%=request.getContextPath()%>/register4">
			<table>
				<tr>
					<td>Product Type:</td>
					<td><div class="select">
							<select name="product_type" required>
								<option value="Cosmetics">Cosmetics</option>
								<option value="Daily">Daily</option>
								<option value="Groceries">Groceries</option>
								<option value="Fancy Items">Fancy Items</option>
							</select>
						</div></td>
				</tr>
				<tr>
					<td>Product Name:</td>
					<td><input type="text" name="product_name" required></td>
				</tr>
				<tr>
					<td>Product Quantity:</td>
					<td><input type="number" name="product_quantity" required></td>
				</tr>
				<tr>
					<td>Product Price:</td>
					<td><input type="number" name="product_price" required></td>
				</tr>
				<tr>
			</table>
			<div class="bottom">
				<input type="submit" value="submit">
			</div>
		</form>

	</div>
</body>