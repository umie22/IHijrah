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
<a href="VerifiedList.jsp" class="btn1" style="display:block; font-size:11px;padding:28px;">PAYMENT VERIFICATION </a>
<a href="schedulelist.jsp" class="btn2" style="display:block; font-size:11px;padding:28px;">CLASS SCHEDULE</a>
<a href="AnnouncementList.jsp" class="btn3" style="display:block; font-size:11px;padding:28px;">ANNOUNCEMENT</a>
<a href="Account.jsp" class="btn6" style="display:block; font-size:11px;padding:28px;">ACCOUNT</a>
<a href="StaffLogin.jsp" class="btn7" style="display:block; font-size:11px;padding:28px;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
<div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "></div> <!-- TOPBAR --> 
 
 

	<div class="container" style="margin: 20px 10px 0px 210px; background-color:white; height:100%; ">
	
	<p style="font-size:30px;text-align:center;"><b>ANNOUNCEMENT DETAIL</b></p>		
		<!-- FILL IN FORM -->
		<form action="" method="post">
		
			<div class="row">

			
    		<div class="row">
      			<div class="col-25">
        		<label for="a_date">Date</label>
      			</div>
      		
      			<div class="col-75">
        		<input type="date" id="a_date" name="Date" placeholder="DD-MM-YYYY" required>
      			</div>
   			 </div>
    
    		<div class="row">
      			<div class="col-25">
        		<label for="details">Details</label>
      			</div>
      
      			<div class="col-75">
        		<textarea id="details" name="Detail" placeholder="Announcement details" style="height:200px" required></textarea>
      			</div>
    		</div><br>
    
    		<div class="row">
  				<input type="submit" style="margin-left:20px;">	
  				<input type="reset" style="text-align:left; ">
    		</div>
  		</form>
		<!-- FILL IN FORM --> 
		
	</div>
		
</body>
</html>
<%
String a =request.getParameter("id");
String b = request.getParameter("Date");
int id = Integer.parseInt(session.getAttribute("Staff_ID").toString()); 
Connection conn = null;
PreparedStatement stat = null;
String c = request.getParameter("Detail");

String DB_DRIVER = "org.postgresql.Driver";
	String DB_CONNECTION = "jdbc:postgresql://localhost:5432/postgres";
	String DB_USER = "postgres";	
	String DB_PASSWORD = "system";

if(b!=null && c!=null){
	conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
	String data = "insert into announcement(announcement_date,announcement_detail,staff_id) values(?,?,?)";
	
	stat = conn.prepareStatement(data);

	stat.setString(1,b);
	stat.setString(2,c);
	stat.setInt(3,id);

	stat.executeUpdate();
	response.sendRedirect("AnnouncementList.jsp");
}



%>