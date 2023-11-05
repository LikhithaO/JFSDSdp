<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
        * {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  background-image: url('static/main_background.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  margin: 0;
  padding: 0;
  justify-content: center;
    align-items: center;
  box-sizing: border-box;
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
.reachUs-button {
	padding: 1rem;
	background-color: #0dac30;
	border: none;
	color: white;
	border-radius: 4px;
	cursor: pointer;
}
.reachUs-button:hover{
	background-color: #1ac840;
}


/* Contact form styles */
.contact-form {
    display: flex;
    justify-content: center;
    align-items: center;
    height: calc(100vh - 4rem);
	padding: 40px 0;
	margin: 0 10px;
}

.form-container {
	max-width: 40%;
	margin: 0 auto;
	padding: 20px;
	background-color: rgba(23, 67, 88, 0.5);
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.contact-form h2 {
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 20px;
}

.form-container label {
	display:block;
	font-weight: bold;
}
.form-container input, textarea{
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	margin-bottom: 1rem;
	resize: vertical;
}
.submit-button {
	padding: 10px 20px;
	background-color: #0dac30;
	border: none;
	color: white;
	border-radius: 4px;
	font-size: 1rem;
	cursor: pointer;
}

/* Contact info styles */
.contact-info {
	text-align: center;
	padding: 50px 0;
	background-color: #f7f7f7;
}

.contact-info h2 {
	margin-bottom: 20px;
}

/* Footer styles */
footer {
	padding: 20px;
	text-align: center;
	background-color: #333;
	color: white;
}
/* Hamburger styles */
.hamburger {
	display: none;
	color: rgb(0, 0, 0);
	font-size: 1.5rem;
	cursor: pointer;
}

/* Media queries for responsiveness */
@media only screen and (max-width: 768px) {
	.logo {
		display: none;
	}

	.hamburger {
		display: flex;
	}

	#nav-menu {
		position: absolute;
		top: 4rem;
		left: 0;
		background-color: #333;
		width: 100%;
		display: none;
	}

	#nav-menu.active {
		display: block;
		flex-direction: row;
		padding: 1rem;
	}
}

    </style>
	<title>Contact us Page</title>
</head>

<body>
	<!-- Header section -->
    <div></div>
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


	<!-- Contact form -->
	<section class="contact-form">
		<div class="form-container">
			<h2  style="color: #fff;">Contact Us</h2>
			<form action="#" method="POST">

				<label for="name"  style="color: #fff;">Name: </label>
				<input type="text" id="name" name="name" required>

				<label for="email"  style="color: #fff;">Email: </label>
				<input type="email" id="email" name="email" required>

				<label for="phone"  style="color: #fff;">Phone: </label>
				<input type="tel" id="phone" name="phone">

				<label for="message"  style="color: #fff;">Message: </label>
				<textarea id="message" name="message" rows="4" required></textarea>

				<button type="submit" class="submit-button">Submit</button>
			</form>
		</div>
	</section>

	<script src="script.js"></script>
</body>

</html>
