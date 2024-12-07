<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Problem</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .problem-form {
        width: 100%;
        max-width: 600px;
        padding: 20px;
        background: #ffffff;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
    }

    h3 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
        font-size: 1.8em;
        font-weight: bold;
    }

    label {
        font-size: 1rem;
        color: #555;
        margin-bottom: 5px;
    }

    input[type="text"], 
    input[type="email"],
    input[type="file"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 1rem;
        background: #f9f9f9;
    }

    textarea {
        height: 100px;
        resize: none;
    }

    input[type="submit"],
    input[type="reset"] {
        width: 48%;
        padding: 10px;
        font-size: 1rem;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        display: inline-block;
    }

    input[type="submit"] {
        background-color: #5cb85c;
    }

    input[type="reset"] {
        background-color: #d9534f;
    }

    input[type="submit"]:hover {
        background-color: #4cae4c;
    }

    input[type="reset"]:hover {
        background-color: #c9302c;
    }

    .form-control:focus {
        outline: none;
        border: 1px solid #5cb85c;
        box-shadow: 0 0 5px rgba(92, 184, 92, 0.5);
    }

    @media (max-width: 768px) {
        .problem-form {
            width: 90%;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 100%;
            margin-bottom: 10px;
        }
    }
</style>
</head>
<body>
<form action="uploadproblem" enctype="multipart/form-data" method="POST" class="problem-form">
    <h3>Drop Your Issue Here</h3>
    <label for="pname">Enter Name</label>
    <input type="text" id="pname" name="pname" class="form-control" required /> 
    
    <label for="pemail">Enter Email ID</label>
    <input type="email" id="pemail" name="pemail" class="form-control" required /> 
    
    <label for="ploc">Enter Location</label>
    <input type="text" id="ploc" name="ploc" class="form-control" required /> 
    
    <label for="pdescription">Enter Description</label>
    <textarea id="pdescription" name="pdescription" class="form-control" required></textarea>
    <label>Select Domain</label>
<select name="pdom" class="form-select" required>
<option value="">Select</option>
<option value="">Water</option>
<option value="">Health & Sanitary</option>
<option value="">Women Safety & Welfare</option>
</select>
    
    <label for="pimage">Upload Images Here</label>
    <input type="file" id="pimage" name="pimage" class="form-control" required /> 
    
    <div style="text-align: center;">
        <input type="submit" class="btn btn-success" value="Add" />
        <input type="reset" class="btn btn-danger" value="Clear" />
    </div>
</form>
</body>
</html>
