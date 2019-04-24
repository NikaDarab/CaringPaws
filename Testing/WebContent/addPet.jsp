<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Pet</title>

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
	
	input {
		margin-bottom: 20px;
	}
	
	h4 {
		margin-bottom: 0px;
	}
	
	.btn-primary {
		background-color: rgb(246, 3, 101);
	}
	</style>
	
</head>
<body>

<%
	if(request.getAttribute("success") != null && request.getAttribute("message") != "") {
		%>
			<div class="alert alert-success" role="alert">
			  Successfully added pet to your account.
			</div>
		<%
	}
%>

<%
	if(request.getAttribute("error") != null && request.getAttribute("message") != "") {
		%>
			<div class="alert alert-danger" role="alert">
			  An error occured while adding your pet to your account. Please try again.
			</div>
		<%
	}
%>

	<section id="nav-bar">
		<%@include file="navbar.jsp" %>
	</section>
	
	<div style="padding: 65px; padding-top: 0px;"> 
	
	<h1>Pet Information</h1>
	<h3>Enter details about your pet to create a personal pet page</h3>
	<br>
	<form action="/Testing/AddPetPage" method="POST" style="max-width: 700px;">
		<label for="petName">Pet Name</label>
		<input class="form-control" id="petName" type="text" name="petName" required>
	
		<label for="type">Pet Type</label>	
		<input class="form-control" list="pet type" id="type" name="type">
		<datalist id="petType">
		<option value="Cat"></option>
		<option value="Dog"></option>
		<option value="Ferret"></option>
		<option value="Fish"></option>
		<option value="Guinea Pig"></option>
		<option value="Hamster"></option>
		<option value="Iguana"></option>
		<option value="Rabbit"></option>
		<option value="Rat"></option>
		<option value="Snake"></option>
		<option value="Turtle"></option>
		<option value="Dragon"></option>
		<option value="Other"></option>
		</datalist>
	
		<label for="breed">Breed</label>
		<input class="form-control" id="breed" type="text" name="breed">

		<label for="birthday">Date of Birth</label>
		<input class="form-control" type="text" id="birthday" name="birthday">
		
		<label for="pounds">Weight in Pounds</label>
		<input class="form-control" type="number" id="pounds" name="weight" step="1.0">

		<label for="color">Color</label>
		<input class="form-control" type="text" id="color" name="color"></input>

		<br>
		<h4 for="spay">Spayed/Neutered?</h4>
		<br>
		<label class="non-bold">Yes</label>
		<input id="spay" name="spay" type="radio" value="true">
		<br>
		<label class="non-bold">No</label>
		<input id="spay" name="spay" type="radio" value="false">
		<br><br>
		
		<h4 for="spay">Behavioral Nature and Additional Notes</h4>
		<textarea style="margin-top: 10px;" class="form-control" name="nature" rows="3" cols="60" placeholder="Enter pet's general nature"></textarea>
		<br><br>
		
		<input class="btn btn-primary" type="submit" name="submit" value="Submit">
	</form>
	
	</div>
</body>
</html>