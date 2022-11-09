<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<form method="post" action="PenceramahController" >
		
		<div class="part">
			<label>Name</label> 
			<input type="text" name="pencName">
		</div>
		
		<div class="part">
			<label>Email</label> 
			<input type="text" name="penEmail">
		</div>
		
		<div class="part">
			<label>Phone Number</label> 
			<input type="text" name="penPhone">
		</div>
		
		<div>
			<input type="hidden" name="action" value="addPen" >
			<button type="submit">ADD</button>
			
			<button type="reset">RESET</button>
		</div>
		
	</form>
</body>
</html>