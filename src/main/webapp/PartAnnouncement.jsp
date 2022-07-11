<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Announcement</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css">
<style>
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.40);
    background-color: white;
}
.styled-table thead tr {
    background-color: #007c98;
    border-radius: 10px;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}


.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #008198;
}

tr:hover {
color: #5b0363;
font-weight: bold;}

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
  background-color: #f9f9f9;
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
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.notification .badge {
  position: absolute;
  top: 15px;
  right: 12px;
  padding: 5px 10px;
  border-radius: 50%;
  background-color: red;
  color: white;
}
</style></head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white;">WELCOME</h3>
<a href="#" class="btn1" style="display:block; padding:35px;">DASHBOARD</a>
<a href="#" class="btn2" style="display:block;padding:35px;">REGISTER COURSE</a>
<a href="#" class="btn4" style="display:block;padding:35px;">CLASS SCHEDULE</a>
<a href="#" class="btn5" style="display:block;padding:35px;">ANNOUNCEMENT</a>
<a href="#" class="btn6" style="display:block;padding:35px;">ACCOUNT</a>
<a href="#" class="btn8" style="display:block;padding:35px;">LOGOUT</a>

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
	<p style="float: left; font-size: 30px;">ANNOUNCEMENT</p><br><br><br><br><br><br><br><br><br>
	<table class="styled-table"  style="position: relative; right:-5px; width:99%">
    <thead>
        <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Time</th>
            <th>Description</th>
            <th>Availability</th>
        </tr>
    </thead>
    <tbody>
        <tr>
          <td style="text-align: center;">1.</td>
          <td style="text-align: center;"></td>
          <td style="text-align: center;"></td>
          <td>Session 1<br>Penerangan Ringkas Ibadat Haji & Umrah - Falsafah & Penyucian Jiwa</td>
          <td style="text-align: center;"></td>
        </tr>
       <tr>
          <td style="text-align: center;">2.</td>
          <td style="text-align: center;"></td>
          <td style="text-align: center;"></td>
          <td>Session 1<br>Penerangan Ringkas Ibadat Haji & Umrah - Falsafah & Penyucian Jiwa</td>
          <td style="text-align: center;"></td>
        </tr>
       
        <tr>
         <td style="text-align: center;">3.</td>
          <td style="text-align: center;"></td>
          <td style="text-align: center;"></td>
          <td>Session 3<br>Pengenalan Haji & Umrah</td>
          <td style="text-align: center;"></td>
          </tr>
        <!-- and so on... -->
    </tbody>
</table>
</div>	
</body>
</html>