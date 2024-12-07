<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <meta charset="UTF-8">
<title>Citizens and Politicians</title>
<style>
.citizen-nav {
  background-color: rgba(215, 112, 126, 0.9); /* Navbar background color */
  position: fixed; /* Fix the navbar at the top */
  top: 0; /* Align it to the top */
  left: 0;
  width: 100%; /* Full width of the page */
  z-index: 1000; /* Stay on top of other elements */
  padding: 15px; /* Padding for better aesthetics */
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* Optional shadow */
  display: flex; /* Use flexbox */
  margin-top:0;
  justify-content: flex-end; /* Align items to the right */
  align-items: center; /* Vertically center the items */
}

.citizen-nav a {
  color: white; /* Text color */
  text-decoration: none; /* Remove underline */
  font-size: 16px; /* Font size */
  margin-left: 15px; /* Spacing between items */
}

.citizen-nav a:hover {
  text-decoration: underline; /* Underline on hover */
}

.profile-icon {
  height: 30px; /* Adjust profile icon size */
  vertical-align: middle; /* Align icon with text */
}
</style>
</head>
<body>
<div class="citizen-nav">
<a href="personhome">Home</a>&nbsp;&nbsp;
<a href="addproblem">ReportIssues</a>&nbsp;&nbsp;
<a href="contactpage">Contact</a>&nbsp;&nbsp;
<a href="#" onclick="showOptions()"><img alt="Profile" src="assets/profile-removebg-preview.png" class="profile-icon"></a>
</div>

<div id="options-modal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="hideOptions()">&times;</span>
    <h2>Select an Option</h2>
    <a href="personprofile" class="btn">Profile</a>
    <a href="personlogout" class="btn">Logout</a>
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
</script>