<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #3e94ec;
	background-image: radial-gradient(circle 879px at 10.4% 22.3%, rgba(255, 235, 238, 1)
		0%, rgba(186, 190, 245, 1) 93.6%);
	font-family: "Roboto", helvetica, arial, sans-serif;
	font-size: 16px;
	font-weight: 400;
	text-rendering: optimizeLegibility;
}

div.table-title {
	display: block;
	margin: auto;
	max-width: 800px;
	width: 100%;
}

.table-title h3 {
	color: black;
	font-size: 30px;
	font-weight: 400;
	font-style: normal;
	font-family: "Roboto", helvetica, arial, sans-serif;
	text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
	text-transform: uppercase;
	font-weight: bold;
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
border: 2px solid green;
}
.rejectButton{
border: 2px solid red;
}
.rejectButton ,.acceptButton{
	background-color: transparent;
	width: 90%;
	height: 50px;
	margin: auto;
	border-radius: 10px;
	display: block;
	padding: 0;
	color: #bbb;
	text-transform: uppercase;
	letter-spacing: 2px;
	line-height: 46px;
	font-weight: 500;
	transition: 0.2s ease all;
}

.rejectButton:hover {
	color: white;
	border: 2px solid #ed2553;
	background-color: red;
}
.acceptButton:hover{
color: white;
	border: 2px solid green;
	background-color: green;
}
</style>
</head>
<body>
	<div class="table-title">
		<h3>Cashier Login Approval</h3>
	</div>
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
				int i = 0;
				while (resultSet.next()) {
		%>
		<tbody class="table-hover">
			<tr>
				<td class="text-left"><%=resultSet.getString("first_name")%></td>
				<td class="text-left"><%=resultSet.getString("last_name")%></td>
				<td class="text-left"><%=resultSet.getString("user_name")%></td>
				<td class="text-left"><%=resultSet.getString("address")%></td>
				<td class="text-left"><%=resultSet.getString("contact")%></td>
				<td class="text-left">
					<button class="acceptButton"
						onclick="window.location.href = 'cashierupdatingDatabase.jsp?user_name=<%=resultSet.getString("user_name")%>';">Accept</button>
					</td>
				<td class="text-left">
					<button class="rejectButton"
						onclick="window.location.href = 'CashierReject.jsp?user_name=<%=resultSet.getString("user_name")%>';">Reject</button>
				</td>
			</tr>
		</tbody>
		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</body>
</html>