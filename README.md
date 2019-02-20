# CaringPaws
*/css*/
*
{
	  margin: 0;
	  padding: 0;
}
/*----------Navigation---------*/
#nav-bar
{ 
  position: sticky;
  top: 0;
  z-index: 10; 
}
.navbar-brand img 
{
	height : 40px; 
	padding-left: 30px;
}
.navbar-nav li 
{ 
    padding: 0 10px;
}
.navbar-nav above
{
	float: right;
	text-align: left;
}
#nav-bar ul li a:hover{
	color: #007bff! important;
} 
.navbar 
{
	background: #fff;
}
.navbar-toggler
{
	border: none!important;
}
.nav-link
{
	color: #555!important;
	font-weight: 600;
	font-size: 16px;
}
/*----------Slider-----------*/
	#slider
	{
		width: 100%;
	}
    .carousel-caption
	{ 
	     top: 50%;
		 transform: translateY(-50%);
		 bottom: initial!important
	}
	.carousel-caption h5
	{
         color: #555;
         font-size: 42px;
	}	
/*---------------------About------*/
#about	
{
	padding-top: 50px;
	padding-bottom: 50px;
	color: #555;
}
*/index.html*/
<html> 
<head>

<title>Login Form Design</title>

</head>
  
	 <body>
     <!-----NavigationBar---->
	 <section id="nav-bar">
	 <nav class="navbar navbar-expand-lg navbar-light ">
	<img src="./images/cp.jpeg" alt="Hello">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">LOGIN</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">SITTERS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">PETS</a>
      </li>
	   <li class="nav-item active">
        <a class="nav-link" href="#">REVIEWS</a>
      </li>
	  <li class="nav-item active">
        <a class="nav-link" href="#">CONTACT</a>
      </li>
    </ul>
  </div>
</nav>
	 </section>
	 <!-------Slider--------->
	 <div id="slider">
	 <div id="headerSlider" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#headerSlider" data-slide-to="0" class="active"></li>
    <li data-target="#headerSlider" data-slide-to="1"></li>
    <li data-target="#headerSlider" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src=".img/joey.jpg" >
    <div class="carousel-caption">
	<h5>Meet The Pets: Joey</h5>
	</div
</div
    <div class="carousel-item">
      <img class="d-block img-fluid" src="Charlotte.png" >
	  <div class="carousel-caption">
	<h5>Meet The Pets: Charlotte</h5>
	</div
 </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="brad.jpg" >
	  <div class="carousel-caption">
	<h5>Meet The Pets: Brad</h5>
	</div
    </div>
	<div class="carousel-item">
      <img class="d-block img-fluid" src="thelma and luis.jpg" >
	  <div class="carousel-caption">
	<h5>Meet The Pets: Thelma and Luis</h5>
	</div
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
	 <!---------About---------->
	 <section id ="about">
	 <div class="cotainer">
	 <div class="row">
	 <div class="col-md-6">
	 <h2>About Us</h2>
		 <div class="about-content">
		   this is the about us document. bipboop.
	  </div>  
	     <button type="button" class="btn btn-primary">Read more>></button>
	 </div>
	 <div class="col-md-6"></div>
     </div>
	 </div>
	 </section>
</body>


</html>
