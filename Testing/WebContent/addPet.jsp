<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Pet</title>

<link rel="stylesheet" href="/Software_Eng_Project1/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
	.addPetContainer {
		max-width: 700px;
		margin: 20px auto;
	}
</style>

</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="addPetContainer">
		<h1>Add Your Pet</h1>
	
		<form action="/Testing/addPet" method="post">
			<div>
				<label for="name">What is your pets name?</label> 
				<input name="name" id="nameID" placeholder="name" />
			</div>
			
			<div>
				<label for="name">What is your pets breed?</label> 
				<input name="name" id="nameID" placeholder="name" />
			</div>
			
			<div>
				<label for="name">What is your pets age?</label> 
				<input type="number" name="name" id="nameID" placeholder="name" />
			</div>
	
			<div>
				<button class="btn btn-primary" type="submit" name="submit" value="Add">Login</button>
			</div>
		</form>
	</div>
</body>
</html>