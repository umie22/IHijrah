<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Info</title>
<link href="css/boostrap.min.css" rel="stylesheet">
<style>
div{
background-color: #F8E9C3; 
height:650px; 
text-align: center;
}
</style>
</head>
<body>
<div><br>
<h1 style="background-color: #EBDBB4;">VIEW TICKET</h1>
<h1>Ticket Info</h1>
<b>ID:</b> <c:out value="${t.id}"/><br><br>
<b>Subject:</b> <c:out value="${t.subject}"/><br><br>
<b>Date:</b> <c:out value="${t.date}"/><br><br>
<b>Category:</b> <c:out value="${t.category}"/><br><br>
<b>Message:</b> <c:out value="${t.message}"/><br>
</div>
</body>
</html>