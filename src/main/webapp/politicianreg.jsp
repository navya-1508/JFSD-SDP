<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Politician Registration</title>
<style>
.politician{
display: flex;}
.politician-right{
margin-left:80px;
width: 50%;
right: 0;
height: 100vh;
img{
height:100vh;
width: 100%;}}
.politician-reg-form
{
margin-top:30px;
width:50%;
input[type="text"],input[type="email"],input[type="password"]{
width:250px;
margin-left: 180px;}
}
</style>
</head>
<body>
<div class="politician">
<div class="politician-reg-form">
<form action="insertpolitician" method="POST" align="center">
<h3 align="center">Politician Registration</h3>
<label>Enter Name</label>
<input type="text" name="pname" class="form-control" required/> 
<br/>
<br/>
<label>Select Gender </label>
<input type="radio" name="pgender" class="form-check-input" value="Male" required/> Male
<input type="radio" name="pgender" class="form-check-input" value="Female" required/> Female
<input type="radio" name="pgender" class="form-check-input" value="Others" required/> Others
<br/>
<br/>
<label>Enter Email ID</label>
<input type="email" name="pemail" class="form-control" required/> 
<br/>
<br/>
<label>Enter Password</label>
<input type="password" name="ppassword" class="form-control" required/> 
<br/>
<br/>
<label>Enter Location</label>
<input type="text" name="ploc" class="form-control" required/> 
<br/>
<br/>
<label>Select Position</label>
<select name="ppos" class="form-select" required>
<option value="">Select</option>
<option value="">MLA</option>
<option value="">Councilor</option>
<option value="">MP</option>
</select>
<br/>
<button type="submit" onclick="this.disabled=true; this.form.submit();" class="btn btn-success">Register</button>
<input type="reset" class="btn btn-success" value="Clear"/>
</form>
</div>
<div class="politician-right">
<img alt="" src="assets/img2.png">
</div>
</div>
</body>
</html>