<%@page import="SpringBoot_S15.model.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Person p = (Person) session.getAttribute("person");
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Edit Profile</title>
<style>
.edit-profile{
display:flex;}</style>
</head>
<body>
<div class="edit-profile">
<div class="citizen-login-left">
<form action="edit" method="POST" align="center">
<h3 align="center">Update Profile</h3>
<label>Enter ID</label>
<input type="number" name="pid" class="form-control" value=<%=p.getId()%> readonly required/> 
<br/>
<label>Enter Name</label>
<input type="text" name="pname" class="form-control" value=<%=p.getName()%> required/> 
<br/>
<label>Select Gender</label>
<input type="radio" name="pgender" class="form-check-input" value=<%=p.getName()%> value="Male" required/> Male
<input type="radio" name="pgender" class="form-check-input" value="Female" value=<%=p.getName()%> required/> Female
<input type="radio" name="pgender" class="form-check-input" value="Others" value=<%=p.getName()%> required/> Others
<br/>
<label>Select Date of Birth</label>
<input type="date" class="form-control" name="pdob" value=<%=p.getDob() %> required/> 
<br/>
<br/>
<label>Enter Email ID</label>
<input type="email" name="pemail" class="form-control" value=<%=p.getEmail()%> readonly required/> 
<br/>
<label>Enter Password</label>
<input type="password" name="ppassword" class="form-control" value=<%=p.getPassword() %> required/> 
<br/>
<label>Enter Location</label>
<input type="text" name="ploc" class="form-control" value=<%=p.getLocation() %> required/> 
<br/>
<input type="submit" class="btn btn-success" value="Update"/>
<input type="reset" class="btn btn-success" value="Clear"/>
</form>
</div>
<div class="citizen-login-right">
<img alt="" src="assets/img2.png">
</div>
</div>
</body>
</html>