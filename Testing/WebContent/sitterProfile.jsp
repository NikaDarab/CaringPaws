<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sitter Profile</title>
</head>
<style>
	.btn-primary {
		background-color: rgb(246, 3, 101) !important;
	}
	
	a {
		color: rgb(246, 3, 101);
	}
</style>
<%@include file="generalStyles.jsp"%>
<link rel="stylesheet" type="text/css" href="sitterProfileStyles.css">

</head>

<body>

	<section id="nav-bar">
		<%@include file="navbar.jsp"%>
	</section>
	
	<div class="mainContainer">
		<h1>${sitter.name}</h1>
		<h3 id="noTop">Rating: ${sitter.averageRating} / 5</h3>
		
		<div class="contactSidebar">
			<h3>Contact Information</h3>
			<h4>Phone:</h4>
			<p>${sitter.phoneNumber}</p>
			<h4>Email:</h4>
			<p>${sitter.email}</p>
		</div>
		
		<h3 style="margin-top: 50px;">Personal Description:</h3>
		<p> ${sitter.personalDescription}</p>
		
		<h3 style="margin-top: 50px;">Reviews:</h3>
		<c:forEach items="${reviews}" var="review">
     		<div class="sitterResult">
     			<h3>${review.name}</h3>
     			<h4>${review.rating} / 5</h4>
     			<p>${review.comment}</p>
	         </div>
     	</c:forEach>
		
		<div style="position: absolute; bottom: 0; left: 0; width: 100%; height: 100px; background-color: white">
			<form action="/Testing/BookSitter" method="GET">
				<input id="prodId" name="id" type="hidden" value="${sitter.ID}">	
				<button id="submit" class="btn btn-primary">Book Sitter</button>
			</form>
		</div>
		
		
	</div>
	
</body>
</html>