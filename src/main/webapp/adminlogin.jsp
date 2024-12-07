<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Citizens and Politicians</title>
<style>
.admin {
    display: flex;
}
.admin-left {
    width: 50%;
}
.admin-right {
    width: 50%;
    margin-top: 70px;
}
.admin-right input[type="text"], .admin-right input[type="password"] {
    width: 250px; /* Reduced width */
    margin-left: 200px; /* Adjust as needed */
}
.admin-right input[type="submit"], .admin-right input[type="reset"] {
    
    width: 125px;
}
.admin-right h3 {
    margin-left: 10px;
}

</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<div class="admin">
<div class="admin-left">
<img alt="" src="assets/Screenshot_2024-11-04_163302-removebg-preview (1).png">
</div>
<div class="admin-right">
<form action="checkadminlogin" method="POST" align="center">
<h3 align="center">Admin Login</h3>
<label>Enter Name</label>
<input type="text" name="auname" class="form-control" required/> 
<br/>
<br/>
<label>Enter Password</label>
<input type="password" name="apassword" class="form-control" required/> 
<br/>
<br/>
<input type="submit" class="btn btn-success" value="Login"/>
<input type="reset" class="btn btn-success" value="Clear"/>
</form>
</div>
</div>
</body>
</html>