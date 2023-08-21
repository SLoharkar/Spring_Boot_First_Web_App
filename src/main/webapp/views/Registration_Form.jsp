<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration or Sign Up form in HTML CSS </title> 
  <!--    <link rel="stylesheet" href="Registration_Form_style.css">-->
  <style>
 @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #4070f4;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
  height: 52px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
} 
  </style>
   </head>
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>  
   
<body>
  <div class="wrapper">
    <h2>Registration</h2>
    
    <form id="form1" action="Login" method="post">
      <div class="input-box">
        <input type="text" id="uname" name="uname" placeholder="Enter your name" required>
      </div>
      <div class="input-box">
        <input type="text" id="email" name="email" placeholder="Enter your email" required>
      </div>
      <div class="input-box">
        <input type="password" id="crpassword" name="crpassword" placeholder="Create password" required>
      </div>
      <div class="input-box">
        <input type="password" id="copassword" name="copassword" placeholder="Confirm password" required>
      </div>
      <div class="policy">
        <input id="policy" type="checkbox" required>
        <h3>I accept all terms & condition</h3>
      </div>
      <div class="input-box button">
        <input type="button" value="Register Now" onclick="verify()">
      </div>
      <div class="text">
        <h3>Already have an account? <a href="#">Login now</a></h3>
      </div>
     </form>
  </div>
</body>
</html>

<script>
function verify()
{
	  var uname = document.getElementById("uname").value;  
	  var email = document.getElementById("email").value;
	  var policy = document.getElementById("policy");
	  var pw1 = document.getElementById("crpassword").value;  
	  var pw2 = document.getElementById("copassword").value;  
	  
	  
 	  if(uname == "" || email == "" || pw1 == "" || pw2 == "" || !policy.checked)
	  {
 		 swal("Please fill out this field");
		 return false;
	  }
 	  else if(pw1 != pw2) 
	  {  
		swal("Password did not match");  
	  }
	  else
	  {  
		  swal("Registration Sucessful");
		  setTimeout(formsubmit, 3000);
	  }  
}
function formsubmit()
{
	var form = document.getElementById("form1");
	form.submit();
	form.reset();
}
</script>