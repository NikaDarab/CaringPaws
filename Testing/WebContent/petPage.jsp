<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://127.0.0.1:3306/";
String database = "coursedatabase";
String userid = "root";
String password = "password";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>pet-profile</title>
		<link rel ="stylesheet" href="/Software_Eng_Project1/style.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
		<link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<section id="nav-bar">
	<%@include file="navbar.jsp" %>
</section>

<div style="padding: 20px 65px;">
	<h1>Your Pet</h1>

<table>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from pets where id = \"" + request.getAttribute("petID") + "\" ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
	<td> <%=resultSet.getBlob("photo") %> </td>
</tr>
<tr>
	<td> Name: </td>
	<td> <%=resultSet.getString("name") %> </td>
</tr>
<tr>
	<td> Breed: </td>
	<td><%=resultSet.getString("breed") %> </td>
</tr>
<tr>
	<td> Species: </td>
	<td> <%=resultSet.getString("species") %> </td>
</tr>
<tr>
	<td> Birthday: </td>
	<td> <%=resultSet.getString("birthday") %> </td>
</tr>

<tr>
	<td> Weight: </td>
	<td> <%=resultSet.getString("approximateWeightInPounds") %> </td>
</tr>

<tr>
	<td> Color: </td>
	<td> <%=resultSet.getString("primaryColor") %> </td>
</tr>

<tr>
	<td> Nature: </td>
	<td> <%=resultSet.getString("nature") %> </td>
</tr>



<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>