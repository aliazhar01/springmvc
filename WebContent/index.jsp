
 
 <html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>  
body{  

  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=pa0ssword], textarea {  
  width: 50%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 50%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
<body>  


${msg}


 <script type="text/javascript">
 function validate()
 {   
	 
		var fullname = document.registeration.fullName.value;
		var EmailId =document.registeration.EmailId.value;
		  
		var status = false;
		if (fullname == "") 
		{
			document.getElementById("fullNameL").innerHTML = "Input full name";
			status = false;
		} 
		if (EmailId=="")
		{
			document.getElementById("Emails").innerHTML = "Input Email";
			status = false;
		} 
		return status;
	}
 
 var check = function() {
	  if (document.getElementById('password').value == document.getElementById('confirm_password').value) 
	  {
	    document.getElementById('message').style.color = 'green';
	    document.getElementById('message').innerHTML = 'matching';
	  } 
	  else 
	  {
	    document.getElementById('message').style.color = 'red';
	    document.getElementById('message').innerHTML = 'not matching';
	  }
	}
 
</script> 

<!-- <form action="registration.do" method="post" onsubmit="return validate()" name="registeration"> -->
<form action="registration.do" method="post" >  
  <div class="container">  
  <center>  <h1> Student Registeration Form</h1> </center>  
  <hr>  
  <label> FullName </label>   
<input type="text"  name="fullName" placeholder= "Firstname"  >
<span id="fullNameL" style="color:red"></span><br>  
<label for="email"><b>Email</b></label>  
    <input type="email" placeholder="Enter email"  name="EmailId" >  
    <span id="Emails" style="color:red"></span><br> 

<label for="DOB"><b>DOB</b></label>  
    <input type="date" placeholder="Enter DOB" name="dob" >  <br>

<label for="Contact"><b>Contact</b></label>  
    <input type="number" placeholder="Enter Contact" name="contact" >  <br>

<label for="Address"><b>Address</b></label>  
    <input type="text" placeholder="Enter Address" name="address" >  <br>

<label for=" Gender" > </label>  
male<input type="radio" value="Male" name="gender"  >   
female<input type="radio" value="Female" name="gender">   
other<input type="radio" value="Other" name="gender"><br> 
  
 <label  for="Password"></label>  
    <input type="text" placeholder="Enter Password" id="password" name="password" />  <br>
    <label for="Confirmpassword"></label>  
    <input type="text" placeholder="Enter conPassword" id="confirm_password"  onkeyup='check();' name="cnfpassword" />
      
    <span id="message"></span><br> 



 <input type="submit"  value="save" >
 <input type="reset" value="reset"> 
 
  
 
</form>
</body>
</html>
 