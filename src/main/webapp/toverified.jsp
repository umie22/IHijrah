<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
<html>
<title>Payment Verification</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head><link rel="stylesheet" href="ListStyle.css"></head>
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

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="VerfiedList.jsp" class="btn1" style="display:block; font-size:13px;">PAYMENT VERIFICATION </a>
<a href="schedulelist.jsp" class="btn2" style="display:block; font-size:13px;">CLASS SCHEDULE</a>
<a href="AnnouncementList.jsp" class="btn4" style="display:block; font-size:13px;">ANNOUNCEMENT</a>
<a href="dashboardstaff.jsp" class="btn5" style="display:block; font-size:13px;">ACCOUNT</a>
<a href="StaffLogin.jsp" class="btn8" style="display:block; font-size:13px;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "><img class="user" alt="" src="user.jpg"></div>
 <div class="container" style="margin: 20px 10px 0px 210px; background-color:lightgrey; height:600px; ">
		
    <!-- FILL IN FORM -->
    <h2>SCHEDULE</h2><br><br>
    
    <!-- FILL IN FORM -->
   <table class="table table-bordered table-striped table-hover" style="margin-left:20px; width:95%; ">
<thead style="background-color: #000000">
   <tr style="color: white">
      <th>Registration ID</th>
     <th>Participant ID</th>
     <th>Participant Name</th>
     <th>Payment ID</th>
     <th>Course ID</th>
     <th>Course Type</th>
     <th>Registration Date</th>
     <th>Registration Status</th>

    </tr>
</thead>

<tbody style="border: solid black 1px;">
<%
    Class.forName("org.postgresql.Driver");
    String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0";
    String user = "zaiaryvqbpwwcb";
    String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
    String id=request.getParameter("id");
    int num=Integer.parseInt(id);
    String sql= "select * from payment join registration using(payment_id) join participant using(participant_id) join course using (course_id) where payment_id ='"+num+"'";
    Connection con=DriverManager.getConnection(dbURL, user, pass);
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next())
    {
%> 	
<tr>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("registration_id")%></td>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("participant_id")%></td>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("participant_name")%></td>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("payment_id")%></td>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("course_id")%></td>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("course_type")%></td>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("registration_date")%></td>
	<td style=" text-align: center; border: solid black 1px;"><%=res.getString("registration_status")%></td>

            
            
    
    <form action="verifyParticipant" method="post">
    <button formaction='verify?id=<%=rs.getString("payment_id") %>'>Verify Participant</button>
    <input type="hidden" name="verify"></form>
    
    <%} %>
    </tr>
</body>


</html>