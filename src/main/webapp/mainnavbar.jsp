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
<title>Citizens and Politicians</title>
</head>
<body>
<div class="nav-home">
    <div class="header">
        <img src="assets/Screenshot 2024-11-16 161511_enhanced.png" alt="logo" class="logo">
    </div>
    <div class="navbar">
        <a href="#" class="box" onclick="showOptions()">Citizen</a>
        <a href="#" class="box" onclick="showOptions1()">Politician</a>
        <a href="adminlogin" class="box">Admin Login</a>

<div id="options-modal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="hideOptions()">&times;</span>
    <h2>Select an Option</h2>
    <a href="personlogin" class="btn">Login</a>
    <a href="personreg" class="btn">Register</a>
  </div>
</div>
<div id="options-modal1" class="modal">
  <div class="modal-content">
    <span class="close" onclick="hideOptions1()">&times;</span>
    <h2>Select an Option</h2>
    <a href="politicianlogin" class="btn">Login</a>
    <a href="politicianreg" class="btn">Register</a>
  </div>
</div>
    </div>
</div>
</body>
</html>
<script>
function showOptions() {
  document.getElementById("options-modal").style.display = "block";
}

function hideOptions() {
  document.getElementById("options-modal").style.display = "none";
}
function showOptions1() {
  document.getElementById("options-modal1").style.display = "block";
}

function hideOptions1() {
  document.getElementById("options-modal1").style.display = "none";
}
</script>