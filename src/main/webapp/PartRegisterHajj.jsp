
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Upload Receipt</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css">
<style>
.navbar {
padding-top:30px;
  overflow: hidden;
  background-color: #102e44;
}

.navbar a {
  float: right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 16px 14px;
  text-decoration: none;
  background-color: #102e44;
  
}

.dropdown {
  float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 16px 14px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: green;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  background-color: white;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.notification .badge {
  position: absolute;
  top: 30px;
  right: 12px;
  padding: 5px 10px;
  border-radius: 50%;
  background-color: red;
  color: white;
}
</style>
</head>
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
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; ">
  <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; ">
 <div class="navbar">

  <div class="dropdown">
    <button class="dropbtn">Announcement 
      <i class="fa fa-caret-down">
      <a href="#" class="notification">
      <span class="badge">3</span></i></a>
    </button>
    <div class="dropdown-content">
      <a href="#">Class is cancelled</a>
      <a href="#">Class will be held at dataran masjid</a>
      <a href="#">Class is postponed to 3 p.m</a>
    </div>
  </div> 
</div>
 
 </div></div>
 <!-- TOPBAR -->   


	<div class="container" enctype="multipart/form-data" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:460px; " method="post" action="addPayment">
		<h2 style="float: left; margin-top: 5em;margin-bottom: 2em;">HAJJ COURSE</h2>
		
            <p style="background-color: lightgrey; width:50%; border: 5px solid black; padding-top: 2em; padding: 250px 75px; margin-left: 20em; ">Please upload your payment receipt here:<br><br>
            
            <input style="position: relative; left:10em; top:2px; width: 20%;" type="file" id="myFile" name="filename" accept="immage/pdf"><br>
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