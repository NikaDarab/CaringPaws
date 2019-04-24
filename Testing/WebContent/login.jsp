<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register and Login</title>
	
	<link rel ="stylesheet" href="/Software_Eng_Project1/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
	<link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<style>
		a {
			margin-top: 20px !important;
		}
		
		.alert {
			margin: 15px auto;
			max-width: 900px;
		}
		
		.btn-primary {
			background-color: rgb(246, 3, 101);
		}
	</style>
</head>
<body style="background-color: #eee">
<%@include file="navbar.jsp" %>
	<%
		if(request.getAttribute("createdAccount") != null) {
			%>
				<div id="accountCreatedAlert" class="alert alert-success" role="alert">
				  Successfully created user account!
				</div>
			<%
		}
	
		if(request.getAttribute("error") != null) {
			%>
				<div class="alert alert-danger" role="alert">
				  Error signing in or registering. Please try again later
				</div>
			<%
		}
		
		if(request.getAttribute("errorMes") != null) {
			%>
				<div class="alert alert-danger" role="alert">
				  You have to be logged in to do that!
				</div>
			<%
		}
	%>
	<div style="padding: 40px; padding-top: 15px;">
	<h1 style="margin-bottom: 25px;">Register / Login</h1>
	
	<form action="/Testing/LoginController" method="post" style="max-width: 500px !important;">
		<div class="form-group">
		    <label for="username">What is your user name?</label>
		    <input class="form-control" name="username" id="usernameID" placeholder="Username..." />
		</div>
		<div class="form-group">
		  <label for="password">What is your password</label>
		  <input class="form-control" type="password" name="password" id="passwordID" placeholder="Password..." />
	    </div>
		<div class="form-group" style="padding-top: 20px;">
		  <button id="loginButton" class="btn btn-primary" type="submit" name="submit" value="login">Login</button>
		  <button id="registerButton" class="btn secondary" type="submit" name="submit" value="register">Register</button>
		</div>
	</form>
	</div>
</body>
</html>