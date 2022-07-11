<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<title>Announcement List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css"></head>


<body>


<!-- SIDEBAR -->
<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="SAVerfiedList.jsp" class="btn1" style="display:block; font-size:13px;">PAYMENT VERIFICATION </a>
<a href="SAschedulelist.jsp" class="btn2" style="display:block; font-size:13px;">CLASS SCHEDULE</a>
<a href="SAAnnouncementList.jsp" class="btn3" style="display:block; font-size:13px;">ANNOUNCEMENT</a>
<a href="SARegisterStaff.jsp" class="btn4" style="display:block; font-size:13px;">REGISTER STAFF</a>
<a href="SAStaffList.jsp" class="btn5" style="display:block; font-size:13px;">STAFF LIST</a>
<a href="SAAccount.jsp" class="btn6" style="display:block; font-size:13px;">ACCOUNT</a>
<a href="StaffLogin.jsp" class="btn7" style="display:block; font-size:13px;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "><img class="user" alt="" src="user.jpg"></div>
 <!-- TOPBAR --> 
 
 

	<div class="container" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:600px; ">
	
	<h2 style="text-align: center; color: BLACK; padding-bottom:2em;">STAFF ACCOUNT REGISTRATION</h3>
	
	<form action="LoginController"method="post">
	
<div class="registerstaff">
<label for="name"><b>Staff Fullname</b></label>
<input type="text" name = "name" > <br>
</div>

<div class="registerstaff">
<label for="pass"><b>Staff Password</b></label>
<input type="password" name = "pass" > <br>
</div>

<div class="registerstaff">
<label for="pass"><b>Staff Manager ID</b></label>
<input type="text" name = "manid" > <br>
</div>

<div class="registerstaff">
<label for="pass"><b>Staff Telephone Number</b></label>
<input type="number" name = "telno" > <br>
</div>

<div class="registerstaff">
<label for="pass"><b>Staff Role</b></label>
<input type="text" name = "role" > <br>
</div>

<br><br>

<a href='CreateAnnouncement.jsp?id= <%session.getAttribute("Staff_ID");%>' style= "padding:20px;border-radius:20px;font-size:15px; background-color: #4B6FE8; margin-left:1300px;">Submit</a>
<a href='CreateAnnouncement.jsp?id= <%session.getAttribute("Staff_ID");%>' style="padding:20px;border-radius:20px; font-size:15px;background-color: #e60000;">Reset</a>
