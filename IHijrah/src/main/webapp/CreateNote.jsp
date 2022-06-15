<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Product Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css"></head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:auto">
<img alt="" src="user.png" style="width:150px; margin: 20px 20px 0px 50px;">
<h3 style="text-align: center; color: white;">WELCOME</h3>
<a href="#" class="btn1" style="display:block;">DASHBOARD</a>
<a href="#" class="btn2" style="display:block;">PAYMENT VERIFICATION </a>
<a href="#" class="btn3" style="display:block;">COURSE NOTE</a>
<a href="#" class="btn4" style="display:block;">CLASS SCHEDULE</a>
<a href="#" class="btn5" style="display:block;">ANNOUNCEMENT</a>
<a href="#" class="btn6" style="display:block;">ACCOUNT</a>
<a href="#" class="btn8" style="display:block;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "></div>
 <!-- TOPBAR -->   


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:600px; ">
		
		<!-- FILL IN FORM -->
		<form action="/action_page.php">
    		<div class="row">
      			<div class="col-25">
        		<label for="a_date">Date</label>
      			</div>
      		
      			<div class="col-75">
        		<input type="date" id="a_date" name="a_date" placeholder="DD-MM-YYYY">
      			</div>
   			 </div>
    
    		<div class="row">
      			<div class="col-25">
        		<label for="details">Details</label>
      			</div>
      
      			<div class="col-75">
        		<textarea id="details" name="details" placeholder="Announcement details" style="height:200px"></textarea>
      			</div>
    		</div>
    
    		<div class="row">
  				<input type="submit">
    		</div>
  		</form>
		<!-- FILL IN FORM --> 
		
	</div>
		
</body>
</html>
