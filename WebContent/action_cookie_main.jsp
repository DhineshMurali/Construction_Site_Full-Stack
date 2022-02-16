<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
         
   Cookie username = new Cookie("username",
 			  request.getParameter("username"));
   Cookie email = new Cookie("email",
			  request.getParameter("email"));
 
   HttpSession ses = request.getSession();
   
   username.setMaxAge(60*60*10); 
   email.setMaxAge(60*60*10); 
 
   // Add both the cookies in the response header.
   response.addCookie( username );
   response.addCookie( email );
%>
 
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SIGN UP JSP</title>
<style>

h3{
color:green;

}

body{
 background: linear-gradient(to right, #02aab0, #00cdac); 
}
.container{
background: linear-gradient(to right, #f7f8f8, #acbb78);
margin-left:300px;
margin-right:300px;
margin-top:100px;
text-align:center;
}
button{
padding:5px;
margin-left:540px;
}
</style>

</head>
<body>
 <div class="container">
<b>Username:</b>
   <%= request.getParameter("username")%>
<b>Email:</b>
   <%= request.getParameter("email")%>
   <br>
 <h3>YOU HAVE SIGNED_IN SUCCESSFULLY</h3>

 <h4>Signed-in Details:</h4>

 <p>session id:<%=ses.getId()  %></p>
 <p>session creation time:<%=new Date(ses.getCreationTime())  %></p>
 <p>session accessed time:<%=new Date(ses.getLastAccessedTime()) %></p>
 

 </div>
<button><a href="login.jsp">GO TO LOGIN PAGE</a></button>
 <script>

var today = new Date();

var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();

var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

var dateTime = date+' '+time;
document.getElementById("date").innerHTML = dateTime;
</script>
 
</body>

</html>