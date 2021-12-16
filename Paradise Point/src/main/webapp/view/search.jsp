<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Paradise Point</title>
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
     <!--<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
     <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>-->

  <style>
      /*navigation style starts*/  
     .nav-item .c:hover
    {
      color: #df4f5d;/* #D9B84F;/*#757070;*/
      border-bottom: 2px solid #df4f5d;/* #D9B84F;/*#757070;*/
;
      padding-top: 6px;
      padding-bottom: 6px;

    }
    .nav-item .c:active
    {
      
      color:  rgb(252, 165, 5);
      
    }
    .c 
    {
      color: #d64654;
      font-size: 18px;
    }
    nav
    {
      margin-bottom: 0;
      
    }
    #demo
    {
      margin-top: 0;
    }
    li
    {
      overflow: hidden;    
    }
   
    /*navigation style ends*/
    @media screen and (min-width: 660px) {
      .logo
    {
      position: absolute;
      top:0;
      left:10;
      z-index: 1;
      height:130px;
       width:130px;

    }
  }
    @media screen and (max-width: 659px) {
      .logo
    {
      position: absolute;
      top:0;
      left:2%;
      z-index: 1;
      height:70px;
       width:70px;

    }
    .mySlides{
    max-width: 200px;
    max-height: 300px;
    position: relative;
    margin: auto;
    background-color: lightpink;
  }
  .img1 
  {
    height:300px;
  }

}
#alert
{
    width:70%;
    display: block;
    margin-left: auto;
    margin-right: auto;
}
 /*footer style starts*/ 
   /* Full-width input fields #528d38*/
   
   .footer ,pre
  {
    border: none;
    font-family: Courgette;
    background-color: #c2b9b0;/*#5f9c45/* #595959;*/
  }
ul 
{
  list-style-type: disc;
}
#comment{
  color: white;
  background-color: rgba(112, 112, 112, 0.5);

}
.footer-h3 
{
  color:#7e685a;
}
* 
{
  font-family: Courgette;
}
.copyright
{
  text-align: center;
  background-color: rgb(172, 133, 98);
}
    /*footer style ends*/
    /*search style starts*/
    .flip-card {
  background-color: transparent;
  width: 350px;
  height: 350px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #c2cad0;
  color: black;
}

.flip-card-back {
  background-color:#e7717d;
  color: white;
  transform: rotateY(180deg);
}
    /*search style ends*/
   
  </style>
</head>
<body>
   <!--Navigation bar start -->
   
    <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color:#c2b9b0;padding:5px;border: none;margin-bottom:0%;font-size:16px;color:darkred;font-family:Courgette">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" style="background-color:#e7717d;border:none;"  class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
          </button>
          <a class="navbar-brand" href="#"><img src="https://i.ibb.co/2g4tjMf/Paradise-modified.png" class="logo" alt="paradisepoint" ></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav navbar-right text-danger">
           <li class="nav-item">
              <c:if test="${pageContext.request.userPrincipal.name != null}">
                      <form id="home" method="POST" action="${contextPath}/party">
                           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                      </form>
                      <a onclick="document.forms['home'].submit()"><span class="c">Home</span></a>                           
                </c:if>
             </li>
           
           <li class="nav-item"><a href="#contact-us"><span class="c">Contact Us</span></a></li>
   
           </ul>
        </div>
      </div>
    </nav>
     <br><br><bR>
    <br><br>
     <!--Navigation bar ends-->
     <!--search starts-->
     <img src="https://cdn-icons-png.flaticon.com/512/122/122932.png" style="display: block;margin-left: auto;margin-right: auto;width: 47px;"/>
       <h2 style="text-align: center;font-family: Courgette;text-align: center;color: #afd275;">Search features</h2>
<br>
<div class="container">
    <div class="row"  >
        
        <div class="col-sm-6" >
            <div class="flip-card "  style="display: block;margin-left: auto;margin-right: auto;">
                <div class="flip-card-inner">
                  <div class="flip-card-front">
                    <img src="https://wecleanamerica.com/wp-content/uploads/2016/09/banquet-hall.jpeg" alt="Avatar" style="width:340px;height:340px;margin-top:5px">
                  </div>
                  <div class="flip-card-back">
                      
                    <h1 style="margin-top: 60px;">Search By Hall</h1> 
                    <p>Choose halls of your choice and <br> proceed to choose dates !</p> 
                    <form:form action="${contextPath}/hall" method="post">
                     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                     <input type="submit" class="btn" style="color:#7e685a;background-color: #c2cad0;padding:10px"  value="Search by Hall"/>
                    </form:form>
                   <%--  <a href="<c:url value='/user/hall' />"><button class="btn" style="color:#7e685a;background-color: #c2cad0;padding:10px"  type="button">Search by hall</button></a> --%>
                  </div>
                </div>
              </div>
        </div>
    
        <div class="col-sm-6">
            <div class="flip-card"  style="display: block;margin-left: auto;margin-right: auto;">
                <div class="flip-card-inner">
                  <div class="flip-card-front">
                    <img src="https://png.pngtree.com/png-vector/20210530/ourlarge/pngtree-calendar-2022-with-golden-color-png-image_3399219.jpg" alt="Avatar" style="width:340px;height:340px;margin-top:5px">
                  </div>
                  <div class="flip-card-back">
                    <h1 style="margin-top: 60px;">Search By Date</h1> 
                    <p>Pick the date of Occasion and <br> then select the hall!!</p> 
                    <form:form action="${contextPath}/date" method="post">
                     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                     <input type="submit" class="btn" style="color:#7e685a;background-color: #c2cad0;padding:10px"  value="Search by Date"/>
                    </form:form>
                    <%-- <a href="<c:url value='/user/date' />"><button class="btn" style="color:#7e685a;background-color: #c2cad0;padding:10px" type="button">Search by Date</button></a> --%>
                  </div>
                </div>
              </div>
        </div>
       
    </div>
</div>




<br><br>



       <!--search ends-->   
      <!--footer starts-->
       <!--footer starts-->
  <div class="container-fluid" id="contact-us">
    <div class="row footer">
      <div class="col-sm-4" >
        <br>
        <img src="https://i.ibb.co/2g4tjMf/Paradise-modified.png" class="footerlogo" alt="logo" width="40px">
        <br>
        <p class="about-p">Paradise Point is a perfect place for events and parties.
          Paradise point is a team making it easier to find and book events available in our hall.
          We are a young team that loves to find all kinds of services to the customers.</p>
        <span><img width="30px" src="https://freepngimg.com/download/android/64140-android-computer-whatsapp-icons-download-hd-png.png"></span>&nbsp;&nbsp;
        <span><img width="26px" src="https://www.edigitalagency.com.au/wp-content/uploads/instagram-logo-svg-vector-for-print.svg"></span>&nbsp;&nbsp;
        <span><img width="30px" src="https://www.freeiconspng.com/thumbs/linkedin-logo-png/linkedin-logo-3.png"></span>&nbsp;&nbsp;
        <span><img width="30px" src="https://cdn.freebiesupply.com/logos/large/2x/twitter-3-logo-png-transparent.png"></span>&nbsp;&nbsp;

        <br>
       
      </div>
      <div class="col-sm-4" style="font-size: 16px;" >
        <h3 class="footer-h3">Occasions Celebrated</h3>
       
        <pre>
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
      <div class="col-sm-4" >
        <h3 class="footer-h3">Stay in touch</h3>
        <i class="material-icons" style="font-size:20px;border-radius:50%;background-color:rgba(179, 179, 179,0.5);padding:4px">call</i><span style="display:inline-block;" class="stay">&nbsp;+91 9787517989</span>
        &nbsp;&nbsp;&nbsp;
        <i class="material-icons" style="font-size:20px;border-radius:50%;background-color:rgba(179, 179, 179,0.5);padding:4px">mail_outline</i><span class="stay">&nbsp;paradisepoint@gmail.com</span>
       <br><br>
       <h4 class="footer-h3">For Website Designing</h4>
       <i class="material-icons" style="font-size:20px;border-radius:50%;background-color:rgba(179, 179, 179,0.5);padding:5px">person</i><span class="stay">&nbsp;Dhivya S - Jennifer - Pavithra M</span>
         <br><br>
        <i class="material-icons" style="font-size:20px;border-radius:50%;background-color:rgba(179, 179, 179,0.5);padding:5px">call</i><span class="stay">&nbsp;+91 9003093180</span>
     <br>
      </div>
        
    
    </div>
  </div>
  <div class="copyright container-fluid">Copyrights @ <span style="color:rgb(122, 13, 13)">ParadisePoint </span>| 2021 All rights reserved</div>
  

<!--footer ends-->
      <!--footer ends-->
</body>
</html>