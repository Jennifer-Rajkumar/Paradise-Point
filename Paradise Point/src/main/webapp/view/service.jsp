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
    .checkbox{ display: inline-block; }
.checkbox input[type=checkbox]{
    margin: 0;
    visibility: hidden;
    left: 1px;
    top: 1px;
}
.checkbox label{
    background-color: #d55050;
    width: 50px;
    height: 26px;
    cursor: pointer;
    border-radius: 5px;
    box-shadow: inset 0px 4px 0px 0px rgba(0, 0, 0, 0.2);
    transition: all 0.5s ease 0s;
}
.checkbox label:before{
    content: "";
    background-color: #fafafa;
    width: 20px;
    height: 17px;
    border-radius: 4px;
    box-shadow: 0px 3px 0px 0px #d2d2d2;
    position: absolute;
    top: 3px;
    left: 3px;
    transition: all 0.25s;
}
.checkbox input[type=checkbox]:checked+label{ background-color: #25c686; }
.checkbox input[type=checkbox]:checked+label:before{ left: 27px; }
@media only screen and (max-width:767px){
    .checkbox{ margin: 0 0 20px; }
}

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
     <!--service starts-->
    
     
	   
	
     <img src="https://cdn1.iconfinder.com/data/icons/celebration-color-1/64/arch-decoration-wedding-floral-ceremony-512.png" style="display: block;margin-left: auto;margin-right: auto;width: 47px;"/>
       <h2 style="text-align: center;font-family: Courgette;text-align: center;color: #afd275;">Services Offered</h2>
       <div class="container">
               <form:form method="POST" action="${contextPath}/bill" modelAttribute="service">
              <div class="row">
                <c:forEach items="${services}" var="service">
                   
                    <div class="col-sm-4" style="margin-bottom:30px">
                    <div style="display:block;margin-left:auto;margin-right:auto;text-align:center;border:1px solid #c2cad0;padding-bottom:10px; box-shadow: 1px 1px #c2cad0;">
                        <img src='${service.serviceimg}' width="100%" height="250px"/>
                    <h4 style="color:#7e685a">Service name : ${service.servicename}</h4>
                    <h4 style="color:#afd275">Service Cost : ${service.servicecost}</h4>
                      <div class="checkbox">
                <input type="checkbox" id="checkbox+${service.compkey.serviceid}" value=${service.compkey.serviceid} name="service" >
                <label for="checkbox+${service.compkey.serviceid}"></label>
             </div>             	   
                    </div>
                </div>
               
             </c:forEach>


              </div>
              <br><br>
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
              <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
 <input type="submit" value="Generate Bill" class="btn btn-danger" style="display:block;margin-left:auto;margin-right:auto"/>
              
</form:form>

<br><br>
       </div>



     <!--service ends-->

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





  
