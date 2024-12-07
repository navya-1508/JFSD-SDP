<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post Update</title>
    <link rel="stylesheet" href="style.css">
    <style>
    /* style.css */

/* General Styling */
body {
    font-family: 'Roboto', sans-serif; /* Modern and clean font */
    margin: 0;
    padding: 0;
    background-color: #f4f4f9; /* Light background for a clean look */
    color: #333; /* Darker text for better readability */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Post Update Container */
.post-update {
    background-color: #ffffff; /* White background for content */
    padding: 2rem;
    border-radius: 8px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    max-width: 500px;
    width: 90%;
    text-align: center;
}

/* Title Styling */
.post-update h1 {
    font-size: 1.8rem;
    margin-bottom: 1rem;
    color: #D7707E; /* A calm blue tone for titles */
}

/* Form Elements */
.post-update-form label {
    font-weight: bold;
    display: block;
    text-align: left;
    margin: 0.5rem 0 0.2rem;
    color: #555;
}

.post-update-form input[type="text"],
.post-update-form textarea {
    width: 100%;
    padding: 0.8rem;
    margin-bottom: 1rem;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1rem;
    box-sizing: border-box;
}

.post-update-form textarea {
    resize: none; /* Prevent manual resizing */
}

.post-update-form input[type="file"] {
    margin-bottom: 1rem;
    font-size: 0.9rem;
}

/* Button Styling */
.btn-submit {
    background-color: #D7707E;
    color: #ffffff;
    border: none;
    padding: 0.8rem 1.5rem;
    font-size: 1rem;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn-submit:hover {
    background-color: #D7707E; /* Darker blue on hover */
}

/* Responsive Design */
@media (max-width: 600px) {
    .post-update {
        padding: 1.5rem;
    }

    .post-update h1 {
        font-size: 1.5rem;
    }

    .btn-submit {
        padding: 0.7rem 1.2rem;
        font-size: 0.9rem;
    }
}
    
    </style>
</head>
<body>
<div class="post-update">
        <h1>Post Update</h1>
        <form action="postupdate" enctype="multipart/form-data" method="POST" align="center" class="post-update-form">
            <label for="update-title">Update Title:</label>
            <input type="text" id="update-title" name="ptitle" placeholder="Enter update title..." required>
            <br/>

            <label for="update-content">Update Content:</label>
            <textarea id="update-content" name="pdescription" rows="6" placeholder="Write your update here..." required></textarea>
            <br/>

            <label for="update-file">Attach a File (Optional):</label>
            <input type="file" id="update-file" name="pimage">
            <br/>

            <button type="submit" class="btn-submit">Post Update</button>
        </form>
        </div>
</body>
</html>
