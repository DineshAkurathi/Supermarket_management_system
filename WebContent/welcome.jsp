<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String id = request.getParameter("userId");
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "project";
	String userId = "root";
	String password = "password-1";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<style type="text/css">
body {
	background-color: #3e94ec;
	background-image: linear-gradient( 171.8deg,  rgba(5,111,146,1) 13.5%, rgba(6,57,84,1) 78.6% );
	font-family: "Roboto", helvetica, arial, sans-serif;
	font-size: 16px;
	font-weight: 400;
	text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding-top:15px;
  padding-bottom: 15px;
  width: 100%;
  
}
.table-title h3 {
   color:#dd5;
   font-size: 30px;
   font-weight: 400;
   margin: auto;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
   text-align: center;
}
.headCard{
    margin: auto;
    border-radius:10px;
  background:#1b1e24;
  width: 100%;
  max-width: 500px;
  border:3px solid #9ea7af;
  box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
}


/*** Table Styles **/
.table-fill {
	background: none;
	border-radius: 20px;
	border-collapse: collapse;
	height: 320px;
	margin: auto;
	max-width: 80%; padding : 5px;
	width: 100%;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
	animation: float 5s infinite;
	padding: 5px;
	box-shadow: 0px 0px 14px 0px rgba(0, 0, 0, 0.75);
}

th {
	color: #dd5;
	background: #1b1e24;
	border-bottom: 3px solid #9ea7af;
	border-right: 1px solid #9ea7af;
	font-size: 23px;
	font-weight: bold;
	padding: 24px;
	text-align: left;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	vertical-align: middle;
}

th:first-child {
	border-top-left-radius: 10px;
}

th:last-child {
	border-top-right-radius: 10px;
	border-right: none;
}

th:first-child {
	border-bottom-left-radius: 10px;
}

th:last-child {
	border-bottom-right-radius: 10px;
}

tr {
	border-top: 1px solid #C1C3D1;
	border-bottom-: 1px solid #C1C3D1;
	color: white;
	font-size: 16px;
	font-weight: normal;
	text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
	border-bottom: 3px solid #9ea7af;
}

tr:hover td {
	background: black;
	color: #dd5;
	border-top: 1px solid #22262e;
}

tr:first-child {
	border-top: none;
}

tr:last-child {
	border-bottom: none;
}

tr:nth-child(odd) td {
	background: #2f3f4f;
}

tr:nth-child(odd):hover td {
	background: black;
}

tr:last-child td:first-child {
	border-bottom-left-radius: 10px;
}

tr:last-child td:first-child {
	border-top-left-radius: 10px;
}

tr:last-child td:last-child {
	border-bottom-right-radius: 10px;
}

tr:last-child td:last-child {
	border-top-right-radius: 10px;
}

td {
	background: #34495E;
	padding: 20px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 18px;
	text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
	border-right: 1px solid #C1C3D1;
	border-bottom: 1px solid #C1C3D1;
}

td:last-child {
	border-right: 0px;
}

th.text-left {
	text-align: left;
}

th.text-center {
	text-align: center;
}

th.text-right {
	text-align: right;
}

td.text-left {
	text-align: left;
}

td.text-center {
	text-align: center;
}

td.text-right {
	text-align: right;
}
.acceptButton{
border: 2px solid #20c72e;
color: #20c72e;
}
.rejectButton{
border: 2px solid #ed2553;
color: #ed2553;
}
.rejectButton ,.acceptButton{
	background-color: transparent;
	width: 90%;
	height: 50px;
	margin: auto;
	border-radius: 10px;
	display: block;
	padding: 0;
	text-transform: uppercase;
	letter-spacing: 2px;
	line-height: 46px;
	font-weight: 500;
	transition: 0.2s ease all;
}

.rejectButton:hover {
	color: white;
	border: 2px solid #ed2553;
	background-color: #ed2553;
	transform: scale(1.1);
	box-shadow: 0px 5px 10px rgb(250, 106, 44, 0.4);
}
.acceptButton:hover{
color: white;
	border: 2px solid #20c72e;
	background-color: #20c72e;
	transform: scale(1.1);
	box-shadow: 0px 5px 10px rgb(11, 227, 168, 0.4);
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

h2, a {
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

.main-nav a,li:hover {
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
	<li><a href="MangerInventory.jsp">INVENTORY</a></li>
	<li><a href="CustomerRegistration.jsp">ADD CUSTOMER</a></li>
	<li><a href="Managerlogin.jsp">Log out</a></li>
</ul>
</header>
<br>
<div class="headCard">
<div class="table-title">
	<h3>Cashier Login Approval</h3></div>
</div><br>
<table class="table-fill">
	<thead>
		<tr>
			<th class="text-left">First Name</th>
			<th class="text-left">Last Name</th>
			<th class="text-left">User Name</th>
			<th class="text-left">Address</th>
			<th class="text-left">Contact</th>
			<th class="text-left">Approve</th>
			<th class="text-left">Reject</th>
		</tr>
	</thead>
	<%
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "SELECT * FROM cashier_details";

			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
	%>
	<tbody class="table-hover">
		<tr>
			<td class="text-left"><%=resultSet.getString("first_name")%></td>
			<td class="text-left"><%=resultSet.getString("last_name")%></td>
			<td class="text-left"><%=resultSet.getString("user_name")%></td>
			<td class="text-left"><%=resultSet.getString("address")%></td>
			<td class="text-left"><%=resultSet.getString("contact")%></td>
			<td class="text-left"><button class="acceptButton"
						onclick="window.location.href = 'cashierupdatingDatabase.jsp?user_name=<%=resultSet.getString("user_name")%>';">Accept</button></td>
			<td class="text-left"><button class="rejectButton"
						onclick="window.location.href = 'CashierReject.jsp?user_name=<%=resultSet.getString("user_name")%>';">Reject</button></td>
		</tr>
	</tbody>
	<%
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</table>
<script language="javascript" type="text/javascript">
	function DirectInventory() {
		window.open("MangerInventory.jsp", "_self");
	}
	function DirectCustomer() {
		window.open("CustomerRegistration.jsp", "_self");
	}
</script>
<!-- <button onclick="DirectInventory();" value="Register">Move to
	Inventory</button>
<button onclick="DirectCustomer();" value="Register">Add
	Customer</button> -->