<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      margin: 0;
      background-image: url('static/main_background.jpg'); /* Set the background image */
      background-size: cover;
      background-position: center;
      background-attachment: fixed; /* Keep the background fixed while scrolling */
    }

    html {
      box-sizing: border-box;
    }

    *, *:before, *:after {
      box-sizing: inherit;
    }

    .column {
      float: left;
      width: 33.3%;
      margin-bottom: 16px;
      padding: 0 8px;
    }

    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      margin: 8px;
    }

    .about-section {
      padding: 50px;
      text-align: center;
      background-color: rgba(71, 78, 93, 0.7); /* Add a semi-transparent background color */
      color: white;
    }

    .container {
      padding: 0 16px;
    }

    .container::after, .row::after {
      content: "";
      clear: both;
      display: table;
    }

    .title {
      color: grey;
    }

    .button {
      border: none;
      outline: 0;
      display: inline-block;
      padding: 8px;
      color: white;
      background-color: #000;
      text-align: center;
      cursor: pointer;
      width: 100%;
    }

    .button:hover {
      background-color: #555;
    }

    @media screen and (max-width: 650px) {
      .column {
        width: 100%;
        display: block;
      }
    }

    header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: transparent;
    color: rgb(41, 9, 198);
    padding: 10px 0;
    z-index: 1; /* Place the header above other content */
  }
  
  .logo img {
    height: 50px;
  }
  
  .nav-links {
    list-style: none;
    float: right;
    margin-right: 30px;
  }
  
  .nav-links li {
    list-style-type: none;
    display: inline-block;
    transition: 0.1s all;
    margin-right: 20px;
  }
  
  .nav-links li:hover {
    background-color: rgb(181, 222, 237);
  }
  
  .nav-links li a {
    text-decoration: none;
    color: #fff;
    padding: 10px 20px;
  }

  .form-container {
    background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 90%; /* Adjust the width as desired */
    max-width: 400px;
    margin: 0 auto;
  }
  </style>
  <title>Airline Reservation System</title>
</head>
<body>

  <header>
    <nav>
        <img src="static/logo.png" alt="Airline Logo" style="height: 50px;">
      <ul class="nav-links">
        <li><a href="about.jsp" style="color: brown; font-weight: bolder; font-size: larger;">About</a></li>
        <li><a href="main.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Home</a></li>
        <li><a href="registration.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Registration</a></li>
        <li><a href="contactus.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Contact Us</a></li>
      </ul>
    </nav>
  </header>

  <div class="about-section">
    <h1>About Us Page</h1>
    <p>Some text about who we are and what we do.</p>
    <p>Resize the browser window to see that this page is responsive by the way.</p>
  </div>
  
  <h2 style="text-align:center">Our Team</h2>
  <div class="row">
    <div class="column">
      <div class="card">
        <img src="static/girl.png" style="width: 250px; margin-left: 100px;">
        <div class="container">
          <h2 style="color: rgb(123, 182, 234);">SUDHANYA</h2>
          <p style="color: rgb(123, 182, 234);">Mobile No : 9898989898</p>
          <p style="color: rgb(123, 182, 234);">sudhanya@gmail.com</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>
  
    <div class="column">
      <div class="card">
        <img src="static/girl.png" style="width: 250px; margin-left: 100px;">
        <div class="container">
          <h2 style="color: rgb(123, 182, 234);">LOHITHA</h2>
          <p style="color: rgb(123, 182, 234);">Mobile No : 9797979797</p>
          <p style="color: rgb(123, 182, 234);">lohitha@gmail.com</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>
  
    <div class="column">
      <div class="card">
        <img src="static/girl.png" style="width: 250px; margin-left: 100px;">
        <div class="container">
          <h2 style="color: rgb(123, 182, 234);">LIKHITHA</h2>
          <p style="color: rgb(123, 182, 234);">Mobile No : 9696969696</p>
          <p style="color: rgb(123, 182, 234);">likhitha@gmail.com</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
