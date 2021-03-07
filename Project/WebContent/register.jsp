<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<link rel="stylesheet" type="text/css" href="css/login.css"/>
<title>Register</title>
</head>
<body>  
 	<div class="container">
 	<form action="registerServlet" method="post"> 
 			<h1 class="account_login">REGISTER</h1>
 			<p class="nameMail">Name / Surname</p>
 			<input class="input1" type="text" name="name">
 			<p class="nameMail">E-mail</p>
 			<input class="input1" type="text" name="email">
 			<p class="password">Password</p>
 			<input class="input1" type="password" name="password">
 			<p class="password">Adress</p>
 			<input class="input1" type="text" name="adress">
 			<p class="password">Gender</p>
 			<input class="input1" type="text" name="gender">
 			<p class="password">Age</p>
 			<input class="input1" type="text" name="age">
 			<p class="password">Birth Date</p>
 			<input class="input1" type="text" name="birthdate">
 			<p class="password">Phone Number</p>
 			<input class="input1" type="text" name="phonenumber"><br/> 
 			<p id="button"><input class="log_in_button" type="submit" value="SEND" name="Login"></p>
 		</div> 
 	</form> 
</body>
</html>