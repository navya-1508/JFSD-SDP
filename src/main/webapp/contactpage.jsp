<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form</title>
</head>
<body>
    <div class="contact-page">
    <div class="contact-left">
    <h1>Contact Us</h1>
     <form action="https://api.web3forms.com/submit" method="POST">
            <input type="hidden" name="access_key" value="c61235fb-b2ac-4d82-8f0e-4aeda9481bd5">
            <div class="input-box">
                <input type="text" name="name" placeholder="Full Name" required class="contact-input"/><br/>
                <input type="email" name="email" placeholder="Email" class="contact-input" required/><br/>
                <input type="text" name="subject" placeholder="Subject" class="contact-input" required/> 
            </div>

            <textarea name="message" id="" cols="30" rows="10" class="contact-input" placeholder="Your Message"></textarea><br/>

        <input type="submit" value="Send Message" class="contact-button"/>
        </form>
        </div>
        <div class="contact-right">
        <img alt="Contact" src="assets/contact-removebg-preview.png" class="contact-img"/>
        </div>
        </div>
 </body>
</html>
