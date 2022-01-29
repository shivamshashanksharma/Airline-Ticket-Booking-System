<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="CSS_registration1.css"/>
</head>
<script>  
function validateform(){  
var Password=document.myform.password.value;  
var Contact=document.myform.contact.value;

if (Password.length<6)
{  
  alert("Password must be at least 6 characters long.");  
  return false;
}
if(Contact.length > 10 || Contact.length < 10 )
	{
	alert("Mobile Number must contain 10 digits");
	return false;
	}
}  
</script> 
<body>
<nav>
    <div class="menu">
    <ul>
        <li><a href="<%= request.getContextPath() %>/Home">HOME</a></li>
        <li><a href="<%= request.getContextPath() %>/About">ABOUT</a></li>
    	<li><a href="<%= request.getContextPath() %>/AirlinesDetails">FLIGHTS</a></li>
		<% if (session.getAttribute("username") == null)
   			{ %> 
   			<li><a href="<%= request.getContextPath() %>/Validation">LOGIN</a></li>
        	<li><a href="<%= request.getContextPath() %>/Registration">SIGNUP</a></li>
	        <% }else  { %>
	        <li><a href="<%= request.getContextPath() %>/Logout">LOGOUT</a></li>
        <%} %>
        <li id="icon">DARK MODE</li>
	    </ul>
</div>
</nav>
<div class="registration-box">
    <div class="registration">Registration Form</div>
  <form action="<%= request.getContextPath() %>/Registration" method="post" onsubmit="return validateform()" name="myform">
   <table>
    <tr>
     <td>First Name</td>
     <td><input type="text" class="input-field-registeration" placeholder="  firstname" name="firstname" required/></td>
    </tr>
    <tr>
     <td>Middle Name</td>
     <td><input type="text" class="input-field-registeration" placeholder="  middlename" name="middlename" required/></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" class="input-field-registeration" placeholder="  lastname" name="lastname" required/></td>
    </tr>
   	<tr>
    <tr>
    <td>Date of Birth:</td>
    <td><input type="date" class="input-field-registeration" name="date_of_birth" required/></td>
    </tr>
     <td>User Name:</td>
     <td><input type="text" class="input-field-registeration" placeholder="  username" name="username" required/></td>
    </tr>
    <tr>
     <td>Password:</td>
     <td><input type="password" class="input-field-registeration" placeholder="  password" name="password" required/></td>
    </tr>
    <tr>
    <td>Email Id:</td>
     <td><input type="email" class="input-field-registeration" placeholder="  email id" name="email" required/></td>
    </tr>
     <td>Mobile Number:</td>
     <td><input type="text" class="input-field-registeration" placeholder="  mobile number" name="contact" required/></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" class="input-field-registeration" placeholder="  address" name="address" required/></td>
    </tr>
    <tr>
        </table>
        <input type="submit" class="submit" value="Submit" />
  </form>
 </div>
 <script>
 var icon = document.getElementById("icon");

 icon.onclick=function(){

 document.body.classList.toggle("dark-theme");

 if(document.body.classList.contains("dark-theme"))
 {
     icon=document.getElementById("icon").innerHTML="LIGHT MODE";
     localStorage.setItem("theme","dark");
 }else
 {
     icon=document.getElementById("icon").innerHTML="DARK MODE";
     localStorage.setItem("theme","light");
 }
 }

 if(localStorage.getItem("theme") == null)
 {
     localStorage.setItem("theme","light");
 }

 let localData=localStorage.getItem("theme");

 if(localData == "light")
 {
     icon=document.getElementById("icon").innerHTML="DARK MODE";
     document.body.classList.remove("dark-theme");
 }else if(localData == "dark")
 {
     icon=document.getElementById("icon").innerHTML="LIGHT MODE";
     document.body.classList.add("dark-theme");
 }
</script>
</body>
</html>