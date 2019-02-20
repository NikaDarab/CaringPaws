<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1>This is where you login</h1>
	
	<form action="/Testing/login" method="post">
	    <div>
		  <label for="name">What is your name?</label>
		  <input name="name" id="nameID" placeholder="name" />
	    </div>
		<div>
		    <label for="username">What is your user name?</label>
		    <input name="username" id="usernameID" placeholder="username" />
		</div>
		<div>
		  <label for="password">What is your password</label>
		  <input name="password" id="passwordID" placeholder="password" />
	    </div>
		<div>
		  <button type="submit" name="submit" value="login">Login</button>
		  <button type="submit" name="submit" value="register">Register</button>
		</div>
	</form>
</body>
</html>