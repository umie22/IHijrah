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
<head><link rel="stylesheet" href="ListStyle.css"></head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="SAVerifiedList.jsp" class="btn1" style="display:block; font-size:11px;padding:30px;">PAYMENT VERIFICATION </a>
<a href="SAschedulelist.jsp" class="btn2" style="display:block; font-size:11px;padding:30px;">CLASS SCHEDULE</a>
<a href="SAAnnouncementList.jsp" class="btn3" style="display:block; font-size:11px;padding:30px;">ANNOUNCEMENT</a>
<a href="SARegisterStaff.jsp" class="btn4" style="display:block; font-size:11px;padding:30px;">REGISTER STAFF</a>
<a href="SAStaffList.jsp" class="btn5" style="display:block; font-size:11px;padding:30px;">STAFF LIST</a>
<a href="ParticipantListAccount.jsp" class="btn5" style="display:block; font-size:11px;padding:30px;">PARTICIPANT LIST</a>
<a href="SAAccount.jsp" class="btn6" style="display:block; font-size:11px;padding:30px;">ACCOUNT</a>
<a href="WelcomePage.jsp" class="btn7" style="display:block; font-size:11px;padding:30px;">LOGOUT</a>

</div>

<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "><img class="user" alt="" src="user.jpg"></div>
 <!-- TOPBAR -->   


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:lightgrey; height:600px; ">
	
	
		
		<!-- FILL IN FORM -->
		<h2>STAFF LIST</h2><br><br>
		<br><br><br><br>
		<!-- FILL IN FORM -->
		
       <table class="table table-bordered table-striped table-hover" style="margin-left:20px; width:97%; ">
   <thead style="background-color: #000000">
       <tr style="color: white">
         <th>ID</th>
         <th>Name</th>
         <th>Account Status</th>         
         <th>Action</th>
         
         

        </tr>
    </thead>
    <tbody style="border: solid black 1px;">
       <%
       
       String namesession =  session.getAttribute("Staff_ID").toString();
       
       String DB_DRIVER = "org.postgresql.Driver";
	   	String DB_CONNECTION = "jdbc:postgresql://localhost:5432/postgres";
   	String DB_USER = "postgres";	
   	String DB_PASSWORD = "system";

       Connection con = null;
       Statement stat = null;
       ResultSet res = null;
       
       Class.forName(DB_DRIVER);
       con = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD);
       stat = con.createStatement();
       String data = "select * from participant";
       res = stat.executeQuery(data);
       while(res.next()){
       %>
       <tr>
         <td style=" text-align: center; border: solid black 1px;"><%=res.getString("participant_id")%></td>
         <td style=" text-align: center; border: solid black 1px;"><%=res.getString("participant_name")%></td>
         <td style=" text-align: center; border: solid black 1px;"><%=res.getString("participant_status")%></td>

         

         <td class="text-center" style=" text-align: center; border: solid black 1px;">
           <a href='SAActivateAccount.jsp?u=<%=res.getString("participant_id")%>' class="btn btn-warning" style= "padding:5px; background-color:#33cc33 ">Activate</a>
           <a href='SADeactivateParticipant.jsp?d=<%=res.getString("participant_id")%>' class="btn btn-danger" style= "padding:5px; background-color: #e60000" onclick="return confirm('Are you sure you want to deactivate this participant?')">Deactivate</a>
           
         </td>
        </tr>
        <%
       }
        %>
         
    </tbody>
</table>
	</div>
	
	
	
  </form>
  

  
<script>

function ConfirmDelete(){
if (confirm("Are you sure want to delete?") == true)
}
</script>
</body>
</html>