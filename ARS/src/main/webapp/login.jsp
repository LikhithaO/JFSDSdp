<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
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
  .btn-primary {
    background-color: #0f0cc7;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
    transition: background-color 0.3s;
    width: 100%;
  }

  .btn-primary:hover {
    background-color: #0c0c0c;
  }

  .text-center {
    text-align: center;
    margin-top: 20px;
  }

  .btn-link {
    color: #333;
    text-decoration: none;
    padding: 5px;
  }

  .btn-floating {
    border: none;
    background-color: transparent;
    cursor: pointer;
  }

  .btn-floating:hover {
    color: #0f0f0e;
  }

  .mx-1 {
    margin: 0 5px;
  }

  /* Header */
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

  .fab {
    font-size: 24px;
  }
  .body1 {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-image: url('https://img.freepik.com/free-photo/workplace-with-smartphone-laptop-black-table-top-view-copyspace-background_144627-24860.jpg');
      background-size: cover;
      background-position: center;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }
    

    .button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px #999;
  text-shadow: 2px 2px 4px #000000;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.login-box {
  background-color: rgba(23, 67, 88, 0.5);
  padding: 100px;
  border-radius: 25px;
  max-width: 400px;
  width: 100%;
  text-align: center;
  display: flex; /* Use flexbox to center align content vertically and horizontally */
  flex-direction: column; /* Stack items vertically */
  align-items: center; /* Center items horizontally */
}

.login-box h2 {
  margin-bottom: 30px;
  color: white;
  text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
}

.form-group {
  margin-bottom: 20px;
  text-shadow: 2px 2px 4px #000000;
}

.form-group label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
  color: white;
}
.form-group input {
  width: 100%; /* Set the input field width to 100% to expand to the container's width */
  padding: 15px; /* Increase the padding for height */
  border: 1px solid #ccc;
  border-radius: 10px;
  height: 40px; /* Increase the height of the input box */
}

.form-group button {
  width: 100%;
  padding: 15px; /* Increase the padding for height */
  background-color: orange;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

 .captcha {
            font-size: 24px;
            margin-bottom: 10px;
        }

    @keyframes fadeIn {
      0% {
        opacity: 0;
        transform: translateY(-50px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }
</style>
<title>Airline Reservation System</title>
</head>
<body>

  <div class="background-container"></div>

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
  <body1>
  <span class="blink">
  <h3 align=center style="color: red">${message}</h3>
  </span>
  
    <div class="login-box">
      <h2>Login</h2>
     
          <br/>
      <form method="post" action="checklogin" onsubmit="return validateCaptcha();">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" id="username" name="email" placeholder="Enter your username">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="pwd" placeholder="Enter your password">
        </div>
        <div class="captcha" id="captcha" style="margin-bottom: 30px;
  color: white;
  text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF; font-family:cursive; ;"></div>
        <input type="text" id="captcha-input" placeholder="Enter the CAPTCHA" required><br><br>
        <div class="form-group">
          <button type="submit" onclick="login()">Login</button>
        </div>
      </form>
    </div>
    <script>
        // Generate a random CAPTCHA code
        function generateCaptcha() {
            var captcha = '';
            var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            for (var i = 0; i < 6; i++) {
                captcha += characters.charAt(Math.floor(Math.random() * characters.length));
            }
            document.getElementById('captcha').textContent = captcha;
        }

        // Validate the entered CAPTCHA
        function validateCaptcha() {
            var enteredCaptcha = document.getElementById('captcha-input').value;
            var displayedCaptcha = document.getElementById('captcha').textContent;
            
            if (enteredCaptcha === displayedCaptcha) {
                alert('CAPTCHA validation successful. You can proceed to login.');
                return true;
            } else {
                alert('CAPTCHA validation failed. Please try again.');
                generateCaptcha(); // Regenerate CAPTCHA
                document.getElementById('captcha-input').value = '';
                return false;
            }
        }

        // Initial CAPTCHA generation
        generateCaptcha();
    </script>
  </body1>
  
</body>
</html>
