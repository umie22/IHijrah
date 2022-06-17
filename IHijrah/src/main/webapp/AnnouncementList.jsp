<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Product Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><link rel="stylesheet" href="ListStyle.css"></head>

<body>


<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:auto">
<img alt="" src="user.png" style="width:150px; margin: 20px 20px 0px 50px;">
<h3 style="text-align: center; color: white;">WELCOME</h3>
<a href="#" class="btn1" style="display:block;">DASHBOARD</a>
<a href="#" class="btn2" style="display:block;">PAYMENT VERIFICATION </a>
<a href="#" class="btn3" style="display:block;">COURSE NOTE</a>
<a href="#" class="btn4" style="display:block;">CLASS SCHEDULE</a>
<a href="#" class="btn5" style="display:block;">ANNOUNCEMENT</a>
<a href="#" class="btn6" style="display:block;">ACCOUNT</a>
<a href="#" class="btn8" style="display:block;">LOGOUT</a>

</div>
<!-- SIDEBAR -->

<!-- TOPBAR -->      
 <div style=" background-color: #102e44; height:100px; color:blue; padding-left:70px; "></div>
 <!-- TOPBAR -->   


	<div class="container" style="margin: 20px 10px 0px 210px; background-color:#004a80; height:600px; ">
		
		<!-- FILL IN FORM -->
		<h2>ANNOUNCEMENT LIST</h2>
		<button id="myBtn" style="position: relative; right:-400px; bottom: -100px; width: 20%;">Add Note</button>

        <table style="position: relative; right:-5px; bottom: -125px; width:100%">
        
        <tr>
          <th style="width: 10%;">ID</th>
          <th style="width: 20%;">Date</th>
          <th style="width: 55%;">Description</th>
          <th style="width: 15%;">Action</th>
        </tr>
        
        <tr>
          <td style="text-align: center;">1.</td>
          <td style="text-align: center;"></td>
          <td>Session 1<br>Penerangan Ringkas Ibadat Haji & Umrah - Falsafah & Penyucian Jiwa</td>
          <td style="text-align: center;"><input type="button" style="background-color: #4B6FE8;" value="Edit"><input type="button" style="background-color: #E73732;" value="Delete"></td>
        </tr>
  
        <tr>
          <td style="text-align: center;">2.</td>
          <td style="text-align: center;"></td>
          <td>Session 2<br>Sejarah & Pengenalan Tanah Suci & Kelebihan</td>
          <td style="text-align: center;"><input type="button" style="background-color: #4B6FE8;" value="Edit"><input type="button" style="background-color: #E73732;" value="Delete"></td>
        </tr>

        <tr>
          <td style="text-align: center;">3.</td>
          <td style="text-align: center;"></td>
          <td>Session 3<br>Pengenalan Haji & Umrah</td>
          <td style="text-align: center;"><input type="button" style="background-color: #4B6FE8;" value="Edit"><input type="button" style="background-color: #E73732;" value="Delete"></td>
        </tr>
        
        </table>
		<!-- FILL IN FORM --> 
		
	</div>
		
</body>
</html>
