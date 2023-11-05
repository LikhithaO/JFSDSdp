<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
  <html>
  <head>
    <title>manage flight</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Poppins">
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


@keyframes fill {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(126deg);
  }
}
        </style>
  </head>


  <body>
    
    <div id="mySidenav" class="sidenav">
        <p class="logo">CUSTOMERS Dashboard</p>
      <a href="customer" class="icon-a"><i class="fa fa-dashboard icons"></i>Dashboard</a>
      <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>Home</a>
      <a href="#"class="icon-a"><i class="fa fa-list icons"></i>Profile</a>
      <a href="#"class="icon-a"><i class="fa fa-users icons"></i>Search Flights</a>
      <a href="book.jsp"class="icon-a"><i class="fa fa-users icons"></i>Book Flights</a>
      <a href="#"class="icon-a"><i class="fa fa-shopping-bag icons"></i>View Booked Flights</a>
      <a href="#"class="icon-a"><i class="fa fa-user icons"></i>Accounts</a>
      <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>   Tasks</a>
        </div>
        
  
        <div class="container" style="margin-left: 10000px;margin-top: 5rem; float: right; width: 75%; padding: 0 5rem 0 5rem;background-color:rgba(23, 67, 88, 0.5) ;">
          <h2>Manage Flights</h2>
           <hr>
            <br>
              <table class="table table-hover">
                <thead>
                  <tr>
                      <th>Id</th>
                      <th>FlightNo</th>
                      <th>From</th>
                      <th>To</th>
                      <th>Departure Date</th>
                      <th>Time</th>
                      <th>Capacity</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${flightdata}"  var="flight"> 
                  <tr> 
                  <td><c:out value="${flight.id}" /></td> 
                  <td><c:out value="${flight.number}" /></td> 
                  <td><c:out value="${flight.from}" /></td> 
                  <td><c:out value="${flight.to}" /></td> 
                  <td><c:out value="${flight.date}" /></td> 
                  <td><c:out value="${flight.hours}" /></td>
                  <td><c:out value="${flight.capacity}" /></td>  
                  <td>
                  <a href='<c:url value="view?id=${flight.id}"></c:url>'><b>View</b></a>
                  </td>
                  
                  </tr></c:forEach> 
            </tbody>
        </table>

          <ul class="pagination">
            <li ><a href="#">&laquo;</a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&raquo;</a></li>
          </ul>
      </div>

        <div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h3 id="myModalLabel">Delete Confirmation</h3>
            </div>
            <div class="modal-body">
              <p class="error-text"><i class="fa fa-warning modal-icon"></i> Are you sure you want to delete the Flight?<br>This cannot be undone.</p>
            </div>
            <div class="modal-footer">
              <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancel</button>
              <button class="btn btn-danger" data-dismiss="modal">Delete</button>
            </div>
            </div>
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