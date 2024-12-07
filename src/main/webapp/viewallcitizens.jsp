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
<br/>
<br/>
<br/>
<h5 class="count-citizen-font">Total citizens: <c:out value="${c}"></c:out></h5>
<br/>
<table align="center" border="3" class="table table-bordered" style="width: 80%;">
<thead class="thead-dark">
<tr>
<th >Id</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Email Id</th>
<th>Location</th>
</tr>
</thead>
<c:forEach items="${personlist}" var="person">
<tr>
<td><c:out value="${person.id}"></c:out>
<td><c:out value="${person.name}"></c:out>
<td><c:out value="${person.gender}"></c:out>
<td><c:out value="${person.dob}"></c:out>
<td><c:out value="${person.email}"></c:out>
<td><c:out value="${person.location}"></c:out>
</c:forEach>
</table>
</body>
</html>