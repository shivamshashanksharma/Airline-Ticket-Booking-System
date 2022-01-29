<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="airline.model.airline" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS_search11.css"/>
</head>
<body>
<nav>
<% 
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
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
<div class="login-search">
            <div class="search">Search</div>
            <form class="input-group" action="<%= request.getContextPath() %>/AirlinesDetails" method="post">
            <select name="start_from" required>
                <option value="choose" class="input-field">FROM</option>
                <option value="mumbai">Mumbai</option>
                <option value="pune">Pune</option>
                <option value="bangalore">Bangalore</option>
                <option value="chennai">Chennai</option>
            </select>
            <select name="dest" required>
                <option value="choose" class="input-field">TO</option>
                <option value="Bangalore">Bangalore</option>
                <option value="pune" >Pune</option>
                <option value="nagpur">Mumbai</option>
                <option value="chennai">Chennai</option>
            </select>
                <input type="submit" class="search-btn" value="Search" />
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