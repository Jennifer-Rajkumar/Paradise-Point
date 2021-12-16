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
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<title>Halls</title>
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
 /*carousel style starts*/

    .mySlides {display:none;}
      .carousel-inner img {
         width: 100%;
         height: 50%;
         
         
      }
      .left carousel-control:hover
      {
        background-color: lightpink;
      }
      .mySlides {display: none;}
  .mySlides1{display: none;}
  .img1 {vertical-align: middle;}
  /* Slideshow container */
  .mySlides{
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
    bottom:12px;
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
    animation-duration:5s;
    animation-iteration-count: infinite;
  }
  
  
  @-webkit-keyframes fade {
    from {opacity: .8} 
    to {opacity: 1}
  }
  
  @keyframes fade {
    from {opacity: .85} 
    to {opacity: 1}
  }
  
  /* On smaller screens, decrease text size */
  @media only screen and (max-width: 300px) {
    .text {font-size: 10px}
  }
  /*carousel style ends*/
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

</style>
</head>
<body>
 
    <!--Navigation bar start -->
    <div id="myDiv">
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
             <li class="nav-item">
              <c:if test="${pageContext.request.userPrincipal.name != null}">
                      <form id="search" method="POST" action="${contextPath}/<%=session.getAttribute("partyid")%>-search">
                           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                      </form>
                      <a onclick="document.forms['search'].submit()"><span class="c">Search</span></a>                           
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
     <!--hall starts-->
     <img src="data:image/png;base64,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" style="display: block;margin-left: auto;margin-right: auto;width: 47px;"/>
       <h2 style="text-align: center;font-family: Courgette;text-align: center;color: #afd275;">Halls Available</h2>
       <div class="container">
              <div class="row">
                <c:forEach items="${halls}" var="hall" >
                   <form:form action="${contextPath}/${hall.hallid}-date" method="post">
                    <div class="col-sm-4" style="margin-bottom:30px">
                    <div style="display:block;margin-left:auto;margin-right:auto;text-align:center;border:1px solid #c2cad0;padding-bottom:10px; box-shadow: 1px 1px #c2cad0;">
                        <img src='${hall.hallimg}' width="100%" height="200px"/>
                    <h4 style="color:#7e685a">Accomodation : ${hall.accomodation}</h4>
                    <h4 style="color:#afd275">AC Cost : ${hall.AC}</h4>
                     <h4 style="color:#e7717d">Hall Cost : ${hall.hallcost}</h4>
                     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="submit" class="btn btn-success" value="Select"/>
                    <%-- <a href="<c:url value='/user/${hall.hallid}-date' />"><button type="button" class="btn btn-success">Select</button></a> --%>
                    </div>
                   
                </div>
                </form:form>
                
               
             </c:forEach>

              </div>
       </div>



     <!--hall ends-->

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