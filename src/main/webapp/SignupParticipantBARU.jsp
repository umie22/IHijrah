<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <title>Sign up Participant	</title>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
  background: #c9ccd1;
  background-image: url("https://alfa-logistics-family.com/wp-content/uploads/2021/06/selangor-malaysia-scaled.jpg");
  background-position: center;
  background-repeat: no-repeat;
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
  <div class="container" >
  <div class="row m-5 no-gutters shadow-lg">

    <div class="col-md-6 bg-white p-5">
      <h4 class="pb-3">Sign Up</h4>
      <div class="form-style">	
      
      
        <form action ="AccountServlet" method="post" name="myForm" >
                  <div class="form-group pb-3">
            <label for="email"><b>Full Name</b></label>
            <input type="text" placeholder="Abu Bin Samad" class="form-control" id="exampleInputPassword1" name="partName" required>
          </div>
                    <div class="form-group pb-3">
            <label for="email"><b>Email</b></label>
            <input type="email" placeholder="abu@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="form-control" id="email-field" name="partEmail" required >
          </div>
          <div class="form-group pb-3">
            <label for="staffid"><b>Phone Number</b></label>
          
            <input type="tel" placeholder="0123949384" maxlength="11" pattern="[0-9]{10,11}" class="form-control" id="exampleInputstaffid" name="partPhone" required>
          </div>
          <div class="form-group pb-3">
            <label for="email"><b>Password</b></label>
            <input type="password" placeholder="Password" class="form-control" id="exampleInputPassword1" name="partPass" required>
          </div>
         
          <div class="pb-2">
 		<input type="hidden" name="action" value="addAcc" >    		
 		<button type= "submit" value="Submit" width="200px;" style="text-align: center;	margin-left: 120px; width:200px;">Sign Up</button>
          </div>
        </form>
    
       
        
      </div>
 
    </div>
  </div>
</div>
<script>



function signupsuccess() {
  alert("Your account has been created successfully");
}
</script>
</html>


