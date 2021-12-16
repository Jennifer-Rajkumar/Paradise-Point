<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<title>Paradise Point</title>
  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.5/build/pure-min.css" integrity="sha384-LTIDeidl25h2dPxrB2Ekgc9c7sEC3CWGM6HeFmuDNUjX76Ert4Z4IY714dhZHPLd" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=DM Serif Text' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Cookie' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Kalam' rel='stylesheet'>
  <link href="https://fonts.googleapis.com/css2?family=Quintessential&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
     <!--<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
     <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>-->

<style>
/*navigation style starts*/
.nav-item .c:hover {
	color: #df4f5d; /* #D9B84F;/*#757070;*/
	border-bottom: 2px solid #df4f5d; /* #D9B84F;/*#757070;*/;
	padding-top: 6px;
	padding-bottom: 6px;
}

.nav-item .c:active {
	color: rgb(252, 165, 5);
}

.c {
	color: #d64654;
	font-size: 18px;
}

nav {
	margin-bottom: 0;
}

#demo {
	margin-top: 0;
}

li {
	overflow: hidden;
}

/*navigation style ends*/
@media screen and (min-width: 660px) {
	.logo {
		position: absolute;
		top: 0;
		left: 10;
		z-index: 1;
		height: 130px;
		width: 130px;
	}
}

@media screen and (max-width: 659px) {
	.logo {
		position: absolute;
		top: 0;
		left: 2%;
		z-index: 1;
		height: 70px;
		width: 70px;
	}
	.mySlides {
		max-width: 200px;
		max-height: 300px;
		position: relative;
		margin: auto;
		background-color: lightpink;
	}
	.img1 {
		height: 300px;
	}
}
/*carousel style starts*/
.mySlides {
	display: none;
}

.carousel-inner img {
	width: 100%;
	height: 50%;
}

.left carousel-control:hover {
	background-color: lightpink;
}

.mySlides {
	display: none;
}

.mySlides1 {
	display: none;
}

.img1 {
	vertical-align: middle;
}
/* Slideshow container */
.mySlides {
	max-width: 1500px;
	max-height: 600px;
	position: relative;
	margin: auto;
	background-color: lightpink;
}

.text {
	color: #160505;
	padding: 0px 10px;
	position: absolute;
	bottom: 12px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #160808;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

.dot {
	height: 13px;
	width: 13px;
	margin: 0 2px;
	background-color: rgb(112, 100, 100);
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #383434;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 5s;
	-webkit-animation-iteration-count: infinite;
	animation-name: fade;
	animation-duration: 5s;
	animation-iteration-count: infinite;
}

@-webkit-keyframes fade {
	from {opacity: .8
}

to {
	opacity: 1
}

}
@keyframes fade {
	from {opacity: .85
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 10px
	}
}
/*carousel style ends*/
/*footer style starts*/
/* Full-width input fields #528d38*/
.footer, pre {
	border: none;
	font-family: Courgette;
	background-color: #c2b9b0; /*#5f9c45/* #595959;*/
}

ul {
	list-style-type: disc;
}

#comment {
	color: white;
	background-color: rgba(112, 112, 112, 0.5);
}

.footer-h3 {
	color: #7e685a;
}

* {
	font-family: Courgette;
}

.copyright {
	text-align: center;
	background-color: rgb(172, 133, 98);
}
/*footer style ends*/
/*about us style starts*/
.aboutp {
	margin-left: 5px;
	font-size: 16px;
	letter-spacing: 1px;
}
/*about us style ends*/
/*how works style starts*/
.chooseh2 {
	font-size: 24px;
}
.c :hover{
  cursor: crosshair;
}
/*how works style ends*/
</style>
</head>
<body>

	<div id="myDiv">
	   
		<nav class="navbar navbar-inverse navbar-fixed-top"
			style="background-color: #c2b9b0; padding: 5px; border: none; margin-bottom: 0%; font-size: 16px; color: darkred; font-family: Courgette">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button"
						style="background-color: #e7717d; border: none;"
						class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img
						src="https://i.ibb.co/2g4tjMf/Paradise-modified.png" class="logo"
						alt="paradisepoint"></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right text-danger">
						<li class="nav-item"><a href="#home"><span class="c">Home</span></a></li>
						<li class="nav-item"><a href="#aboutus"><span class="c">About
									Us</span></a></li>
						<li class="nav-item"><a href="#occasion"><span class="c">Occasions</span></a></li>
				
						<li class="nav-item"><a href="#contact-us"><span class="c">Contact Us</span></a></li>
						 <li class="nav-item">
						 <c:if test="${pageContext.request.userPrincipal.name != null}">
						 <%--  <c:set var="${username}" value="${pageContext.request.userPrincipal.name}"/> --%>
                          <form id="logoutForm" method="POST" action="${contextPath}/logout">
                              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                          </form>
                         <a onclick="document.forms['logoutForm'].submit()"><span class="c">Logout</span></a>                           
                        </c:if></li> 
						
					</ul>
				</div>
			</div>
		</nav>
</div>
		<!--Navigation bar ends-->
		<!-- Carousel starts-->
		<div>
			<div class="slideshow-container" style="background-color: white"
				id="home">
				<hr>
				<div id="back1">
					<div class="mySlides fade">

						<img class="img1" src="https://media.istockphoto.com/photos/the-wedding-stage-picture-id498110303?k=20&m=498110303&s=612x612&w=0&h=nyk-PgC4W5szJisRMNTZnC3YnJPe8kd8WNc1Z2jym28=" style="width: 100%" height="550px" alt="merakiclaystudio">

					</div>


				</div>
				<div id="back2">
					<div class="mySlides fade">

						<img class="img1"
							src="https://c0.wallpaperflare.com/preview/845/264/924/hall-banquet-wedding-interior.jpg"
							style="width: 100%" height="550px" alt="merakiclaystudio">

					</div>
				</div>
				<div id="back">
					<div class="mySlides fade">

						<img class="img1"
							src="https://c0.wallpaperflare.com/preview/325/781/108/events-venue-banquet-hall.jpg"
							width="100%" height="550px" alt="merakiclaystudio">
					</div>
				</div>
			</div>
			<div style="text-align: center">
				<span class="dot"></span> <span class="dot"></span> <span
					class="dot"></span>

			</div>
		</div>

		<script>
			var slideIndex = 0;
			showSlides();

			function showSlides() {
				var i;
				var slides = document.getElementsByClassName("mySlides");
				var dots = document.getElementsByClassName("dot");
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				slideIndex++;
				if (slideIndex > slides.length) {
					slideIndex = 1
				}
				for (i = 0; i < dots.length; i++) {
					dots[i].className = dots[i].className
							.replace(" active", "");
				}
				slides[slideIndex - 1].style.display = "block";
				dots[slideIndex - 1].className += " active";
				setTimeout(showSlides, 2000); // Change image every 2 seconds
			}
		</script>
		<!--Carousel ends-->
		<!--about us starts-->
		<br>
		<div id="aboutus">
			<img src="https://i.ibb.co/8xW3r5s/quote.png"
				style="display: block; margin-left: auto; margin-right: auto; width: 40px;"
				alt="merakiclaystudio">

			<h2
				style="font-family: Courgette; text-align: center; color: #afd275">Who
				We Are ?</h2>
			<p class="aboutp">Founded in 2021, Paradise Point is a perfect
				place for events and parties. Paradise point is a team making it
				easier to find and book events and services available in our hall.
				We are a young and energitic team that loves to find all kinds of
				trendy, chic, professional, or unique services to the customers. We
				accomodate over 1500 people and celebrate eight kind of Occasions.
				The ultimate objective is to connect the right people to the right
				kind of services, bridging the gap and delivering value!</p>


			<br>
		</div>
		<!--about us ends-->

		<!--parties starts-->
		
		<!--parties ends-->
		<!--how works starts-->

		<div class="container">
			<img
				src="data:image/jpeg;base64,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"
				style="display: block; margin-left: auto; margin-right: auto; width: 55px;"
				alt="merakiclaystudio">
			<h2
				style="text-align: center; font-family: Courgette; text-align: center; color: #afd275;">How
				it works?</h2>

			<br>
			<div style="text-align: center;" class="row">
				<div class="col-sm-3">
					<p
						style="font-size: 35px; font-family: Bungee Shade; color: rgb(87, 83, 83)">
						01 &nbsp;<img
							style="margin-top: -1%; display: inline; margin-left: auto; margin-right: auto; width: 50px; height: 50px"
							src="https://i.pinimg.com/736x/65/75/c9/6575c983110ed3aac962960bc85b2d6a.jpg"
							alt="quote">
					</p>
					<h2 class="chooseh2"
						style="text-transform: uppercase; font-family: 'DM Serif Text'; color: #e7717d">Occasion</h2>
					<p class="choosep">Select the type of Occasion you need to
						celebrate in our Paradise Point</p>
				</div>

				<div class="col-sm-3">
					<p
						style="font-size: 35px; font-family: Bungee Shade; color: rgb(87, 83, 83)">
						02&nbsp;<img
							style="margin-top: -1%; display: inline; margin-left: auto; margin-right: auto; width: 51px; height: 51px"
							src="data:image/png;base64,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"
							alt="quote">
					</p>
					<h2 class="chooseh2"
						style="text-transform: uppercase; font-family: 'DM Serif Text'; color: #7e685a">Dates</h2>
					<p class="choosep">Choose the date and hall for the occasion
						according to your requirements</p>
				</div>
				<div class="col-sm-3">
					<p
						style="font-size: 35px; font-family: Bungee Shade; color: rgb(87, 83, 83)">
						03&nbsp;<img
							style="margin-top: -1%; display: inline; margin-left: auto; margin-right: auto; width: 50px; height: 51px"
							src="https://cdn1.iconfinder.com/data/icons/celebration-color-1/64/arch-decoration-wedding-floral-ceremony-512.png"
							alt="quote">
					</p>
					<h2 class="chooseh2"
						style="text-transform: uppercase; font-family: 'DM Serif Text'; color: #e7717d">Services</h2>
					<p class="choosep">Select the services of your choice displayed
						for every occasion</p>
				</div>
				<div class="col-sm-3">
					<p
						style="font-size: 35px; font-family: Bungee Shade; color: rgb(87, 83, 83)">
						04&nbsp;<img
							style="margin-top: -1%; display: inline; margin-left: auto; margin-right: auto; width: 81px; height: 61px"
							src="https://i.ibb.co/yk1VtbP/output-onlinepngtools-11.png"
							alt="quote">
					</p>
					<h2 class="chooseh2"
						style="text-transform: uppercase; font-family: 'DM Serif Text'; color: #7e685a">Payment</h2>
					<p class="choosep">Finally pay the bookings amount and enjoy
						your moment happily!</p>
				</div>
			</div>

		</div>
		<br> <br>


		<!--how works ends-->
		<!--parties starts-->
		<div id="occasion">
		<img src="https://cdn-icons-png.flaticon.com/512/387/387406.png"
			style="display: block; margin-left: auto; margin-right: auto; width: 47px;" />
		<h2
			style="text-align: center; font-family: Courgette; text-align: center; color: #afd275;">Occasions
			Celebrated</h2>
			
		<div class="container" >
			<div class="row">
			   
				<c:forEach items="${parties}" var="party">
				  <form:form action="${contextPath}/${party.partyid}-search" method="post">
			     <%-- <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>  --%>
					<div class="col-sm-3" style="margin-bottom:10px">
						<div  style="display:block;margin-left:auto;margin-right:auto;text-align:center;border:1px solid grey;padding:10px" >
						<img src='${party.partyimg}' width="70px" height="60px"/>
						<h4 style="color:#e7717d">${party.partyname}</h4>
						<br>
						<input type="submit" value="Select" class="btn-success btn"/>
						<%-- <a href="<c:url value='/${party.partyid}-search' />">
						<button type="button" class="btn-success btn">Select</button></a> --%>
						<br>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/><%-- ${contextPath} --%>
					   </div>
					</div>
					</form:form>
				</c:forEach>


			</div></div></div>


		<!--parties ends-->

<hr>
	
		<!--footer starts-->
		<!--footer starts-->
		<div class="container-fluid" id="contact-us">
			<div class="row footer">
				<div class="col-sm-4">
					<br> <img src="https://i.ibb.co/2g4tjMf/Paradise-modified.png"
						class="footerlogo" alt="logo" width="40px"> <br>
					<p class="about-p">Paradise Point is a perfect place for events
						and parties. Paradise point is a team making it easier to find and
						book events available in our hall. We are a young team that loves
						to find all kinds of services to the customers.</p>
					<span><img width="30px"
						src="https://freepngimg.com/download/android/64140-android-computer-whatsapp-icons-download-hd-png.png"></span>&nbsp;&nbsp;
					<span><img width="26px"
						src="https://www.edigitalagency.com.au/wp-content/uploads/instagram-logo-svg-vector-for-print.svg"></span>&nbsp;&nbsp;
					<span><img width="30px"
						src="https://www.freeiconspng.com/thumbs/linkedin-logo-png/linkedin-logo-3.png"></span>&nbsp;&nbsp;
					<span><img width="30px"
						src="https://cdn.freebiesupply.com/logos/large/2x/twitter-3-logo-png-transparent.png"></span>&nbsp;&nbsp;

					<br> <br>
					<button type="submit" class="btn" style="margin: 5px; padding: 5px; width: 100px; background-color: #afd275;">
						<a href="#" target="_blank" style="color: black; text-decoration: none;">Book Now</a>
					</button>
				</div>
				<div class="col-sm-4" style="font-size: 16px;">
					<h3 class="footer-h3">Occasions Celebrated</h3>

					<pre
						style="border: none; background-color: #c2b9b0; font-family: Courgette">
         1. Birthday
         2. Engagement
         3. Wedding
         4. Reception
         5. Conference
         6. Get Together
         7. Corporate Party
         8. Banquet Hall
        </pre>

				</div>
				<div class="col-sm-4">
					<h3 class="footer-h3">Stay in touch</h3>
					<i class="material-icons"
						style="font-size: 20px; border-radius: 50%; background-color: rgba(179, 179, 179, 0.5); padding: 4px">call</i><span
						style="display: inline-block;" class="stay">&nbsp;+91
						9787517989</span> &nbsp;&nbsp;&nbsp; <i class="material-icons"
						style="font-size: 20px; border-radius: 50%; background-color: rgba(179, 179, 179, 0.5); padding: 4px">mail_outline</i><span
						class="stay">&nbsp;paradisepoint@gmail.com</span> <br> <br>
					<h4 class="footer-h3">For Website Designing</h4>
					<i class="material-icons"
						style="font-size: 20px; border-radius: 50%; background-color: rgba(179, 179, 179, 0.5); padding: 5px">person</i><span
						class="stay">&nbsp;Dhivya S - Jennifer - Pavithra M</span> <br>
					<br> <i class="material-icons"
						style="font-size: 20px; border-radius: 50%; background-color: rgba(179, 179, 179, 0.5); padding: 5px">call</i><span
						class="stay">&nbsp;+91 9003093180</span> <br>
				</div>


			</div>
		</div>
		<div class="copyright container-fluid">
			Copyrights @ <span style="color: rgb(122, 13, 13)">ParadisePoint
			</span>| 2021 All rights reserved
		</div>


		<!--footer ends-->
		<!--footer ends-->
</body>
</html>