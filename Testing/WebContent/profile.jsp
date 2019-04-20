<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<%@include file="generalStyles.jsp" %>
<link rel="stylesheet" type="text/css" href="profile.css">
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="mainContainer">
		<h1>${user.username}'s Profile</h1>
		
		<div style="padding-left: 20px;">
			<h2 style="margin-bottom: 20px;">Pets</h2>
			<c:forEach items="${pets}" var="pet">
				<div style="padding-left: 15px;">
			   		<div class="sitterResult">
			   			<a href="/PetController/id?${pet.ID}">
			   				<h3>${pet.name}</h3>
			   			</a>
			   			<p>${pet.type}: ${pet.breed}</p>
			   			<p>Weight: ${pet.weight}lb</p>
			   			<p>Color: ${pet.color}</p>
			   			<p>Spayed: ${pet.spayOrNeuter}</p>
			   			<p>Nature: ${pet.nature}</p>
			   			<%-- <p>Date of Birth: ${pet.dob}</p> --%>
			        </div>
				</div>
		     </c:forEach>
		</div>
	</div>
	
	<div style="position: absolute; bottom: 0; left: 0; width: 100%; height: 100px; background-color: white">
		<form action="/Testing/Home" method="GET">
			<input id="prodId" name="signOut" type="hidden" value="true">	
			<button type="submit" class="btn btn-primary">
				Sign Out
			</button>
		</form>
	</div>
</body>
</html>