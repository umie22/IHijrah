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
    background-image: url("https://images4.alphacoders.com/719/719005.jpg");
  

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
      <img src="https://th.bing.com/th/id/R.1953bfa6691c4570f26be6000dc8388f?rik=940f%2fVtK3utMyA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-SEzqdmCAXwY%2fUUdIqCn37fI%2fAAAAAAAAC5E%2fTHgxCbpOgmg%2fs1600%2fKaaba%2bHD%2bWallpapers%2b2013%2b(4).jpg&ehk=YIT75F99GXZRv3UvAmweXb1Uluu4%2bXLj0xwem1NFVHw%3d&risl=&pid=ImgRaw&r=0g" class="img-fluid" style="min-height:100%;" />
    </div>
    <div class="col-md-6 bg-white p-5">
      <h4 class="pb-3" >Login</h4>
      <div class="form-style">	
      
      
        <form action ="PLogin" method="post" >
          <div class="form-group pb-3">
            <label for="Email"><b>User Email</b></label>
            
            <input type="text" placeholder="User Email" class="form-control" id="exampleInputstaffid" name="participant_email">
          </div>
          <div class="form-group pb-3">
            <label for="email"><b>Password</b></label>
            <input type="password" placeholder="Password" class="form-control" id="exampleInputPassword1" name="participant_password">
          </div>
          
                 Do not have an account yet?<a href="SignupParticipantBARU.jsp" >Click here</a> to Sign up. <br><br>	
          
         
          <div class="pb-2">
   		<input type="hidden" name="action" value="login" >             
   		<button type= "submit" value="Submit" width="200px;" style="text-align: center;	margin-left: 120px; width:200px;">Log in</button>
          </div>
        </form>
       
        
      </div>
 
    </div>
  </div>
</div>
</html>


