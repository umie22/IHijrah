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



</style>
</head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white;">WELCOME</h3>
<a href="#" class="btn1" style="display:block; padding:35px;">DASHBOARD</a>
<a href="#" class="btn2" style="display:block;padding:35px;">REGISTER COURSE</a>
<a href="#" class="btn4" style="display:block;padding:35px;color:grey;background-color:#353c49;">CLASS SCHEDULE</a>
<a href="#" class="btn5" style="display:block;padding:35px;color:grey;background-color:#353c49;">ANNOUNCEMENT</a>
<a href="#" class="btn6" style="display:block;padding:35px;">ACCOUNT</a>
<a href="#" class="btn8" style="display:block;padding:35px;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; ">
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

