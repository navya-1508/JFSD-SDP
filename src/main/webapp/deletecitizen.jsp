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
<br/>
<%@include file="adminnavbar.jsp" %>
<br/>
<table align="center" border="3" class="table table-bordered" style="width:80%;">
<thead class="thead-dark">
<tr>
<th >Id</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Email Id</th>
<th>Location</th>
<th>ACTION</th>
</tr>
</thead>

<c:forEach items="${personlist}" var="person">
<tr>
<td><c:out value="${person.id}"></c:out></td>
<td><c:out value="${person.name}"></c:out></td>
<td><c:out value="${person.gender}"></c:out></td>
<td><c:out value="${person.dob}"></c:out></td>
<td><c:out value="${person.email}"></c:out></td>
<td><c:out value="${person.location}"></c:out></td>
<td><a class="del_citizen" href='<c:url value='delete?id=${person.id}'></c:url>'>Delete</a></td>
</c:forEach>
</table>
</body>
</html>