<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Airline Booking Form</title>
    <style>
body{
    background-image: url('https://img.freepik.com/premium-photo/airplane-taking-off-from-airport-3d-render-illustration_37416-519.jpg?w=1380');
    background-size: cover;
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
#form{
    background-color: rgba(23, 67, 88, 0.8) ;
    height:500px;
    width:700px;
    margin:auto;
    margin-top: 10%;
    margin-left: 330px;
    padding:20px;
    opacity: 0.7;
}
#form h3{
    border-bottom: 2px solid #3399ff;
    width:210px;
    padding: 5px;
}
::placeholder{
    color:#fff
}
#input #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input2 #input-group{
    width:195px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input3 #input-group{
    margin-left: 50px;
}
#input4 #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input4 #input-group1{
    width:615px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input5 h3{
    width:220px;
    padding: 5px;
}
#input6 #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input6 #input-group1{
    width:615px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
    </style>
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
    <div id="mySidenav" class="sidenav">
		<p class="logo">CUSTOMERS Dashboard</p>
	  <a href="customer.html" class="icon-a"><i class="fa fa-dashboard icons"></i>Dashboard</a>
	  <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>Home</a>
	  <a href="#"class="icon-a"><i class="fa fa-list icons"></i>Profile</a>
	  <a href="search.html"class="icon-a"><i class="fa fa-users icons"></i>Search Flights</a>
	  <a href="bookedflights.html"class="icon-a"><i class="fa fa-shopping-bag icons"></i>View Booked Flights</a>
	  <a href="#"class="icon-a"><i class="fa fa-user icons"></i>Accounts</a>
	  <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>   Tasks</a>

	</div>
    <div class="container"><!--container-->

        <form class="form-group" action="insertbookedflight" method="post"><!--form-->
            

            <div id="form"><!--form-->
                <h3 class="text-white">Booking Details</h3>

            <div id="input"><!--input-->
                <input type="text" id="input-group" name="from" placeholder="From">
                <input type="text" id="input-group" name="to" placeholder="To">
                <input type="date" id="input-group" name="date" placeholder="Departure Date">
                <select  id="input-group" name="bname" style="background: rgba(23, 67, 88, 0.8) ;">
                    <option value="">Preffered Airline</option>
                    <option value="">IndoGo</option>
                    <option value="">AirIndia</option>
                    <option value="">SpaceJet</option>
                </select>
                <select  id="input-group" name="seating" style="background: rgba(23, 67, 88, 0.8) ;">
                    <option value="">Preffered Seating</option>
                    <option value="">Economy Class</option>
                    <option value="">Business Class</option>
                    <option value="">First Class</option>
                </select>
                </div><!--input-->

                <div id="input2"><!--input2-->
                    <input type="number" id="adults" name="adults" placeholder="Adult" style="width:300px; margin:5px; border-top: none; border-left: none;border-right: none; outline: none;background: transparent; color:#fff">
                    <input type="number" id="children" name="children" placeholder="Children (2-11 years)" style="width:300px; margin:5px; border-top: none; border-left: none;border-right: none; outline: none;background: transparent; color:#fff">
                    <input type="number" id="infant" name="infant" placeholder="Infant (under 2 years)" style="width:300px; margin:5px; border-top: none; border-left: none;border-right: none; outline: none;background: transparent; color:#fff">
                </div><!--input2-->

                <div id="input5"><!--input5-->
                    <h3 class="text-white">Personal Details</h3>
                </div><!--input5-->

                <div id="input6"><!--input6-->
                    <input type="text" id="input-group" name="pname" placeholder="Full Name">
                    <input type="number" id="input-group" name="pcontact" placeholder="Phone Number">
                    <input type="email" id="input-group1" name="pemail" placeholder="Email">
                </div><!--input6-->
                <!-- <div id="input2">
                    <input type="number" id="input-group" placeholder="Cost" readonly>
                </div> -->
                <p style="width:300px; margin:5px; font-size: larger; border-top: none; border-left: none;border-right: none; outline: none;background: transparent; color:#fff">Total Cost: <span id="result"></span></p>

                <input type="button" class="btn btn-warning text-white" value="Calculate" onclick="calculateCost()">
                <button type="submit" class="btn btn-warning text-white" >Submit Form</button>
                <button type="reset" class="btn btn-primary">Clear Form</button>
            </div><!--form-->
            
        </form><!--form-->

    </div><!--container-->
    <script>
        function calculateCost() {
            var adults = parseFloat(document.getElementById('adults').value) || 0;
            var children = parseFloat(document.getElementById('children').value) || 0;

            if (!isNaN(adults) && !isNaN(children)) {
                var sum = (adults*10000) + (children*8000);
                document.getElementById("result").textContent = sum;
            } else {
                document.getElementById("result").textContent = "Please enter valid numbers.";
            }
        }
    </script>
</body>
</html>