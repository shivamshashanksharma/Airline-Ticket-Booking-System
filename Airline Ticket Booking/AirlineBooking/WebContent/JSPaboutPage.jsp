<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Page</title>
<link rel="stylesheet" type="text/css" href="CSS_about1.css"/>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
<nav>
    <div class="menu">
	    <ul>
        <li><a href="<%= request.getContextPath() %>/Home">HOME</a></li>
        <li><a href="<%= request.getContextPath() %>/About">ABOUT</a></li>
    	<li><a href="<%= request.getContextPath() %>/AirlinesDetails">FLIGHTS</a></li>
		<% 
		if (session.getAttribute("username") == null)
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
<% 
if (session.getAttribute("username") == null)
   { %> 
<div class="login-about"><div class="about">About Logout</div></div>
<% }else  { %>
<div class="login-about"><div class="about">About Login</div></div>
<%} %>
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