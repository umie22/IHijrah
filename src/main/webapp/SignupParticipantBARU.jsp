<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<style>

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
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
  width: 100%;
}

button:hover {
  opacity: 0.8;
}


.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  background: white;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  background: white;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
   
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
.grid-container {
  display: grid;
  grid-template-columns: auto auto ;
  background-color: white;
  height: 100%;
  
}

.grid-container > div {
  background-color: white;
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
  height: 100%;
}
.item1 {

  grid-row-start: 1;
  grid-row-end: 1;
}
.item1 {

 height: 250px;
}
</style>
</head>
<body>


<div class="grid-container">

 <div class="item1">
<form action="AccountServlet" method="post">
  <div class="imgcontainer">
    <img src="pic4.jpg" style="width:80%;height:500px;">
  </div>
</div>
<div class="item1">
 <h2 style="text-align:center;font-size:30px;">Sign Up</h2>
  <div class="container">
  <div>
  <label for="name" style="font-size:20px;"><b>Full Name</b></label>
    <input type="text" placeholder="Enter full name" name="name" required>
  </div>
<br>
<div>
	<label for="PhoneNo" style="font-size:20px;"><b>Phone Number</b></label>
    <input type="text" placeholder="Enter Phone Number" name="PhoneNo" required>
</div>
<br>
<div>
    <label for="uname" style="font-size:20px;"><b>Email</b></label>
    <input type="text" placeholder="Enter email" name="uname" required>
</div>
<br>
<div>
	<label for="psw" style="font-size:20px;"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
</div>
<br>
<div>
	<input type="hidden" name="action" value="addAcc" >
	<button type="submit">Sign Up</button>
	<a href="#" class="login" style="text-align:center;font-size:15px;" >Already have an account? Log In</a>
</div>
       
    
  </div>
</div>
 
</form>
  </div>
</body>
</html>