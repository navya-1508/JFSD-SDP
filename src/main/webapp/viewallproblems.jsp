<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Citizens and Politicians</title>
</head>
<body>
<br/>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">View All Problems</h3><br/>
<table align="center" border="3" class="table table-bordered">
<thead class="thead-dark">
<tr>
<th >Id</th>
<th>Name</th>
<th>Email</th>
<th>Location</th>
<th>Description</th>
<th>Image</th>
</tr>
</thead>

<c:forEach items="${problem}" var="problem">
<tr>
<td><c:out value="${problem.id}"></c:out>
<td><c:out value="${problem.name}"></c:out>
<td><c:out value="${problem.email}"></c:out>
<td><c:out value="${problem.location}"></c:out>
<td><c:out value="${problem.description}"></c:out>
<td><img src="displayproblemimage?id=${problem.id}" alt="Image" width="25%" height="25%"/></td>
</c:forEach>
</table>
</body>
</html>