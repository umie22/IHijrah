<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<title>Super Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head><link rel="stylesheet" href="main.css"></head>

<body>


<!-- SIDEBAR -->
<!-- SIDEBAR -->
<div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#353c49;position:fixed!important;z-index:1;overflow:hidden;">
<img class="logo" alt="" src="IHijrahLogo.PNG">
<h3 style="text-align: center; color: white; padding-bottom:2em;">WELCOME</h3>
<a href="SAVerifiedList.jsp" class="btn1" style="display:block; font-size:13px;">PAYMENT VERIFICATION </a>
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
<div class="divs">
    <div class="card mb-3 content">
    <h1 class="m-3 pt-3" >Account</h1>
    <div class="card-body">
    <div class="row">
        <div class="col-md-3">
            <h5>Full Name</h5>
        </div>
        <div class="col-md-9 text-secondary">
            ${Staff_Name}
        </div>

    </div>

    <hr>
    <div class="row">
        <div class="col-md-3">
            <h5>Phone</h5>
        </div>
        <div class="col-md-9 text-secondary">
            ${Staff_TelNo}
        </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-3">
                <h5>Role</h5>
            </div>
            <div class="col-md-9 text-secondary">
                ${Staff_Role}
            </div>
            </div>
            <hr>
            <input type="button" class="edit" style="background-color: #4B6FE8; margin-left:33em; margin-top:5em;" value="Edit">
          <input type="button" class="delete" onclick="document.getElementById('id01').style.display='block'" style="background-color:red;" value="Delete">
    </div>
    </div>
</div>

	
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">×</span>
  <form class="modal-content" action="/action_page.php">
    <div class="modal-container">
      <h1>Delete Account</h1>
      <p>Are you sure you want to this account?</p>
    
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="deletebtn">Delete</button>
      </div>
    </div>
  </form>
</div>
<script>
//Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
		
</body>
</html>