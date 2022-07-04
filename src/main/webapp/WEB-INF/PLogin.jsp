<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>
	<form method="post" action="PartLogin">
		<div class="partL">
			<label>Email</label> 
			<input type="text" name="paticipant_email">
		</div>
		
		<div class="partL">
			<label>Password</label> 
			<input type="text" name="participant_password">
		</div>
		
		<div>
			<input type="hidden" name="action" value="addNewAcc" >
			<button type="submit">ADD</button>
		</div>
	</form>
	
</body>
</html>