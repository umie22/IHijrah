
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Upload Receipt</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css"></head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white;">WELCOME</h3>
<a href="#" class="btn1" style="display:block; padding:42px;">DASHBOARD</a>
<a href="#" class="btn2" style="display:block;padding:42px;">REGISTER COURSE</a>
<a href="#" class="btn4" style="display:block;padding:42px;">CLASS SCHEDULE</a>
<a href="#" class="btn6" style="display:block;padding:42px;">ACCOUNT</a>
<a href="#" class="btn8" style="display:block;padding:42px;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "></div>
 <!-- TOPBAR -->   


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:460px; ">
		<h2 style="float: left; margin-top: 5em;margin-bottom: 2em;">UMRAH COURSE</h2>
		
            <p style="background-color: lightgrey; width:50%; border: 5px solid black; padding-top: 2em; padding: 250px 75px; margin-left: 20em; ">Please upload your payment receipt here:<br><br>
            
            <input style="position: relative; left:10em; top:2px; width: 20%;" type="file" id="myFile" name="filename"><br>
            <br><br><br><br><br>
            <button onclick="myFunction()" style="background-color: #e0b012;color:white;position: relative; left:10px; width: 40%;border-color:grey;padding: 10px; border-radius: 10px;margin-left:70%;">Register Now</button>
            </p>


	</div>

<script>
function myFunction() {
  alert("Your course is sucessfully registered receipt verification will take 3 to 5 days");
}

</script>
		
</body>
</html>