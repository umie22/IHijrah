<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Course Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css">
<style>
.grid-container {
  display: grid;
  grid-template-columns: auto auto ;
  gap: 10px;
  background-color: #004a80;
  height: 600px;
  
}

.grid-container > div {
  background-color: #004a80;
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
  height: 600px;
}

.item1 {

  grid-row-start: 1;
  grid-row-end: 1;
}
.item1 {

 height: 500px;
}

</style>
</head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:auto">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white;">WELCOME</h3>
<a href="#" class="btn1" style="display:block;">DASHBOARD</a>
<a href="#" class="btn2" style="display:block;">REGISTER COURSE</a>
<a href="#" class="btn4" style="display:block;">CLASS SCHEDULE</a>
<a href="#" class="btn5" style="display:block;">ANNOUNCEMENT</a>
<a href="#" class="btn6" style="display:block;">ACCOUNT</a>
<a href="#" class="btn8" style="display:block;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "></div>
 <!-- TOPBAR -->   


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:700px; ">
		<div class="grid-container">
  <div class="item1">
  <p>COURSE REGISTRATION</p><br><br>
  <button id="myBtn" style="background-color: grey;color:white;position: relative; left:10px; width: 70%;border-color:grey; padding: 10px; border-radius: 10px;">HAJJ COURSE</button><br><br><br><br><br><button id="myBtn" style="background-color: grey;color:white;position: relative; left:10px; width: 70%;border-color:grey;padding: 10px; border-radius: 10px;">UMRAH COURSE</button></div>
            
  <div class="item2" ><img src="pic1.jpg" style="position: relative; left:10px; width: 100%; height:650px;"></div>
 
</div>
          
	
</body>
</html>

=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Course Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css">
<style>
.grid-container {
  display: grid;
  grid-template-columns: auto auto ;
  gap: 10px;
  background-color: #004a80;
  height: 100%;
  
}

.grid-container > div {
  background-color: #004a80;
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
  height: 100%;
}

.item1 {

  grid-row-start: 1;
  grid-row-end: 1;
}
.item1 {

 height: 250px;
}

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
 
 </div>
 <!-- TOPBAR -->   


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:460px; ">
		<div class="grid-container">
  <div class="item1">
  <p>COURSE REGISTRATION</p><br><br>
  <button id="myBtn" style="box-shadow: 0 0 30px rgba(0, 0, 0, 0.40);background-color: grey;color:white;position: relative; left:10px; width: 50%;border-color:grey; padding: 10px; border-radius: 10px;">HAJJ COURSE</button><br><br><br><br><br><button id="myBtn" style="background-color: grey;color:white;position: relative; left:10px; width: 50%;border-color:grey;padding: 10px; border-radius: 10px;">UMRAH COURSE</button></div>
            
  <div class="item2" ><img src="pic1.jpg" style="position: relative; left:10px; width: 100%; height:50%;"></div>
 
</div>
          
	
</body>
</html>

>>>>>>> branch 'main' of https://github.com/umie22/IHijrah.git
