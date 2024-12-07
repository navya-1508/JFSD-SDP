<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Politician Login</title>
<style>
.politician{
display: flex;}
.politician-right{

width: 50%;
right: 0;
height: 100vh;
img{
height:100vh;
width: 100%;}}
.politician-left
{
h3{
margin-right:270px;}
margin-left:150px;
margin-top:100px;
width:50%;
input[type="text"],input[type="email"],input[type="password"]{
width:250px;
}
}
</style>
</head>
<body>


<div class="politician">
<div class="politician-left">
<form action="checkpoliticianlogin" method="POST" >
<h4 align="center" style="color:red"><c:out value="${msg}"></c:out><br/></h4>
<h3 align="center">Politician Login</h3>
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
</form>
</div>
<div class="politician-right">
<img alt="" src="assets/img2.png">
</div>
</div>
</body>
</html>