<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>


<body>
	<%
		String host = "jdbc:mysql://localhost:3306/project";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(host, "root", "password-1");
	%>

	<form action="" method="post">

		<%
			Statement sta = con.createStatement();
			PreparedStatement st = null;
			String uid = request.getParameter("product_name");
			int usid = Integer.parseInt(uid);

			String sql = "select * from inventory where product_name=? ";

			ResultSet resultSet = sta.executeQuery(sql);

			while (resultSet.next()) {
		%>
		<h1 align="center">Update User details</h1>

		<div class="container" style="padding-left: 500px;">

			<label for="uname"><b>item</b></label> <input type="text"
				value="<%=resultSet.getString("product_type")%>"
				name="product_type" required> <label for="mail"><b>category</b></label>
			<input type="text" value="<%=resultSet.getString("product_name")%>"
				name="product_name" required> <label for="addr"><b>price</b></label>
			<input type="text" value="<%=resultSet.getString("product_price")%>"
				name="product_price" required>

			<%
				}
			%>
			<button type="submit">Update</button>

		</div>


	</form>

</body>

</html>

<%
	String username = request.getParameter("product_type");
	String mailid = request.getParameter("product_name");
	String price = request.getParameter("product_price");

	if (username != null && mailid != null) {
		String query = "update inventory set product_type=?,product_name=?,product_price=? where id='" + usid
				+ "'";
		st = con.prepareStatement(query);
		st.setString(1, username);
		st.setString(2, mailid);
		st.setString(3, price);
		st.executeUpdate();
		response.sendRedirect("ManagerInventory.jsp");
	}
%>