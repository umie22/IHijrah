<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
<html>
<title>Schedule Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head><link rel="stylesheet" href="style.css"></head>
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
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 0px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
  padding:10px;
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

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="SAVerfiedList.jsp" class="btn1" style="display:block; font-size:11px;padding:28px;">PAYMENT VERIFICATION </a>
<a href="SAschedulelist.jsp" class="btn2" style="display:block; font-size:11px;padding:28px;">CLASS SCHEDULE</a>
<a href="SAAnnouncementList.jsp" class="btn3" style="display:block; font-size:11px;padding:28px;">ANNOUNCEMENT</a>
<a href="SARegisterStaff.jsp" class="btn4" style="display:block; font-size:11px;padding:28px;">REGISTER STAFF</a>
<a href="SAStaffList.jsp" class="btn5" style="display:block; font-size:11px;padding:28px;">STAFF LIST</a>
<a href="SAAccount.jsp" class="btn6" style="display:block; font-size:11px;padding:28px;">ACCOUNT</a>
<a href="WelcomePage.jsp" class="btn7" style="display:block; font-size:13px;">LOGOUT</a>
</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
<div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "></div> 
<!-- TOPBAR -->
<div class="container" style="margin: 20px 10px 0px 210px; background-color:lightgrey; height:600px; ">
    
    <!-- FILL IN FORM -->
    <p style="font-size:30px;text-align:center;"><b>SCHEDULE</b></p>
    
    <!-- FILL IN FORM -->
    
<table class="styled-table" style="position: relative; right:-5px; width:99%">   <thead style="background-color: #000000">

<thead>
       <tr>
         <th style=" text-align: center; ">ID</th>
         <th style=" text-align: center; ">Description</th>
         <th style=" text-align: center; ">Date</th>
         <th style=" text-align: center; ">Time</th>
         <th style=" text-align: center; ">Action</th>
         
         </tr>
    </thead>

<tbody>

       <%
       String DB_DRIVER = "org.postgresql.Driver";
     String DB_CONNECTION = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
     String DB_USER = "zaiaryvqbpwwcb";  
     String DB_PASSWORD = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";

       Connection con = null;
       Statement stat = null;
       ResultSet res = null;
       
       Class.forName(DB_DRIVER);
       con = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD);
       stat = con.createStatement();
       String data = "select * from schedule order by schedule_id";
       res = stat.executeQuery(data);
       while(res.next()){
       %>
  
   <tr>
     <td style=" text-align: center; border: solid black 1px;"><%=res.getString("schedule_id")%></td>
     <td style=" text-align: center; border: solid black 1px;"><%=res.getString("schedule_description")%></td>
     <td style=" text-align: center; border: solid black 1px;"><%=res.getString("schedule_date")%></td>
     <td style=" text-align: center; border: solid black 1px;"><%=res.getString("schedule_time")%></td>


    
     <td class="text-center" style=" text-align: center; border: solid black 1px;">
        <a href='ViewSchedule.jsp?u=<%=res.getString("schedule_id")%>' class="btn btn-warning" style= "padding:10px;border-radius:20px;font-size:15px; background-color: #4B6FE8;border-color:#4B6FE8;">Edit</a>
        <button onclick="document.getElementById('id05').style.display='block'" id="myBtn" style= "padding:10px;border-radius:20px;font-size:15px; background-color: #e60000;border-color:#e60000;">Delete</button>
      </td>
    </tr>
         <%
       }
        %>
     
</tbody>

</table>

<br><br>
 <a href="SACreateSchedule.jsp <%session.getAttribute("Staff_ID");%>" style="  margin-left:10px;font-size:15px;text-align: left; background-color: #353c49; border-radius: 10px; padding:20px;">Add Schedule</a>
    <br><br>
  </div>


 <div id="id05" class="modal">
  
  <form class="modal-content animate" action="/action_page.php" method="post">
    
      <span onclick="document.getElementById('id05').style.display='none'" class="close" title="Close Modal">&times;</span>
     <div class="modal-content">
    <span class="close">&times;</span>
    <h1>ALERT!!!!</h1>
    <p>Are you sure you want to delete this schedule?</p><br><br><br>
  <a href="SACreateSchedule.jsp"  class="btn btn-danger" style="background-color: green;color:white;position: relative; font-size:15px;border-color:green;padding: 10px; border-radius: 10px;margin-right:120px;"onclick="ConfirmDelete()" id="id02">Yes</a>
    <button id="myBtn" style="background-color: Red;color:white;position: relative; left:10px; border-color:red;padding: 10px; border-radius: 10px;margin-right:120px;"a href="proceedRegister.html">No</a></button>
  </div>
    </div>  

</body>

<script>
//Get the modal
var modal = document.getElementById('id05');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

</script>
</html>