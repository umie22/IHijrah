<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<title>Schedule List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css"></head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="SAVerifiedList.jsp" class="btn1" style="display:block; font-size:15px;padding:28px;">PAYMENT VERIFICATION </a>
<a href="SAschedulelist.jsp" class="btn2" style="display:block; font-size:15px;padding:28px;">CLASS SCHEDULE</a>
<a href="SAAnnouncementList.jsp" class="btn3" style="display:block; font-size:15px;padding:28px;">ANNOUNCEMENT</a>
<a href="SARegisterStaff.jsp" class="btn4" style="display:block; font-size:15px;padding:28px;">REGISTER STAFF</a>
<a href="SAStaffList.jsp" class="btn5" style="display:block; font-size:15px;padding:28px;">STAFF LIST</a>
<a href="SAAccount.jsp" class="btn6" style="display:block; font-size:15px;padding:28px;">ACCOUNT</a>
<a href="WelcomePage.jsp" class="btn7" style="display:block; font-size:15px;">LOGOUT</a>
</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "><img class="user" alt="" src="user.jpg"></div>
 <!-- TOPBAR -->   


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:600px; ">
	
	<h2>SCHEDULE DETAILS</h2>
	
	<%
	
		String DB_DRIVER = "org.postgresql.Driver";
	   	String DB_CONNECTION = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
	   	String DB_USER = "zaiaryvqbpwwcb";	
	   	String DB_PASSWORD = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";

       Connection conn = null;
       Statement stat = null;
       ResultSet res = null;
       PreparedStatement stmt = null;
       Class.forName(DB_DRIVER).newInstance();
       conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
       %>
       <form action="ScheduleServlet" method="post">
       <%
       stat = conn.createStatement();
       String u = request.getParameter("u");
       String data = "select * from schedule where schedule_id='"+u+"'";
       res = stat.executeQuery(data);
       while(res.next()){
       %>
		
		<!-- FILL IN FORM -->
		
    		<div class="row">
      			<div class="col-25">
        		<label for="a_date">Date</label>
      			</div>
      		
      		    <input type="hidden"  name="id" value='<%=res.getString("schedule_id") %>'>
      		
      			<div class="col-75">
        		<input type="date" id="a_date" name="date" placeholder="DD-MM-YYYY" value='<%=res.getString("schedule_date") %>'>
      			</div>
   			 </div>
    
    		<div class="row">
      			<div class="col-25">
        		<label for="details">Time</label>
      			</div>
      
      			<div class="col-75">
        		<input type="time" id="time" name="time" placeholder="" min="09:00" max="18:00">
      			</div>
    		</div><br>
    		
    		<div class="row">
      			<div class="col-25">
        		<label for="details">Description</label>
      			</div>
      
      			<div class="col-75">
        		<input type="text" id="details" name="description" placeholder="Announcement details" style="height:200px" value='<%=res.getString("schedule_description") %>'>
      			</div>
    		</div><br>
    		

			  
			  <label for="cars">Choose Course:</label>
			  <select name="course" id="course">
			    <option value="901">901 - Hajj</option>
			    <option value="902">902 - Umrah</option>
			  </select>
			  <br><br>
			  
    		 	<%
            }
   			%>
  				<input type="hidden" name="action" value="updateSchedule" style="margin-left: 10px;">
  				<input type="submit" value="Update" style="margin-left: 10px;">
  				<input type="reset" style="text-align:left;">
  				</form>
    		</div>
		
		
</body>
</html>

   			
   			