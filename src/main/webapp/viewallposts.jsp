<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Posts</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<table align="center" border="3" class="table table-bordered">
<thead class="thead-dark">
<tr>
<th>Title</th>
<th>Description</th>
<th>Image</th>
<th>ACTION</th>
</tr>
</thead>

<c:forEach items="${post}" var="post">
<tr>
<td><c:out value="${post.title}"></c:out>
<td><c:out value="${post.description}"></c:out>
<td><img src="displaypostimage?id=${post.id}" alt="Image" width="25%" height="25%" onerror="this.onerror=null;this.src='default-image.jpg';"/></td>
<td><a class="del_citizen" href='<c:url value='delete1?id=${post.id}'></c:url>'>Delete</a></td>
</c:forEach>
</table>
</body>
</html>