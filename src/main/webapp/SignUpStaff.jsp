<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Staff</title>
</head>
<body>

<form action="LoginController"method="post">
Staff Full Name :

<input type="text" name = "name" >

Staff Password :
<input name = "pass" >


Staff Manager ID : 
<input name = "manid" >


Staff Telephone Number :
<input name = "number" >


Staff Role : 
<input name = "role" >


<input type="hidden" name="action" value="signupStaff" >

<input type="submit" >
<input type="reset" >


</form>
</body>
</html>