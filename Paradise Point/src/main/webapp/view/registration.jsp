<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="iso-8859-2">
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
  body {
  margin: 0;
  padding: 0;
  background: url(https://images.unsplash.com/photo-1469371670807-013ccf25f16a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2VkZGluZyUyMHZlbnVlfGVufDB8fDB8fA%3D%3D&w=1000&q=80);
  background-size: cover;
  font-family: sans-serif;
  text-align: center;
}
/*
1.https://i.pinimg.com/originals/4a/42/7c/4a427cae188f585c3ab66fe7e2384482.jpg
2.https://i.pinimg.com/736x/eb/39/5c/eb395c5719d4b14837208dcfbc65ec9c.jpg*
*/
.box {
  position: absolute;
  top: 55%;
  left: 70%;
  transform: translate(-50%, -50%);
  width: 35%;
  height: 60%;
  padding: 2.5rem;
  box-sizing: border-box;
  background: rgba(202, 202, 202, 0.8);
  border-radius: 0.625rem;
  font-size: 15px;
}
.box2 {
  position: absolute;
  top: 8%;
  left: 53%;
  

}
.box3 {
  position: absolute;
  top: 89%;
  left: 43%;
  font-size: 14px;
  color: white;

}
.box4{
  position: absolute;
  top: 2%;
  left: 2%;
  font-size: 14px;
  color: white;

}

.box h2{
  margin: 0 0 1.875rem;
  padding: 0;
  color: #fff;
  text-align: center;
}

.box .inputBox {
  position: relative;
}

.box .inputBox input {
  width: 80%;
  padding: 0.625rem 0;
  font-size: 15px;
  color: #fff;
  letter-spacing: 0.062rem;
  margin-left: 10%;
  margin-right: 10%;
  margin-bottom: 1.875rem;
  border: none;
  border-bottom: 1px solid white;;
  outline: none;
  background: transparent;
}

.box .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: #fff;
  pointer-events: none;
  transition: 0.5s;
}

.box .inputBox input:focus ~ label,
.box .inputBox input:valid ~ label,
.box .inputBox input:not([value=""]) ~ label {
  top: -1.125rem;
  left: 0;
  color: #03a9f4;
  font-size: 0.75rem;
}



.box input[type="submit"]:hover {
  background-color: #1cb1f5;
}
     
   
  </style>
   <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
   <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	  <div class="box4">
        <img src="https://i.ibb.co/2g4tjMf/Paradise-modified.png" class="logo" alt="paradisepoint" width="90px" height="90px">
    </div>
    <div class="box2">
    <h1 style="color: rgb(255, 255, 255);">Welcome to Paradise Point</h1>
</div>
    <div class="box">
        
        <h2>Register</h2>
        <form:form method="POST" modelAttribute="userForm" class="form-signin">
                                            <spring:bind path="username">
                                                <div class="${status.error ? 'has-error' : ''} inputBox" >
                                                    <form:input type="text" path="username" placeholder="Username" autofocus="true"></form:input>
                                                    <form:errors path="username"></form:errors>
                                                </div>
                                            </spring:bind>
                                            <spring:bind path="mailid">
                                                <div class="${status.error ? 'has-error' : ''} inputBox">
                                                    <form:input type="email" path="mailid" placeholder="Email ID" autofocus="true"></form:input>
                                                    <%-- <form:errors path="mailid"></form:errors> --%>
                                                </div>
                                            </spring:bind>
                                
                                            <spring:bind path="password">
                                                <div class=" ${status.error ? 'has-error' : ''} inputBox">
                                                    <form:input type="password" path="password" placeholder="Password"></form:input>
                                                    <form:errors path="password"></form:errors>
                                                </div>
                                            </spring:bind>
                                
                                            <spring:bind path="passwordConfirm">
                                                <div class=" ${status.error ? 'has-error' : ''} inputBox">
                                                    <form:input type="password" path="passwordConfirm" placeholder="Confirm your password"></form:input>
                                                    <form:errors path="passwordConfirm"></form:errors>
                                                </div>
                                            </spring:bind>
                                
                                           <button class="btn" type="submit" style="color:white;background-color: rgb(255, 144, 162);width:30%;">Sign Up</button>
                                          <h5 class="text-center">Already a  user ?<a href="${contextPath}/login">Sign in here </a></h5>
                                        </form:form>
      </div>
      <div class="box3">
      <marquee width="80%">Need a place to celebrate your Big Day ? Then what are you looking for sign up and explore the wide range of features available and enjoy this heaven on earth !!!!!</marquee>
    </div>
	  
 
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
            <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
