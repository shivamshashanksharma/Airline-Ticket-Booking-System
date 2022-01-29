<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS_login1.css"/>
</head>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
/* session.invalidate(); */
%>
<body>
<nav>
    <div class="menu">
    <ul>
        <li><a href="<%= request.getContextPath() %>/Home">HOME</a></li>
        <li><a href="<%= request.getContextPath() %>/About">ABOUT</a></li>
    	<li><a href="<%= request.getContextPath() %>/AirlinesDetails">FLIGHTS</a></li>
		<li><a href="<%= request.getContextPath() %>/Registration">SIGNUP</a></li>
		<li id="icon">DARK MODE</li>
	    </ul>
</div>
</nav>
<%if(session.getAttribute("username")==null)
	{%>
<div class="login-customer">
            <div class="login">Login</div>
            <form class="input-group" action="<%= request.getContextPath() %>/Validation" method="post">
                <input type="text" class="input-field" placeholder="User ID" name="username" required>
                <input type="password" class="input-field" placeholder="Password" name="password" required>
                <input type="submit" class="submit" value="Submit" />
            </form>
            <div class="donthave">
                <label>Dont have Account?</label>
                <a href="<%= request.getContextPath() %>/Registration">
                <input type="submit" class="signup" value="Sign Up" />
                </a>
           </div>
</div>
<%}else{ 
	request.getRequestDispatcher("/JSPhomePage.jsp").forward(request, response);
}%>
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