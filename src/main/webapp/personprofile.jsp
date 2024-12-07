<%@page import="SpringBoot_S15.model.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Person p = (Person) session.getAttribute("person");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citizen Profile</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h3 {
            text-align: center;
            color: #333;
        }

        a {
            display: block;
            text-align: center;
            margin-bottom: 20px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        .profile-card {
            width: 350px;
            height: 450px;
            perspective: 1000px;
        }

        .card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            transition: transform 0.6s;
        }

        .profile-card.flipped .card-inner {
            transform: rotateY(180deg);
        }

        .card-front,
        .card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .card-front {
            background-color: #fff;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .card-front p {
            margin: 10px 0;
            color: #555;
        }

        .card-front p span {
            color: #D7707E;
            font-weight: bold;
        }

        .card-back {
            background-color: #D7707E;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            transform: rotateY(180deg);
        }

        .card-back img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 2px solid white;
        }

        .edit {
            height: 20px;
            margin-left: 330px;
           
        }
    </style>
</head>
<body>
    <div class="profile-card" onclick="toggleFlip()">
        <div class="card-inner">
            <!-- Front Side of the Card -->
            <div class="card-front">
                <a href="editprofile"><img class="edit" src="assets/edit-removebg-preview.png" alt="Edit Profile"></a>
                <h3>My Profile</h3>
                <p><strong>Id:</strong> <span><%= p.getId() %></span></p>
                <p><strong>Name:</strong> <span><%= p.getName() %></span></p>
                <p><strong>Gender:</strong> <span><%= p.getGender() %></span></p>
                <p><strong>DOB:</strong> <span><%= p.getDob() %></span></p>
                <p><strong>Email:</strong> <span><%= p.getEmail() %></span></p>
                <p><strong>Location:</strong> <span><%= p.getLocation() %></span></p>
            </div>

            <!-- Back Side of the Card -->
            <div class="card-back">
                <img src="assets/profile-removebg-preview.png" alt="Avatar">
            </div>
        </div>
    </div>

    <script>
        function toggleFlip() {
            const card = document.querySelector('.profile-card');
            card.classList.toggle('flipped');
        }
    </script>
</body>
</html>
