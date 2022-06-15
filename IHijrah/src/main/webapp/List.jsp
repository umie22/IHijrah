<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
div{
background-color: #F8E9C3; 
height:650px; 
text-align: center;
}
table.center{
margin-left: auto;
margin-right: auto;
}
table,th, td{
 border: 1px solid black;
 border-collapse: collapse;
}
</style>
<meta charset="ISO-8859-1">
<title>List Ticket</title>
</head>
<body>
<div ><br>
<h1 style="background-color: #EBDBB4;">TICKET LIST</h1>
<table border="1" class="center">
<tr>
<th>Id</th>
<th>Subject</th>
<th>Date</th>
<th colspan = "3">Action</th>
</tr>
<c:forEach items="${tickets}" var="t" varStatus="tickets">
<tr>
<td><c:out value="${t.id}"/></td>
<td><c:out value="${t.subject}"/></td>
 <td><c:out value="${t.date}"/></td>
<td><a class="btn btn-primary" href="ViewTicket?id=
 <c:out value="${t.id}"/>">View</a></td>
<td><a class="btn btn-primary" href="UpdateTicket?id=
 <c:out value="${t.id}"/>">Update</a></td>
<td><button class="btn btn-danger" id="<c:out value="${t.id}"
 />" onClick="confirmation(this.id)">Delete</button></td>
</tr>
</c:forEach> </table>
<script>
function confirmation(id){
console.log(id);
var r = confirm("Are you sure you want to delete?");
if (r==true){
location.href = 'DeleteTicket?id=' + id;
alert("Ticket successfully deleted");
}else{
return false;
}
} </script>
</div>
</body>
</html>
