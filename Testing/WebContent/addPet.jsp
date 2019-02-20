<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Here is where you add pets</h1>
	
	<form action="/Testing/addPet" method="post">
		<div>
		  <label for="name">What is your pets name?</label>
		  <input name="name" id="nameID" placeholder="name" />
	    </div>



		<div>
		  <button type="submit" name="submit" value="login">Login</button>
		  <button type="submit" name="submit" value="register">Register</button>
		</div>
	</form>
</body>
</html>