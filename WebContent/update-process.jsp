<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "Akhil@123";%>
<%
String id = request.getParameter("product_id");
String product_type=request.getParameter("product_type");
String product_name=request.getParameter("product_name");
String product_quantity=request.getParameter("product_quantity");
String product_price=request.getParameter("product_price");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update inventory_list set product_id=?,product_type=?,product_name=?,product_quantity=?,product_price=? where product_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, product_type);
ps.setString(3, product_name);
ps.setString(4, product_quantity);
ps.setString(5, product_price);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");

}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<button onclick="DirectInventory();" value="Register">Move to Inventory</button>
<script language="javascript" type="text/javascript">

function DirectInventory()
{
window.open("MangerInventory.jsp","_self");
}
</script>