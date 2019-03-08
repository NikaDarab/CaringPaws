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
	</style>
</head>
<body style="background-color: #eee">
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: white; padding-bottom: 20px;">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
      	<a href="/Testing">
	        <img style="height: 60px; width: 100px; margin-top: 15px; margin-right: 20px;" src="http://liam.mcmains.net/logo.png" />      	
      	</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#contact">CONTACT</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="#ourteam">OUR TEAM</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#reviews">REVIEWS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#care providers">CARE PROVIDERS</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="#pets">PETS</a>
      </li>
	   <li class="nav-item">
        <a class="nav-link" href="#services">SERVICES</a>
      </li><li class="nav-item">
        <a class="nav-link" href="login">REGISTER</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="login">LOGIN</a>
      </li>
    </ul>
  </div>
</nav>
	<div style="padding: 40px; padding-top: 15px;">
	<h1 style="margin-bottom: 25px;">Register / Login</h1>
	
	<form action="/Testing/login" method="post" style="max-width: 500px !important;">
	    <div class="form-group">
		  <label for="name">What is your name?</label>
		  <input class="form-control" name="name" id="nameID" placeholder="Name..." />
	    </div>
		<div class="form-group">
		    <label for="username">What is your user name?</label>
		    <input class="form-control" name="username" id="usernameID" placeholder="Username..." />
		</div>
		<div class="form-group">
		  <label for="password">What is your password</label>
		  <input class="form-control" name="password" id="passwordID" placeholder="Password..." />
	    </div>
		<div class="form-group" style="padding-top: 20px;">
		  <button class="btn btn-primary" type="submit" name="submit" value="login">Login</button>
		  <button class="btn secondary" type="submit" name="submit" value="register">Register</button>
		</div>
	</form>
	</div>
</body>
</html>