<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
<!-----NavigationBar---->
<section id="nav-bar">
 <nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="#contact">CONTACT</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="#ourteam">OUR TEAM</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#reviews">REVIEWS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#care providers">CARE PROVIDERS</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="#pets">PETS</a>
      </li>
	   <li class="nav-item">
        <a class="nav-link" href="#services">SERVICES</a>
      </li><li class="nav-item">
        <a class="nav-link" href="/Software_Eng_Project1/login.jsp">REGISTER</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="#login">LOGIN</a>
      </li>
    </ul>
  </div>
</nav>
</section>
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
	  <!--------services------->
    <section id="services">
<div class="container text-center">
<h1 class="title">Services</h1>
<div class="row text-center">
<div class="col-md-4 services">
<h4>Pet Sitting</h4>
<p>We provide a platform for pet owners to find qualified sitters! </p>
</div>
</div>
</div>
</section>
	<!--------Reveiws-------->
<section id="reviews">
<div class="container">
<h1>Reviews</h1>
<p class="text-center">Reviews</p>
<div class="row">
 <div class="col-md-4 text-center">
    <div class="profile">
    <p>Great services.</p>
        <h3>User 1 <span>Pet owner</span></h3>
    </div>
 </div>
    <div class="col-md-4 text-center">
    <div class="profile">

    <p>Great job opportunity..</p>
        <h3>User 2 <span>Care provider</span></h3>
    </div>
 </div>
    <div class="col-md-4 text-center">
    <div class="profile">

    <p>Reliable service.</p>
        <h3>User 3<span>Pet owner</span></h3>
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
    <div class="col-md-3 profile-pic text-center">
    <div class="img-box"><img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Small-city-symbol.svg"
	class="img-responsive">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
        <h2>Katie</h2>
        <h3>Member</h3>
        <p>Katie bio</p>
    </div>
        <div class="col-md-3 profile-pic text-center">
    <div class="img-box">
    <img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Small-city-symbol.svg"
	class="img-responsive">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
        <h2>Liam</h2>
        <h3>Member</h3>
        <p>Liam bio</p>
    </div>
        <div class="col-md-3 profile-pic text-center">
    <div class="img-box">
    <img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Small-city-symbol.svg"
	class="img-responsive">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
        <h2>Ashley</h2>
        <h3>Member</h3>
        <p>Ashley Bio</p>
    </div>
        <div class="col-md-3 profile-pic text-center">
    <div class="img-box">
   <img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Small-city-symbol.svg"
	class="img-responsive">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
        <h2>Manav</h2>
        <h3>Member</h3>
        <p>Manav Bio</p>
    </div>
	 <div class="col-md-3 profile-pic text-center">
    <div class="img-box">
    <img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Small-city-symbol.svg"
	class="img-responsive">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
        <h2>Paul</h2>
        <h3>Member</h3>
        <p>Paul bio</p>
    </div>
	<div class="col-md-3 profile-pic text-center">
    <div class="img-box"><img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Small-city-symbol.svg"
	class="img-responsive">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
        <h2>Nika</h2>
        <h3>Member</h3>
        <p>Nika bio</p>
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