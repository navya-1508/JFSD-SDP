<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>Citizen Registration</title>
    <script>
        $(document).ready(function() {
            $('form').submit(function(e) {
                const email = $('input[name="pemail"]').val();
                const password = $('input[name="ppassword"]').val();
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$/;

                if (!emailRegex.test(email)) {
                    alert('Please enter a valid email address.');
                    e.preventDefault();
                } else if (!passwordRegex.test(password)) {
                    alert('Password must be at least 8 characters long and include uppercase, lowercase, a number, and a special character.');
                    e.preventDefault();
                }
            });
        });
    </script>
</head>
<body>
<div class="citizen-reg">
    <div class="citizen-reg-left">
        <div class="reg-form">
            <img src="${pageContext.request.contextPath}/assets/Screenshot 2024-11-16 161511_enhanced.png" alt="logo" class="citizen-reg-logo">
            <form action="${pageContext.request.contextPath}/insertperson" method="POST" align="center">
                <a href="${pageContext.request.contextPath}/"><img alt="Back" src="${pageContext.request.contextPath}/assets/back-arrow-removebg-preview.png" class="back-arrow-reg"/></a>
                <h3 align="center" class="citizen-login-heading">Citizen Registration</h3>
                <br/>
                <label>Enter Name</label>
                <input type="text" name="pname" class="form-control" required/>
                <br/>
                <label>Select Gender</label>
                <br/>
                <input type="radio" name="pgender" class="form-check-input" value="Male" required/> Male
                <input type="radio" name="pgender" class="form-check-input" value="Female" required/> Female
                <input type="radio" name="pgender" class="form-check-input" value="Others" required/> Others
                <br/>
                <label>Select Date of Birth</label>
                <input type="date" class="form-control" name="pdob" required/>
                <br/>
                <label>Enter Email ID</label>
                <input type="email" name="pemail" class="form-control" required/>
                <br/>
                <label>Enter Password</label>
                <input type="password" name="ppassword" class="form-control" required/>
                <br/>
                <label>Enter Location</label>
                <input type="text" name="ploc" class="form-control" required/>
                <br/>
                <input type="submit" class="btn btn-success" value="Register"/>
                <input type="reset" class="btn btn-warning" value="Clear"/>
            </form>

            <!-- Updated Alert Section -->
            <c:if test="${not empty msg}">
                <div class="alert alert-danger" style="margin-top: 10px;">
                    <strong>Error!</strong> ${msg}
                </div>
            </c:if>
        </div>
    </div>
    <div class="citizen-reg-right">
        <img alt="Side Illustration" src="${pageContext.request.contextPath}/assets/img2.png">
    </div>
</div>
</body>
</html>
