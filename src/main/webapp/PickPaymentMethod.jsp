<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Payment Method</title>
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
  <p>PAYMENT METHOD</p><br><br>
  <button id="myBtn" style="background-color: grey;color:white;position: relative; left:10px; width: 70%;border-color:grey; padding: 10px; border-radius: 10px;">CASH PAYMENT</button><br><br><br><br><br><button id="myBtn" style="background-color: grey;color:white;position: relative; left:10px; width: 70%;border-color:grey;padding: 10px; border-radius: 10px;">ONLINE PAYMENT</button></div>
            
  <div class="item2" ><img src="pic2.jpg" style="position: relative; left:10px; width: 100%; height:650px;"></div>
 
</div>
               
	
</body>
</html>