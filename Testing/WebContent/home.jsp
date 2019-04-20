<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Caring Paws</title>
<link rel ="stylesheet" href="/Software_Eng_Project1/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<style>
	a {
		margin-top: 20px !important;
	}
	
	.carousel.slide {
		max-height: 600px;
		overflow: hidden;
	}
	
	.carousel-inner {
		max-height: 600px;
	}
	
	.alert {
		margin: 15px auto;
		max-width: 900px;
	}
	
</style>
<body>
<!-----NavigationBar---->
<section id="nav-bar">
	<%@include file="navbar.jsp" %>
</section>

<%
	if(request.getAttribute("message") != null && request.getAttribute("message") != "") {
		%>
			<div class="alert alert-success" role="alert">
			  You are already logged in!
			</div>
		<%
	}
%>
	<!-------Slider------->
<div id="slider">
<div id="headerSlider" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#headerSlider" data-slide-to="0" class="active"></li>
    <li data-target="#headerSlider" data-slide-to="1"></li>
    <li data-target="#headerSlider" data-slide-to="2"></li>
	<li data-target="#headerSlider" data-slide-to="3"></li>
	<li data-target="#headerSlider" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block img-fluid"
	  src="https://s3-eu-west-1.amazonaws.com/logs3euw1cdn/cloudcontent/fotos/agregadorHotelero/0002/88464/288464/38.jpg">
        <div class="carousel-caption">
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid"
	  src="https://www.petmd.com/sites/default/files/anxiety-blankets-for-pets.jpg"height="1499" width="1999">
        <div class="carousel-caption">

        </div>
    </div>
	<div class="carousel-item">
      <img class="d-block img-fluid"
	  src="https://www.cityofwestminster.us/Portals/1/Images/shutterstock_134792705.jpg"height="1499" width="1999">
        <div class="carousel-caption">

        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid"
	  src="https://i.pinimg.com/originals/93/03/76/930376cfde2f064c98be687ac18ba352.jpg"height="1499" width="1999">
        <div class="carousel-caption">

        </div>
    </div>
	<div class="carousel-item">
      <img class="d-block img-fluid"
	  src="http://i.imgur.com/yX5x3QK.jpg?1"height="1499" width="1999">
        <div class="carousel-caption">

        </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#headerSlider" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#headerSlider" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>

<!--------Reveiws-------->
<section id="reviews">
<div class="container">
<h1>Reviews</h1>
<div class="row">
 <div class="col-md-4 text-center">
    <div class="profile">
    
    <h3>Stacy Anderson</h3>
    <p>I can't believe how easy it was! My dog loved it and I had a great time at the bar with my friends.</p>
    </div>
 </div>
    <div class="col-md-4 text-center">
    <div class="profile">
    
	<h3>Oliver Twist</span></h3>
    <p>I left my parakeet with the thoughtful hands at Caring Paws so I could get a haircut. They fed him, played with him, and taught him how to juggle. Great service! </p>
    </div>
 </div>
    <div class="col-md-4 text-center">
    <div class="profile">
    
	<h3>Daenerys Targaryen</span></h3>
    <p>I have a few pets dragons that are normally really hard to handle. However, Caring Paws made it easy to leave them alone for a weekend while I went to Winterfell. Really appreciate their service.</p>
    </div>
 </div>
</div>
</div>
</section>



<!------OURTEAM------->
<section id="ourteam">
<div class="container">
    <h1>Our Team</h1>
    <div class="row">
    <div class="col-md-4 profile-pic text-center">
    <div class="img-box"><img style="margin-top: 15px; margin-left: 100px; border-radius: 50%; overflow: hidden; max-height: 150px; max-width: 150px;" src="katy.jpg"
	class="img-responsive">
    <ul>
    </ul>
    </div>
        <h2>Katy</h2>
        <h3>Member</h3>
    </div>
        <div class="col-md-4 profile-pic text-center">
    <div class="img-box">
    <img style="margin-top: 15px; margin-left: 100px; border-radius: 50%; overflow: hidden; max-height: 150px; max-width: 150px;" src="https://miro.medium.com/max/2400/1*rjVZ7GdF0e2ScXIJC3NFIg.jpeg"
	class="img-responsive">
    <ul>
    </ul>
    </div>
        <h2>Liam</h2>
        <h3>Member</h3>
    </div>
    <div class="col-md-4 profile-pic text-center">
    <div class="img-box">
    <img src="ashley.jpg" style="margin-top: 15px; margin-left: 100px; border-radius: 50%; overflow: hidden; max-height: 150px; max-width: 150px;"
	class="img-responsive">
    <ul>
    </ul>
    </div>
        <h2>Ashley</h2>
        <h3>Member</h3>
    </div>
        <div class="col-md-4 profile-pic text-center">
    <div class="img-box">
   <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzlZJCihMUZZq1TcVQDE-6OuPqeydKalr1CRFneYUGr-R0zWJ3"
	class="img-responsive"
	style="margin-top: 15px; margin-left: 100px; border-radius: 50%; overflow: hidden; width: 150px; height: 150px; max-height: 150px; max-width: 150px;">
    <ul>
    </ul>
    </div>
        <h2>Manav</h2>
        <h3>Member</h3>
    </div>
	<div class="col-md-4 profile-pic text-center">
    <div class="img-box">
    <img src="https://i.groupme.com/1024x1023.jpeg.7b1d7a9479c84e709513e72319045c15"
	class="img-responsive"
	style="margin-top: 15px; margin-left: 100px; border-radius: 50%; overflow: hidden; width: 150px; height: 150px; max-height: 150px; max-width: 150px;">
    <ul>
    </ul>
    </div>
    <h2 style="margin-left: 0px;">Paul</h2>
    <h3>Member</h3>
    </div>
	<div class="col-md-4 profile-pic text-center">
    <div class="img-box"><img style="margin-top: 15px; margin-left: 100px; border-radius: 50%; overflow: hidden; max-height: 150px; max-width: 150px;" src="https://yt3.ggpht.com/a-/ACSszfGwROECgWzzFpNNu2HuWZooxEhU673uZE9T8w=s900-mo-c-c0xffffffff-rj-k-no"
	class="img-responsive">
    <ul>
    </ul>
    </div>
        <h2>Nika</h2>
        <h3>Member</h3>
    </div>
    </div>
</div>
</section>

<!-----------Contact-------->
<section id="contact">
 <div class="container">
    <h1>Contact</h1>
    <div class="row">
    <div class="col-md-6">
    <form class="contact-form">
    <div class="form-group">
    <input type="text" class="form-control" placeholder="Your Name">
    </div>
    <div class="form-group">
    <input type="number" class="form-control" placeholder="Phone no.">
    </div>
    <div class="form-group">
    <input type="email" class="form-control" placeholder="Email id">
    </div>
    <div class="form-group">
    <textarea class="form-control" rows="4" placeholder="Your Message"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">SEND MESSAGE</button>
    </form>
    </div>
    <div class="col-md-6 contact-info">
        <div class="follow"><b>Address:</b><i class="fa fa-map-marker"></i>UTD</div>
        <div class="follow"><b>Phone:</b><i class="fa fa-phone"></i>+1 1234567890</div>
        <div class="follow"><b>Email:</b><i class="fa fa-envelope-o"></i>abc@website.com</div>
        <div class="follow"><label><b>Get Social:</b></label>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
        </div>
    </div>
    </div>
 </div>
</section>
<!-----------Footer------->
    <section id="footer">
        <div class="container text-center">
            <p>Made With <i class="fa fa-heart-o"></i> by Group 4</a></p>
        </div>
    </section>
    <!------Footer End------>
    <script src="js/smooth-scroll.js"></script>
    <script>
	var scroll = new SmoothScroll('a[href*="#"]');
    </script>
</body>
</html>