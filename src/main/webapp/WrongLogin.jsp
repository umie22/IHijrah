<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <title>Login Staff</title>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  background: #c9ccd1;

}
.form-style input {
  border: 0;
  height: 50px;
  border-radius: 0;
  border-bottom: 1px solid #285882;

}
.form-style input:focus {
  border-bottom: 1px solid #007bff;
  box-shadow: none;
  outline: 0;
  background-color: #ebebeb;
}
.sideline {
  display: flex;
  width: 100%;
  justify-content: center;
  align-items: center;
  text-align: center;
  color: #ccc;

}
button {
  height: 50px;
}
.sideline:before,
.sideline:after {
  content: "";
  border-top: 1px solid #ebebeb;
  margin: 0 20px 0 0;
  flex: 1 0 20px;
  background-color: #285882;
}
 
.sideline:after {
  margin: 0 0 0 20px;

}

h4{
  text-align: center;
}


</style>
  <head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">
</head>
  <div class="container">
  <div class="row m-5 no-gutters shadow-lg">
    <div class="col-md-6 d-none d-md-block">
      <img src="https://wallpapercave.com/wp/wp2122124.jpg" class="img-fluid" style="min-height:100%;" />
    </div>
    <div class="col-md-6 bg-white p-5">
      <h4 class="pb-3" >Login</h4>
      <div class="form-style">
      
      
        <form action ="LoginController" method="post" >
          <div class="form-group pb-3">
            <label for="staffid"><b>Staff ID</b></label>
            
            <input type="text" placeholder="Staff Id" class="form-control" id="exampleInputstaffid" name="username">
          </div>
          <div class="form-group pb-3">
            <label for="email"><b>Password</b></label>
            <input type="password" placeholder="Password" class="form-control" id="exampleInputPassword1" name="userpass">
          </div>
         
          <div class="pb-2">
                   <input type="hidden" name="action" value="loginStaff">
            <button type= "submit"  name="submit" width="200px;" style="text-align: center;	margin-left: 120px; width:200px;">Sign in</button>
          </div>
        </form>
    
       
        
      </div>
 
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
        <button type="button" formaction = "" onclick="document.getElementById('id01').style.display='none'" class="deletebtn">Delete</button>
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
</html>