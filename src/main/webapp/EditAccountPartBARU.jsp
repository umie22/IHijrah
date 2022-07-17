<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%> 
<%@page import="java.sql.ResultSet" %> 
<%@page import="java.sql.Statement" %> 
<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement" %> 
<%@page import="java.sql.Connection" %> 
<!DOCTYPE html> 
<html> 
<title>Edit Account</title> 
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
<a href="Registration.jsp" class="btn2" style="display:block;padding:50px;">REGISTER COURSE</a> 
<a href="SchedulePartBaru.jsp" style="display:block;padding:50px;">CLASS SCHEDULE</a>  
<a href="PartAnnouncement.jsp" style="display:block;padding:50px;">ANNOUNCEMENT</a> 
<a href="AccountParticipantBARU.jsp" class="btn6" style="display:block;padding:50px;">ACCOUNT</a> 
<form name="action" method="post" style="background-color:#353c49; border: 0px; margin: 0px; padding:0px; ">
<input type="hidden" name="action" value="logout">
<a href="" class="btn8" style="display:block;padding:50px;">LOGOUT</a> </form>
 
</div> 
<!-- SIDEBAR --> 
 
<!-- TOPBAR -->       
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "> 
 
 </div> 
 <!-- TOPBAR -->    
 
 <div class="container" style="margin: 20px 10px 0px 210px; background-color:white; height:100;"> 
  
  <p style="font-size:25px;text-align:center;" >ACCOUNT </p>   
   
  <% 
 String DB_DRIVER = "org.postgresql.Driver"; 
 String DB_CONNECTION = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0"; 
 String DB_USER = "zaiaryvqbpwwcb";  
 String DB_PASSWORD = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b"; 
 
 Connection con = null; 
 Statement st = null; 
 ResultSet res = null; 
 PreparedStatement stmt = null; 
 Class.forName(DB_DRIVER).newInstance(); 
 con = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD); 
%>  
   
   <form method="post" style="padding:50px 50px 50px 50px;border:solid 1px black; background-color:#C3C6C8; border-radius:20px; text-align:center;"> 
 
   
  <% 
 st = con.createStatement(); 
 String id = request.getParameter("u"); 
 String data = "select * from participant where participant_id='"+id+"'"; 
 res = st.executeQuery(data); 
 while(res.next()){ 
%>   
           
  <div class="part"> 
        <label for="partN">Name</label>        
        <input type="text" id="partN" name="partName" style="margin-left:55px;" value='<%=res.getString("participant_name")%>' /> 
     </div> 
      
     <br><br> 
      
  <div class="part"> 
   <label for="partE">Email</label>
   
   <input type="text" id="partE" name="partEmail" style="margin-left:55px;" value='<%=res.getString("participant_email")%>' /> 
     </div> 
      
     <br><br> 
 
 
  <div class="part"> 
        <label for="partP">Password</label>  
        <input type="text" id="partP" name="partPass" style="margin-left:35px;" value='<%=res.getString("participant_password")%>' /> 
     </div> 
   
  <br><br> 
   
  <div class="part"> 
        <label for="partP">Phone Number</label>  
        <input type="text" id="partP" name="partPhone"  value='<%=res.getString("participant_phoneno")%>' /> 
     </div> 
      
           <br> 
     
       
<% 
 } 
%> 
      <form method="Get" value="updateAcc"> 
      <input type="submit" style="margin-left: 20px;"> 
      <input type="reset" style="text-align:left;"> 
      </form> 
       
       
 
    
   
 </form> 
   
  </div>    
</body> 
 
 
</html> 
<% 
 String name = request.getParameter("partName"); 
 String email = request.getParameter("partEmail"); 
 String password = request.getParameter("partPass"); 
 String phone = request.getParameter("partPhone"); 
  
  
 if(name!=null && email!=null && password!=null && phone!=null){ 
  String query = "update participant set participant_name=?, participant_email=?, participant_password=?, participant_phoneno=? where participant_id='"+id+"'"; 
  stmt = con.prepareStatement(query); 
  stmt.setString(1,name); 
  stmt.setString(2,email); 
  stmt.setString(3,password); 
  stmt.setString(4,phone); 
   
 
        System.out.println("masuk"); 
   
  stmt.executeUpdate(); 
  response.sendRedirect("AccountParticipantBARU.jsp"); 
 } 
 session.setAttribute("participant_name", name);  
 session.setAttribute("participant_email", email); 
 session.setAttribute("participant_phoneno", phone); 
%>