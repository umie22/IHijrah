<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<title>Staff List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="style.css">
<style>
input[type=text]{
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: grey;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
}

button:hover {
  opacity: 0.8;
}
</style>
</head>


<body>


<!-- SIDEBAR -->
<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="SAVerifiedList.jsp" class="btn1" style="display:block; font-size:11px;padding:28px;">PAYMENT VERIFICATION </a>
<a href="SAschedulelist.jsp" class="btn2" style="display:block; font-size:11px;padding:28px;">CLASS SCHEDULE</a>
<a href="SAAnnouncementList.jsp" class="btn3" style="display:block; font-size:11px;padding:28px;">ANNOUNCEMENT</a>
<a href="SARegisterStaff.jsp" class="btn4" style="display:block; font-size:11px;padding:28px;">REGISTER STAFF</a>
<a href="SAStaffList.jsp" class="btn5" style="display:block; font-size:11px;padding:28px;">STAFF LIST</a>
<a href="SAAccount.jsp" class="btn6" style="display:block; font-size:11px;padding:28px;">ACCOUNT</a>
<a href="StaffLogin.jsp" class="btn7" style="display:block; font-size:11px;padding:28px;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->     
<div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "></div> 
 <!-- TOPBAR --> 
 
 

  <div class="container" style="margin: 20px 10px 0px 310px; background-color:white; height:100%;width: 70%">
  
  	
	<%
	
		String DB_DRIVER = "org.postgresql.Driver";
   	String DB_CONNECTION = "jdbc:postgresql://localhost:5432/postgres";
	   	String DB_USER = "postgres";	
	   	String DB_PASSWORD = "system";

       Connection conn = null;
       Statement stat = null;
       ResultSet res = null;
       PreparedStatement stmt = null;
       Class.forName(DB_DRIVER).newInstance();
       conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
       %>
       <form action="LoginController" method="post">
       <%
       stat = conn.createStatement();
       String u = request.getParameter("u");
       String data = "select * from staff where staff_id='"+u+"'";
       res = stat.executeQuery(data);
       while(res.next()){
       %>
  <p style="text-align: center;font-size:30px;"><b>STAFF ACCOUNT REGISTRATION</b></p>
  <input type="hidden" name ="ID" style="margin-left:62px;" value='<%=res.getString("staff_id") %>'/> <br>
  
  
<div class="registerstaff">
<label style="margin-left:90px;" for="name"><b>Staff Fullname</b></label>
<input type="text" name ="name" style="margin-left:62px;" value='<%=res.getString("staff_name") %>'/> <br>
</div>


<div class="registerstaff">
<label style="margin-left:90px;" for="pass"><b>Staff Manager ID</b></label>
<input type="text" name ="manid" style="margin-left:45px;" value='<%=res.getInt("manager_id") %>'/> <br>
</div>

<div class="registerstaff">
<label style="margin-left:90px;" for="pass"><b>Staff Telephone Number</b></label>
<input type="text" name ="telno" value='<%=res.getString("staff_telno") %>'/> <br>
</div>

<div class="registerstaff">
<label style="margin-left:90px;" for="pass"><b>Staff Password</b></label>
<input type="text" name ="pass" style="margin-left:62px;" value='<%=res.getString("staff_password") %>'/> <br>
</div>

<div class="registerstaff">
<label style="margin-left:90px;" for="pass"><b>Staff Role</b></label>
<input type="text" name ="role" style="margin-left:96px;" value='<%=res.getString("staff_role") %>'/> <br>
</div>

    		 	<%
            }
   			%>

<input type="hidden" name="action" value="updateStaff">
<input type="submit" style="margin-top: 90px;">

</form>

</div>


</body>


</html>

  