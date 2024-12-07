<%@page import="SpringBoot_S15.model.Person" %>
<%@page import="SpringBoot_S15.model.Post" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
Person p = (Person) session.getAttribute("person");
if (p == null) {
    response.sendRedirect("personlogin");
    return;
}
%>
<%
    int currentYear = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Person Home</title>
    <!-- Add your CSS link or Bootstrap link here for styling -->
    <link rel="stylesheet" href="styles.css">
    
 <style>
.personhome-name {
    font-family: 'Lora', serif;
    font-weight: 700;
    font-size: 30px;
    margin-left: 50px;
}
 p {
    font-family: 'Lora', serif;
    font-weight: 400;
    font-size: 18px;
}
.p1{
margin-left: 50px;
}

 .news-section {
            flex: 1;
            max-width: 50%;
            background-color: #fff;
            padding: 15px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
           
        }

        .news-section h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .team-section {
            flex: 1;
            max-width: 50%;
            background-color: #fff;
            padding: 15px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .team-section h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }
		
		  .main-container {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }
        .profile-container {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            justify-content: center;
        }

        .profile-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 200px;
            padding: 15px;
            text-align: center;
        }

        .profile-card img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .profile-card h4 {
            margin: 10px 0;
            color: #0056b3;
        }
        .d-block {
        height:70vh;}

        @media (max-width: 768px) {
            .main-container {
                flex-direction: column;
            }

            .news-section, .team-section {
                max-width: 100%;
            }
 </style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<section class="personhome1">
<%@include file="personnavbar.jsp" %>
<br/>
<h3 class="personhome-name">Welcome <%= p.getName() %></h3>
<p class="p1">Your voice matters. Connect, engage, and make a difference with Interac!</p>
<marquee behavior="scroll" direction="left">
    📢 <strong>Attention:</strong> The Chief Minister will address a public meeting on December 10, 2024, at 10:00 AM in City Hall. All citizens are invited to attend and share their concerns.
</marquee>

    <div class="main-container">
<div class="news-section">
            <h2>Live News Updates</h2>
            <div id="newsCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <!-- Carousel Item 1 -->
                    <div class="carousel-item active">
                        <img src="assets/park.jpg" class="d-block w-100" alt="News Image 1">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>New Park Inaugurated</h5>
                            <p>A new park was inaugurated in the city downtown, providing green space for families.</p>
                        </div>
                    </div>
                    <!-- Carousel Item 2 -->
                    <div class="carousel-item">
                        <img src="assets/health.jpg" class="d-block w-100" alt="News Image 2">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Healthcare Drive</h5>
                            <p>Free vaccination camp is organized for the local community at City Hall.</p>
                        </div>
                    </div>
                    <!-- Carousel Item 3 -->
                    <div class="carousel-item">
                        <img src="assets/weather.jpg" class="d-block w-100" alt="News Image 3">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Weather Alert</h5>
                            <p>Heavy rainfall expected in the northern districts; authorities issue safety measures.</p>
                        </div>
                    </div>
                </div>
                <!-- Controls -->
                <button class="carousel-control-prev" type="button" data-bs-target="#newsCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#newsCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <!-- Right Section: Political Insights -->
        <div class="team-section">
            <h2>Political Team Insights</h2>
            <div class="profile-container">
                <div class="profile-card">
                    <img src="assets/cm.jpg" alt="CM Photo">
                    <h4>Chief Minister</h4>
                    <p><strong>Name:</strong>Nara Chandra Babu Naidu</p>
                       </div>
                <div class="profile-card">
                    <img src="assets/mp.jpg" alt="MP Photo">
                    <h4>Member of Parliament</h4>
                    <p><strong>Name:</strong> Jane Smith</p>
                    </div>
                <div class="profile-card">
                    <img src="assets/mla.jpg" alt="MLA Photo">
                    <h4>Member of Legislative Assembly</h4>
                    <p><strong>Name:</strong> Bramha Reddy</p>
                </div>
            </div>
        </div>
        </div>
</section>
<section class="personhome2">
<!-- Container for the posts -->
<div class="post-container">
    <c:forEach items="${posts}" var="post">
        <div class="post-card">
        <div class="post-image">
                <img src="displaypostimage?id=${post.id}" alt="Image" width="100%" height="auto" onerror="this.onerror=null;this.src='default-image.jpg';"/>
            </div>
            <h4 class="post-title"><c:out value="${post.title}"></c:out></h4>
            <p class="post-description"><c:out value="${post.description}"></c:out></p>
        </div>
    </c:forEach>
</div>
</section>

<footer style="background-color: #D7707E; color: #fff; padding: 20px; text-align: center;">
    <div class="footer-container">
        <!-- Contact Section -->
        <div class="footer-contact">
            <h4>Contact Us</h4>
            <p>Email: <a href="mailto:support@interac.com" style="color: #fff;">support@interac.com</a></p>
            <p>Phone: +1 234 567 890</p>
        </div>
        
        <!-- Quick Links -->
        <div class="footer-links">
            <h4>Quick Links</h4>
            <a href="personhome" style="color: #fff; margin-right: 10px;">Home</a> | 
            <a href="personprofile" style="color: #fff; margin-right: 10px;">Profile</a> | 
            <a href="addproblem" style="color: #fff;">Report Issue</a>
        </div>
        
        <!-- Social Media -->
        <div class="footer-social">
            <h4>Follow Us</h4>
            <a href="https://facebook.com" style="color: #fff; margin-right: 10px;">Facebook</a> | 
            <a href="https://twitter.com" style="color: #fff; margin-right: 10px;">Twitter</a> | 
            <a href="https://instagram.com" style="color: #fff;">Instagram</a>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var myCarousel = document.querySelector('#newsCarousel');
        var carousel = new bootstrap.Carousel(myCarousel, {
            interval: 1000, // Set the interval time in milliseconds
            ride: 'carousel'
        });
    });
</script>
</body>
</html>
