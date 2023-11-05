<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
  body, h1, h2, p, ul, li {
    margin: 0;
    padding: 0;
  }
  
  /* Basic styling */
  body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
  }
  
  /* Background image with blur */
  .background-container {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    background-image: url('static/main_background.jpg'); /* Set the background image for the body */
    background-size: cover;
    background-position: center;
    /*filter: blur(10px); /* Apply a blur effect to the background image */
  }
  
  /* Header */
  header {
    background-color: transparent;
    color: rgb(41, 9, 198);
    padding: 10px 0;
    position: relative;
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


  /* .nav-links {
    list-style: none;
    display: flex;
    gap: 20px;
  }
  
  .nav-links a {
    text-decoration: none;
    color: white;
    transition: color 0.3s;
  }
  
  .nav-links a:hover {
    color: #ff8800;
  } */
  
  /* Hero section */
  .hero {
    position: relative;
    color: white;
    text-align: center;
    padding: 150px 0;
  }

  .hero-content {
    position: relative;
    z-index: 1; /* Place the content above the background container */
  }
  
  .hero-content h1 {
    font-size: 36px;
    margin-bottom: 20px;
  }
  
  .hero-content p {
    font-size: 18px;
    margin-bottom: 40px;
  }
  
  .btn-primary {
    background-color: #ff8800;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    text-decoration: none;
    transition: background-color 0.3s;
  }
  
  .btn-primary:hover {
    background-color: #ffaa33;
  }
  
  /* Features section */
  .features {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    padding: 50px 0;
  }
  
  .feature {
    text-align: center;
    flex-basis: calc(33.33% - 40px);
    padding: 20px;
  }
  
  .feature img {
    max-width: 100px;
    margin-bottom: 20px;
  }
  
  /* Footer */
  footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px 0;
  }
  
</style>
<title>Airline Reservation System</title>
</head>
<body>
  <!-- Background image container -->
  <div class="background-container"></div>
  
  <header>
    <nav>
        <img src="static/logo.png" alt="Airline Logo" style="height: 50px;">
      <ul class="nav-links">
        <li><a href="about.jsp" style="color: brown; font-weight: bolder; font-size: larger;">About</a></li>
        <li><a href="#" style="color: brown; font-weight: bolder; font-size: larger;">Flights</a></li>
        <li><a href="login.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Login</a></li>
        <li><a href="registration.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Registration</a></li>
        <li><a href="contactus.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Contact Us</a></li>
      </ul>
    </nav>
  </header>

  <section class="hero">
    <div class="hero-content">
      <h1 style="color: rgb(237, 162, 42);">Airline Reservation System</h1>
      <p>Book your flights to domestic and international destinations with ease.</p>
      <a href="login.jsp" class="btn-primary">Book Now</a>
    </div>
  </section>

  <section class="features">
    <div class="feature">
      <img src="feature-1.png" alt="Feature 1">
      <h2>Easy Booking</h2>
      <p>Our user-friendly booking system makes reserving your flights a breeze.</p>
    </div>
    <div class="feature">
      <img src="feature-2.png" alt="Feature 2">
      <h2>Wide Destinations</h2>
      <p>Explore a vast selection of domestic and international travel options.</p>
    </div>
    <div class="feature">
      <img src="feature-3.png" alt="Feature 3">
      <h2>Manage Your Trip</h2>
      <p>Effortlessly manage your bookings, seat preferences, and more.</p>
    </div>
  </section>

  <footer>
    <p>&copy; sudhanyajfsdproject</p>
  </footer>
</body>
</html>
