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
    background-position: center;
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
#main {
  transition: margin-left .5s;
  padding: 16px;
  margin-left: 300px;
}
.head{
	padding:20px;
}
.col-div-6{
	width: 50%;
	float: left;
}
.profile{
	display: inline-block;
	float: right;
	width: 160px;
}
.pro-img{
	float: left;
	width: 40px;
	margin-top: 5px;
}
.profile p{
	color: white;
	font-weight: 500;
	margin-left: 55px;
	margin-top: 10px;
	font-size: 13.5px;
}
.profile p span{
	font-weight: 400;
    font-size: 12px;
    display: block;
    color: #8e8b8b;
}
.col-div-3{
	width: 25%;
	float: left;
}

.box{
	width: 85%;
	height: 100px;
	background-color: rgba(23,67,88,0.5);
	margin-left: 10px;
	padding:10px;
}
.box p{
	 font-size: 35px;
    color: rgb(21, 22, 124);
    font-weight: bold;
    line-height: 30px;
    padding-left: 10px;
    margin-top: 20px;
    display: inline-block;
}
.box p span{
	font-size: 20px;
	font-weight: 400;
	color: rgb(21, 22, 124);
}
.box-icon{
	font-size: 40px!important;
    float: right;
    margin-top: 35px!important;
    color: rgb(21, 22, 124);
    padding-right: 10px;
}
.col-div-8{
	width: 70%;
	float: left;
}
.col-div-4{
	width: 30%;
	float: left;
}
.content-box{
	padding: 20px;
}
.content-box p{
	margin: 0px;
    font-size: 20px;
    color: #f7403b;
}
.content-box p span{
	float: right;
    background-color: #ddd;
    padding: 3px 10px;
    font-size: 15px;
}
.box-8, .box-4{
	width: 95%;
	background-color: rgba(23,67,88,0.5);
	height: 330px;
	
}
.nav2{
	display: none;
}

.box-8{
	margin-left: 10px;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  
}
td, th {
  text-align: left;
  padding:15px;
  color: #f6f0f0;
  border-bottom: 1px solid #81818140;
}
        </style>
	</head>


	<body>
		
		<div id="mySidenav" class="sidenav">
		<p class="logo">CUSTOMERS Dashboard</p>
	  <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i>Dashboard</a>
	  <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>Home</a>
	  <a href="#"class="icon-a"><i class="fa fa-list icons"></i>Profile</a>
	  <a href="#"class="icon-a"><i class="fa fa-users icons"></i>Search Flights</a>
	  <a href="book.jsp"class="icon-a"><i class="fa fa-users icons"></i>Book Flights</a>
	  <a href="allflightscustomer"class="icon-a"><i class="fa fa-shopping-bag icons"></i>View All Flights</a>
	  <a href="#"class="icon-a"><i class="fa fa-user icons"></i>Accounts</a>
	  <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>   Tasks</a>

	</div>
	<div id="main">

		<div class="head">
			<div class="col-div-6">
	<span style="font-size:30px;cursor:pointer; color: white;" class="nav"  >Dashboard</span>
	</div>
		
		
		<div class="clearfix"></div>
	</div>

		<div class="clearfix"></div>
		<br/>
		
		<div class="col-div-3">
			<div class="box">
				<p style="color: #fff;">10<br/><span style="color: #fff;">Bookedflights</span></p>
				<i class="fa fa-users box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<p style="color: #fff;">35<br/><span style="color: #fff;">Active Flights</span></p>
				<i class="fa fa-list box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<p style="color: #fff;">99<br/><span style="color: #fff;">Details</span></p>
				<i class="fa fa-shopping-bag box-icon"></i>
			</div>
		</div>
		<div class="clearfix"></div>
		<br/><br/>
		<div class="col-div-8">
			<div class="box-8">
			<div class="content-box">
				<p>Top Flights<span>Sell All</span></p>
				<br/>
				<table>
	  <tr>
	    <th>Flight Name</th>
	    <th>From</th>
        <th>Destination</th>
	  </tr>
	  <tr>
	    <td>Air India</td>
	    <td>Delhi</td>
        <td>New York</td>
	  </tr>
	  <tr>
	    <td>Emirates</td>
	    <td>Delhi</td>
	    <td>Mexico</td>
	  </tr>
	  <tr>
	    <td>Qatar</td>
	    <td>Qatar</td>
	    <td>Austria</td>
	  </tr>
	  
	</table>
			</div>
		</div>
		</div>

	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	

	</body>


	</html>