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
.container{
  max-width: 700px;
  width: 100%;
  background-color:rgba(23, 67, 88, 0.5);
  padding: 60px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
    height: auto;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: orange;
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: orange;
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

.container header{
    position: relative;
    font-size: 20px;
    font-weight: 600;
    color: #fefdfd;
}
.container header::before{
    content: "";
    position: absolute;
    left: 0;
    bottom: -2px;
    height: 3px;
    width: 27px;
    border-radius: 8px;
    background-color: #4070f4;
}

@media (max-width: 750px) {
    .container form{
        overflow-y: scroll;
    }
    .container form::-webkit-scrollbar{
       display: none;
    }
    form .fields .input-field{
        width: calc(100% / 2 - 15px);
    }
}

@media (max-width: 550px) {
    form .fields .input-field{
        width: 100%;
    }
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
    background-color: #fff;
  }

  .text-center {
    text-align: center;
    margin-top: 20px;
  }

  .btn-link {
    color: #fff;
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
    box-shadow: 0 4px 8px #fff;
    padding: 20px;
    width: 90%; /* Adjust the width as desired */
    max-width: 400px;
    margin: 0 auto;
  }

  .fab {
    font-size: 24px;
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
        <li><a href="login.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Login</a></li>
        <li><a href="contactus.jsp" style="color: brown; font-weight: bolder; font-size: larger;">Contact Us</a></li>
      </ul>
    </nav>
  </header>

  <div class="container">
    <div class="title" style="color: #fff;">Registration</div>
    <div class="content">
      <form method="post" action="insertcustomer">
        <div class="user-details">
          <div class="input-box">
            <span class="details" style="color: #fff;">Name</span>
            <input type="text" name="name" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details" style="color: #fff;">Email</span>
            <input type="text"  name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details" style="color: #fff;">Contact Number</span>
            <input type="text" name="contact" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details" style="color: #fff;">Password</span>
            <input type="password" name="pwd" placeholder="Enter your password" required>
          </div>
          <div class="input-box">
            <span class="details" style="color: #fff;">Address</span>
            <input type="text" name="address" placeholder="Enter your Address" required>
          </div>
        </div>
        <div class="button">
        <div class="gender-details">
          <input type="radio" name="gender" value="MALE" id="dot-1">
          <input type="radio" name="gender" value="FEMALE" id="dot-2">
          <span class="gender-title" style="color: #fff;">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender" style="color: #fff;">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender" style="color: #fff;">Female</span>
          </label>
          </div>
        </div>
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>
    
</body>
</html>
