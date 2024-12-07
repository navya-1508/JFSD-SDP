<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta charset="UTF-8">
<title>Citizens and Politicians</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<div class="container">
<form action="displaycitizen" method="post" class="card">
<h3 align="center">View Citizen By Id</h3>
<label>Enter Citizen Id</label>
<select name="id" class="form-select" required>
<option value="">Select</option>
<c:forEach items="${personlist}" var="person">
<option value="${person.id}">${person.id} - ${person.name}</option>
</c:forEach>
</select>
<br/>
<br/>
<input type="submit" class="btn btn-success" value="Find"/>
</form>
</div>
</body>
</html>