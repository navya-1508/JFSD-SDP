<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Citizens and Politicians</title>
</head>
<body>
<div class="citizen-login">
<div class="citizen-login-left">
<img src="assets/Screenshot 2024-11-16 161511_enhanced.png" alt="logo" class="citizen-login-logo">
<form action="checkpersonlogin" method="POST" >
<a href="/"><img alt="" src="assets/back-arrow-removebg-preview.png" class="back-arrow"/></a>
<h3 align="center" class="citizen-login-heading">Citizen Login</h3>
<h4 align="center" style="color:red"><c:out value="${msg}"></c:out><br/></h4>
<label>Enter Email</label>
<input type="text" name="pemail" class="form-control" required/> 
<br/>
<br/>
<label>Enter Password</label>
<input type="password" name="ppassword" class="form-control" required/> 
<br/>
<br/>
<input type="submit" class="btn btn-success" value="Login"/>
<input type="reset" class="btn btn-success" value="Clear"/>
<br/>
<br/>
<p>Don't have account? <a href="personreg">SignUp</a></p>
</form>
</div>
<div class="citizen-login-right">
<img alt="" src="assets/img2.png">
</div>
</div>
</body>
</html>