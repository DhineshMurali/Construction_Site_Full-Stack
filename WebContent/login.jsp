<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="icon.css">
</head>
<body>
	
 <div class="login-page">
  <div class="form">
   
    <form action="Login" method="post" class="login-form">
      <input type="text" name ="uname" placeholder="username"/>
      <input type="password" name ="pass" placeholder="password"/>
      <button value="Login">login</button>
      <p class="message">Not registered? <a href="action.jsp">Create an account</a></p>
    </form>
  </div>
</div>


</body>
<script type="text/javascript">
$('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});


</script>
</html>
