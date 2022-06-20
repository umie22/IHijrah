<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Announcement</title>
</head>
<body>
<div class = "card">
	<h1>Announcement Forms </h1>
   
    <form action="AddAnnouncementController" method="post">
    <label for="Id">Id:</label><br>
     <input type="number" id="Id" name="Id" value=""/><br>
    
     <label for="Email">Detail:</label><br>
     <input type="text" id="Email" name="Detail" value=""/><br>
     
     <label for="Name">Date:</label><br>
     <input type="text" id="Name" name="Date" value=""/><br>
     
	
     
    
     
     <input type="submit" value="Submit">
     <input type="reset" value="Reset">
   </form> 
 
   
</div> 
</body>
</html>