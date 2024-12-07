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
<%@include file="adminnavbar.jsp" %>
<br/>
<br/>
<h5 style="font-size: 20px">Total citizens: <c:out value="${c}"></c:out></h5>
</body>
</html>