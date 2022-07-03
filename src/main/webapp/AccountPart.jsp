	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TRY</title>
</head>
<body>
	<form method="post" action="AccountHandler" >
		
		<div class="part">
			<label>Name</label> 
			<input type="text" name="partName">
		</div>
		
		<div class="part">
			<label>Email</label> 
			<input type="text" name="partEmail">
		</div>
		
		<div class="part">
			<label>Phone Number</label> 
			<input type="text" name="partPhone">
		</div>
		
		<div class="part">
			<label>Password</label> 
			<input type="text" name="partPass">
		</div>
		
		<div>
			<input type="hidden" name="action" value="addAcc" >
			<button type="submit">ADD</button>
		</div>
		
	</form>
</body>
</html>