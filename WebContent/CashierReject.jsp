<%@page import="java.sql.*" %>

<%

String user_name = request.getParameter("user_name");
String status="reject";



try
{
  
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password-1"); 
   
   
 
   int i = con.createStatement().executeUpdate(" Update cashier_details set status='"+status+"' where user_name = '"+user_name+"' ");
   
   if(i>0)
   {
       response.sendRedirect("welcome.jsp");
   }
   else
   {
       out.println("Approve Failed");
   }
   
   


}
catch(Exception e)
{
    out.println(e);
}


%>
