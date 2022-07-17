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
  background-color: white; 
  height: 100%; 
   
} 
 
.grid-container > div { 
  background-color: white; 
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
/* The Modal (background) */ 
.modal { 
  display: none; /* Hidden by default */ 
  position: fixed; /* Stay in place */ 
  z-index: 1; /* Sit on top */ 
  left: 0; 
  top: 0; 
  width: 100%; /* Full width */ 
  height: 100%; /* Full height */ 
  overflow: hidden; /* Enable scroll if needed */ 
  background-color: rgb(0,0,0); /* Fallback color */ 
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */ 
  padding-top: 60px; 
  margin: 100px 100px 20px 400px; 
  border-color:lightgrey; 
} 
 
/* Modal Content/Box */ 
.modal-content { 
  background-color: #fefefe; 
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */ 
  border: 0px solid #888; 
  width: 90%; /* Could be more or less, depending on screen size */ 
  padding:5px; 
  font-size:20px; 
} 
 
/* The Close Button (x) */ 
.close { 
  position: absolute; 
  right: 25px; 
  top: 0; 
  color: #000; 
  font-size: 35px; 
  font-weight: bold; 
} 
 
.close:hover, 
.close:focus { 
  color: red; 
  cursor: pointer; 
} 
 
/* Add Zoom Animation */ 
.animate { 
  -webkit-animation: animatezoom 0.6s; 
  animation: animatezoom 0.6s 
} 
 
@-webkit-keyframes animatezoom { 
  from {-webkit-transform: scale(0)}  
  to {-webkit-transform: scale(1)} 
} 
   
@keyframes animatezoom { 
  from {transform: scale(0)}  
  to {transform: scale(1)} 
} 
 
/* Change styles for span and cancel button on extra small screens */ 
@media screen and (max-width: 300px) { 
  span.psw { 
     display: block; 
     float: none; 
  } 
  .cancelbtn { 
     width: 100%; 
  } 
} 
</style> 
</head> 
 
<body> 
 
 
<!-- SIDEBAR --> 
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden"> 
<img class="logo" alt="" src="IHijrahLogo.PNG"> 
<h3 style="text-align: center; color: white;">WELCOME</h3> 
<a href="Registration.jsp" class="btn2" style="display:block;padding:50px;">REGISTER COURSE</a> 
<a href="SchedulePartBaru.jsp" class="btn4" style="display:block;padding:50px;">CLASS SCHEDULE</a> 
<a href="PartAnnouncement.jsp" class="btn6" style="display:block;padding:50px;">ANNOUNCEMENT</a> 
<a href="AccountParticipantBARU.jsp" class="btn6" style="display:block;padding:50px;">ACCOUNT</a> 
<form name="action" method="post" style="background-color:#353c49; border: 0px; margin: 0px; padding:0px; ">
<input type="hidden" name="action" value="logout">
<a href="WelcomePage.jsp" class="btn8" style="display:block;padding:50px;">LOGOUT</a> </form> 
 
 
</div> 
<!-- SIDEBAR --> 
 
<!-- TOPBAR -->       
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "> 
 </div> 
 <!-- TOPBAR -->    
 
 
  <div class="container" style="margin: 20px 10px 0px 210px; background-color:white; height:100%; "> 
    <div class="grid-container"> 
  <div class="item1"> 
  <p style="font-size:30px;"><b>COURSE REGISTRATION</b></p><br><br> 
  
  <form action="RegistrationController" method="post" style="background-color: white; border: 0px;" >
  
<select name="courseid" style= "background-color: lightgrey;padding: 20px;border-color:grey;padding: 10px; border-radius: 10px;position: relative;  width: 50%;"> 
    <option value="0">Select Course:</option> 
    <option  value="901">Hajj</option> 
    <option  value="902">Umrah</option> 
 
  </select>  <br><br><br> 
<select name="paytype" style= "background-color: lightgrey;padding: 10px;border-color:grey;padding: 10px; border-radius: 10px;position: relative;  width: 50%;"> 
    <option  value="0">Select Payment Method:</option> 
    <option value="Cash">Cash</option> 
    <option  value="Online">Online</option> 
    </select> <br><br>
 <input type="hidden" name="action" value="register">
  <input type="submit" >
 
 
 </form>
 <br><br><br> 
  <button onclick="document.getElementById('id01').style.display='block'" id="myBtn" style="background-color: grey;color:white;position: relative; left:10px; width: 50%;border-color:grey;padding: 10px; border-radius: 10px;">Register</button> </div>           
  <div class="item2" ><img src="pic1.jpg" style="position: relative; left:10px; width: 100%; height:50%;"></div> 
  
<div id="id01" class="modal" style="max-width:700px;float:center;max-height:400px;"> 
   
  <form class="modal-content animate" action="/action_page.php" method="post"> 
     
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span> 
     <div class="modal-content"> 
    <span class="close">&times;</span> 
    <h1>ALERT!!!!</h1> 
    <p>To make a registration, participant need to pay registration fee RM 100 at mosque and upload the receipt.If already pay the registration fee click button 'PROCEED'.</p><br> 
    <button id="myBtn" style="background-color: green;color:white;position: relative; left:10px; width: 50%;border-color:green;padding: 10px; border-radius: 10px;margin-left:70px;"a href="proceedRegister.html">Proceed</a></button> 
  </div> 
    </div> 
 
 
           
   
</body> 
<script> 
// Get the modal 
var modal = document.getElementById('id01'); 
 
// When the user clicks anywhere outside of the modal, close it 
window.onclick = function(event) { 
    if (event.target == modal) { 
        modal.style.display = "none"; 
    } 
} 
</script> 
</html>