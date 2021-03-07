<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/login.css"/> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 
<title>Login Page</title>
</head>
 <body> 
   
 	<div class="container"> 
 	<form action="loginServ" method="post"> 
 			<h1 class="account_login">ACCOUNT LOGIN</h1>
 			<p class="nameMail">USERNAME / E-MAIL</p>
 			<input class="input1" type="text" name="uname">
 			<p class="password">PASSWORD</p>
 			<input class="input1" type="password" name="password"><br/>
 			<p><a href="register.jsp">Don't you have an account?</a></p>
 			<p id="button">
 				<input onclick="document.getElementById('id01').style.display='block'" class="log_in_button" type="submit" value="Login">
 			</p>
 		</div> 
 	</form> 
 	<div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <div class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
        <p>INCORRECT PASSWORD OR E-MAIL</p>
        <p>If you don't have an account, click <a style="color: blue;" href="register.jsp">here</a> to create one.</p>
      </div>
    </div>
  </div> 
</body>
</html>