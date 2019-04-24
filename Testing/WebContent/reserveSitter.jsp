<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

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
			<div id="reserveMessage" class="alert alert-success" role="alert">
			  Successfully created reservation.
			</div>
		<%
	}
%>

<%
	if(request.getAttribute("error") != null && request.getAttribute("message") != "") {
		%>
			<div class="alert alert-danger" role="alert">
			  Unable to create reservation at this time. Please try again later.
			</div>
		<%
	}
%>

	<section id="nav-bar">
		<%@include file="navbar.jsp" %>
	</section>
	
	<div style="padding: 65px; padding-top: 0px;"> 
	
	<h1>Reserve Sitter</h1>
	<h3>Enter the details about your reservation</h3>
	<br>
	<form action="/Testing/BookSitter" method="POST" style="max-width: 700px;">
	
		<label for="name">Pet Name</label>		
		<select id="name" class="custom-select custom-select-lg mb-3" id="petType" name="name">
			<c:forEach items="${pets}" var="pet">
				<option value="${pet.name}">${pet.name}</option>
		    </c:forEach>
		    <option value="Multiple Pets">Multiple Pets</option>
		</select>
		
		<input type="hidden" id="type" name="id" value="${sitter.ID}" >
	
		<label for="type">Date</label>	
		<input type="date" class="form-control" id="date" name="date">
		
		<h3 style="margin-top: 50px !important;">Payment Information</h3>
		<div class="form-group">
    		<label for="type">Type:</label><br>
    		<input type="radio" name="cardtype" id="typeID" value="Credit Card" > Credit Card<br>
    		<input type="radio" name="cardtype" id="typeID" value="Debit Card" > Debit Card<br>
		</div>
		<div class="form-group">
			<label for="Card No">Card Number:</label><br>
    		<input type="text" class="form-control" name="cardno" id="numberID" placeholder="0000-0000-0000-0000" >
		</div>
		<div class="form-group">
			<label for="CVV">CVV:</label><br>
    		<input type="text" name="cvv" class="form-control" placeholder="000" >
		</div>	
		<div class="form-group">
			<label for="expiry">EXPIRY-DATE:</label><br>
    		<input type="text" name="expiry" class="form-control" placeholder="00/00" > 
		</div>
		<div>
			<label for="Address1">Billing Address Line 1:</label><br>
    		<input type="text" class="form-control" placeholder="Address Line 1..." >
		</div>
		<div>
			<label for="Address2">Billing Address Line 2:</label><br>
    		<input type="text" class="form-control" placeholder="Address Line 2..." >
		</div>
		<div>
			<label for="City">City:</label><br>
    		<input type="text" class="form-control" placeholder="City..." >
		</div>
		<div>
			<label for="State">State:</label><br>
    		<input type="text" class="form-control" placeholder="State..." >
		</div>
		<div>
			<label for="Zip_Code">Zip Code:</label><br>
    		<input type="text" class="form-control" placeholder="00000" >
		</div>
	
		<input id="submit" class="btn btn-primary" type="submit" name="submit" value="Submit">
	</form>
	
	</div>
</body>
</html>