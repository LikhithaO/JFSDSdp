<!Doctype HTML>
  <html>
  <head>
    <title></title>
    <style>
            body{
  margin:0px;
  padding: 0px;
    background-image: url('https://img.freepik.com/premium-photo/airplane-taking-off-from-airport-3d-render-illustration_37416-519.jpg?w=1380');
  overflow: hidden;
  font-family: system-ui;
    background-size: cover;
    background-position: fixed;
}
.clearfix{
  clear: both;
}
.logo{
  margin: 0px;
  margin-left: 28px;
    font-weight: bold;
    color: white;
    margin-bottom: 30px;
}
.logo span{
  color: #f7403b;
}
.sidenav {
  height: 100%;
  width: 300px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #272c4a;
  overflow: hidden;
  transition: 0.5s;
  padding-top: 30px;
}
.sidenav a {
  padding: 15px 8px 15px 32px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
  transition: 0.3s;
}
.sidenav a:hover {
  color: #f1f1f1;
  background-color:#1b203d;
}
.sidenav{
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
}

.flight-details-container {
    background-color: rgba(23, 67, 88, 0.5);
    padding: 20px;
    border-radius: 10px;
    margin-top: 120px; /* Adjust top margin to create space below the sidenav */
    margin-right: 250px; /* Adjust right margin to position to the right of the sidenav */
    width: 50%; /* Adjust the width as needed */
    float: right; /* Add float to move it to the right */
    text-align: center;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
}

.flight-details-container h2 {
    margin-bottom: 20px;
}

.flight-details-container label {
    font-weight: bold;
    display: inline-block;
    width: 40%; /* Adjust this width to your preference */
    text-align: right;
    margin-right: 2%; /* Add some spacing between label and input */
}

.flight-details-container input[type="text"],
.flight-details-container input[type="number"],
.flight-details-container input[type="date"],
.flight-details-container input[type="time"] {
    width: 50%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 10px;
}

.flight-details-container button {
    background-color: #f7403b;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
}

.flight-details-container button:hover {
    background-color: #ff5550;
}

/* Toggle navigation styles */
.nav {
    display: block;
}

.nav2 {
    display: none;
}

.icon-a {
    visibility: visible;
}

.icons {
    visibility: visible;
}

        </style>
  </head>


  <body>
    
    <div id="mySidenav" class="sidenav">
        <p class="logo">ADMIN Dashboard</p>
          <a href="admin.jsp" class="icon-a"><i class="fa fa-dashboard icons"></i>Dashboard</a>
          <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>Home</a>
          <a href="allflightsadmin"class="icon-a"><i class="fa fa-users icons"></i> All Flights</a>
          <a href="#"class="icon-a"><i class="fa fa-list icons"></i> Details</a>
          <a href="viewallcustomers"class="icon-a"><i class="fa fa-shopping-bag icons"></i>Customers</a>
          <a href="#"class="icon-a"><i class="fa fa-user icons"></i>Accounts</a>
          <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>   Tasks</a>
    </div>
    
    <div id="main">
        <div class="clearfix"></div>
        
        <!-- Flight Details Container -->
        <div class="flight-details-container">
            <h2>Add Flight</h2>
            <span class="blink">
				<h3 align=center style="color: red">${message}</h3>
			</span>
			<br>
            <form method="post" action="insertflight">
            	<div>
                	<label for="flight_number">Flight Number</label>
                	<input type="number" id="flight_number" name="flight_number" required>
              	</div>
                <div>
                    <label for="flightName">Flight Name:</label>
                    <input type="text" id="flightName" name="name" required>
                </div>
                <div>
                    <label for="from">From:</label>
                    <input type="text" id="from" name="from" required>
                </div>
                <div>
                    <label for="to">To:</label>
                    <input type="text" id="to" name="to" required>
                </div>
                <div>
                    <label for="departureDate">Departure Date:</label>
                    <input type="date" id="departureDate" name="dd" required>
                </div>
                <div>
                    <label for="journeyHours">Journey Hours:</label>
                    <input type="number" id="journeyHours" name="hours" min="1" value="1" required>
                </div>
                <div>
                    <label for="intervals">Intervals:</label>
                    <input type="number" id="intervals" name="intervals" min="0" value="0">
                </div>
                <div>
                  <label for="capacity">Capacity:</label>
                  <input type="number" id="capacity" name="capacity" min="25" max="200" value="0">
              </div>
                <button type="submit">Add Flight</button>
            </form>
        </div>
    </div>

        
  

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>

    $(".nav").click(function(){
      $("#mySidenav").css('width','70px');
      $("#main").css('margin-left','70px');
      $(".logo").css('visibility', 'hidden');
      $(".logo span").css('visibility', 'visible');
       $(".logo span").css('margin-left', '-10px');
       $(".icon-a").css('visibility', 'hidden');
       $(".icons").css('visibility', 'visible');
       $(".icons").css('margin-left', '-8px');
        $(".nav").css('display','none');
        $(".nav2").css('display','block');
    });

  $(".nav2").click(function(){
      $("#mySidenav").css('width','300px');
      $("#main").css('margin-left','300px');
      $(".logo").css('visibility', 'visible');
       $(".icon-a").css('visibility', 'visible');
       $(".icons").css('visibility', 'visible');
       $(".nav").css('display','block');
        $(".nav2").css('display','none');
   });

  </script>

  </body>


  </html>