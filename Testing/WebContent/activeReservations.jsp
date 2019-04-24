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
		<h1>${user.username}'s Reservations</h1>
		
		<div style="padding-left: 20px;">
			<h2 style="margin-bottom: 20px;">Reservations</h2>
			<c:forEach items="${reservations}" var="res">
				<div style="background-color: white; border-radius: 20px; padding: 20px 40px; margin: 20px 0px;">
					<a href="/Testing/ProfileController">
						<h2>Pet: ${res.petName}</h1>
					</a>
					
					<h4 style="margin-bottom: 20px;">Reservation Date: ${res.date}</h2>
				</div>
		     </c:forEach>
		</div>
	</div>
	
	<div style="position: fixed; bottom: 0; left: 0; width: 100%; height: 100px; background-color: white">
		<form action="/Testing/Home" method="GET">
			<input id="prodId" name="signOut" type="hidden" value="true">	
			<button type="submit" class="btn btn-primary">
				Sign Out
			</button>
		</form>
	</div>
</body>
</html>