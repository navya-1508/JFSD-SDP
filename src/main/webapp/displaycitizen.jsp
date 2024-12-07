<%@page import="SpringBoot_S15.model.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person Home</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">Citizen By Id</h3>
Id:<c:out value="${p.id}" /><br/>
Name:<c:out value="${p.name}"/><br/>
Gender:<c:out value="${p.gender}"/><br/>
DOB:<c:out value="${p.dob}"/><br/>
Email:<c:out value="${p.email}"/><br/>
Location:<c:out value="${p.location}"/><br/>
</body>
</html>