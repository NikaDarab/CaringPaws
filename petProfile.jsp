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
String password = "Pushpak@17";
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
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: white; padding-bottom: 20px;">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
      	<a href="/Software_Eng_Project1">
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
<h1>Your Pet</h1>

<table>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from pets where id = \"1\" ";
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
</body>
</html>