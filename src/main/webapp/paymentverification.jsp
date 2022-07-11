<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<title>Payment Verification Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head><link rel="stylesheet" href="main.css"></head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:auto">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: rgb(255, 255, 255);">WELCOME</h3>
<a href="#" class="btn2" style="display:block;">PAYMENT VERIFICATION </a>
<a href="#" class="btn4" style="display:block;">CLASS SCHEDULE</a>
<a href="#" class="btn5" style="display:block;">ANNOUNCEMENT</a>
<a href="#" class="btn6" style="display:block;">ACCOUNT</a>


</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "><img class="user" alt="" src="user.jpg"></div>
 <div class="container" style="margin: 20px 10px 0px 210px; background-color:lightgrey; height:600px; ">
		
    <!-- FILL IN FORM -->
    <h2>PAYMENT VERIFICATION</h2><br><br>
    <a href="verificationlist.jsp" style=" display:block; margin-left:20px; margin-right:20px; height:5px; text-align: center; background-color: #353c49">VERIFICATION LIST</a>
    <br><br><a href="verificationlist.jsp"></a>
    <!-- FILL IN FORM -->
   <table class="table table-bordered table-striped table-hover" style="margin-left:20px; width:95%; ">
<thead style="background-color: #000000">
   <tr style="color: white">
     <th>No.</th>
     <th>Name</th>
     <th>Date</th>
     <th>Time</th>
     <th>Action</th>

    </tr>
</thead>
<tbody style="border: solid black 1px;">
  
   <tr>
     <td style=" text-align: center; border: solid black 1px;"></td>
     <td style=" text-align: center; border: solid black 1px;"></td>
     <td style=" text-align: center; border: solid black 1px;"></td>
     <td style=" text-align: center; border: solid black 1px;"></td>

    
     <td class="text-center" style=" text-align: center; border: solid black 1px;">
        <a  class="btn btn-warning" style= "background-color: #37fd12;">Verify</a>
        
      </td>
    </tr>
  
     
</tbody>
</table>
</div>



</script>
</body>
</html>
