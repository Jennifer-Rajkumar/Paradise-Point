<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                      <form id="logoutForm" method="POST" action="${contextPath}/logout">
                           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                      </form>
                      <a onclick="document.forms['logoutForm'].submit()"><span class="c">Logout</span></a>                           
                </c:if>
             </li>       
            </ul>
         </div>
       </div>
     </nav>
     <br><br><bR>
    <br><br>
     <!--Navigation bar ends-->
     <hr>
     <div id="alert" class="alert alert-success alert-dismissible fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Hurray!</strong> Your Payment transaction is successful!
      </div>
      <br>
      <div id="alert" class="alert alert-warning alert-dismissible fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Congrats!</strong> Your hall has been booked successfully!
      </div>
      <img src="http://pngedits.com/public/uploads/preview/smiley-face-emoji-png-images-hd-download-11626606130soijnfuzlf.png" width="200px" height="200px" style="display: block;margin-left: auto;margin-right: auto;">
      
       
        <p style="text-align:center"><strong>Thank you!</strong> Visit again !</p>
     </body>
</html>