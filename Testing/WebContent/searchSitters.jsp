<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Pets</title>
<%@include file="generalStyles.jsp" %>
<link rel="stylesheet" type="text/css" href="searchStyles.css">

<style>
	.btn-primary {
		background-color: rgb(246, 3, 101);
	}
	
	a {
		color: rgb(246, 3, 101); 
	}
</style>
</head>

<body>

<section id="nav-bar">
	<%@include file="navbar.jsp" %>
</section>

<div class="mainContainer">
<%
	if(request.getAttribute("noSitters") != null && request.getAttribute("message") != "") {
		%>
			<div class="alert alert-danger" role="alert">
			  No sitters found. Please broaden your search criteria.
			</div>
		<%
	}
%>
	<h1> Search our Sitters! </h1>
	
	<form action="SearchSitters" method="POST" >
	  <div class="row">
	    <div class="col">
	      <label for="name">Sitter Name</label>
	      <input id="name" name="name" type="text" class="form-control" placeholder="Name...">
	    </div>
	    <div class="col">
	   	  <label for="date">Location</label>
	      <input id="location" type="number" name="zipCode" class="form-control" placeholder="Zip Code...">
	    </div>
	    <div class="col">
	   	  <label for="rating">Minimum Rating</label>
	      <input id="rating" step=".01" id="rating" type="number" name="rating" class="form-control" placeholder="Rating...">
	    </div>
	  </div>
	  <button id="submit" type="submit" class="btn btn-primary submitButton"> Submit </button>
	</form>
	
     <c:forEach items="${sitters}" var="sitter">
     		<div class="sitterResult">
     			<a id="sitterlink" href="/Testing/Sitter?id=${sitter.ID}">
	         		<h1>${sitter.name}</h1>
	         	</a>
	         	<h3>${sitter.averageRating} / 5 Stars</h3>
	         	<p>${sitter.personalDescription}</p>
	         	
	         	<h5> Contact Information: </h5>
	         	<p>${sitter.phoneNumber}</p>
	         	<p>${sitter.email}</p>
	         </div>	
     </c:forEach>
</div>

</body>
</html>