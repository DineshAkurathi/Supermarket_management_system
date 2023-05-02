<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Registration</title>
</head>
<style>
            h1 {
                color: #006666;
            }
	    td{
		padding-left: 15px;
		}
		[class|=button] {
  background-color: #4CAF50;
  border: double;
  color: white;
  padding: 10px 22px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  }
        </style>
<body bgcolor="#EED426">
 <div align="center">
  <h1 align="center"><font face="verdana">Add Customer Details</font></h1>
  <form action="<%= request.getContextPath() %>/register3" method="post">
   <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="first_name" pattern="([^\s][a-zA-Z\s]+)" required /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="last_name" pattern="([^\s][a-zA-Z\s]+)" required /></td>
    </tr>
    <tr>
     <td>Age</td>
     <td><input type="number" name="age" required /></td>
    </tr>
    <tr>
     <td>Gender</td>
     <td><select name="gender" required>
    <option value="Male">Male</option>
    <option value="Female">Female</option>
</select></td>
    </tr>
    <tr>
     <td>Contact</td>
     <td><input type="text" name="contact" pattern="[7-9][0-9]{9}" required/></td>
    </tr>
    <tr>
     <td>Email</td>
     <td><input type="text" name="email" required /></td>
    </tr>
   </table>
   <input class="button" type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>