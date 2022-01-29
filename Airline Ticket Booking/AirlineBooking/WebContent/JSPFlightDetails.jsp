<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Flight Details</title>
<link rel="stylesheet" type="text/css" href="CSS_flightDetails11.css"/>
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
<div class="flight-box">
    <h1 class="flight">FLIGHT DETAILS</h1>   
        <table>
            <tr class="th">
                <th>NUM</th>
                <th>AIRLINES</th>
                <th>FROM</th>
                <th>TO</th>
                <th>TIME</th>
            </tr>
            <c:forEach var="flight" items="${listFlight}">            
                <tr class="td">
                    <td><c:out value="${flight.num}"/></td>
                    <td><c:out value="${flight.airlines}" /></td>
                    <td><c:out value="${flight.start_from}" /></td>
                    <td><c:out value="${flight.dest}" /></td>
                    <td><c:out value="${flight.time}" /></td>
                    <td><a href="<%= request.getContextPath() %>/Booking" method="post"><lable type="button" class="book" 
                    value="<c:out value="${flight.num}"/>" name="book">BOOK</lable></a></td>
                </tr>
       		</c:forEach>
       		<%
       		if(request.getAttribute("check") == null)
    		{%>
                	<h3 class="flight">FLIGHT NOT AVAILABLE...</h3>
             <%} %>
        </table>
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