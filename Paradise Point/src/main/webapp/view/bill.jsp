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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.js"></script>
     <link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js" ></script>
<style>
 body
  {
   font-family: Courgette;
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
  #logo 
  {
    position: relative;
    top:3px;
    left:7px;
   
  }
  table 
  {
     width:60%;
     margin-left: 20%;
     margin-right: 20%;
     text-align: center;
     
  }
  table,td
  {
    border:1px solid gray;
  }
  td 
  {
    padding: 15px;
  }
  #text 
  {
    text-align: center;
  }
  #heading 
  {
    font-size:23px;
    font-family: 'Courier New', Courier, monospace;
    letter-spacing: 1px;
    font-weight: 500;
  }
</style>
 
<title>Paradise Point</title>
</head>


<body>
 
  <img src="https://i.ibb.co/2g4tjMf/Paradise-modified.png" id="logo" width="90px" height="90px" alt="logo"/>
 
    <h3 style="color:#e7717d;margin-top:-18px" id="text">Hi, Your Invoice Receipt is here !</h3>
    <h4 style="color:#afd275" id="text">Please Confirm your order !</h4>
    <br>
    <table >
     
        <tr class="bg-info">
          <td colspan="4"><span id="heading">Paradise point</span><br>Moments made perfect!</td>
        </tr>
     
      
        <tr >
          <td colspan="2" >Name : ${uname}</td>
          <td colspan="2" id="date"></td>
        
        </tr>
        <tr style="  font-family: 'Courier New', Courier, monospace;font-weight:567" >
          <td colspan="2"><b>Hall Cost  :</b> <br> <span style="  font-family: 'Courier New', Courier, monospace;"> <span style="font-size:15px">&#8377;</span>${hall.hallcost}</span></td>
          <td><b>Accomodation :</b>  <br><span style="  font-family: 'Courier New', Courier, monospace;">${hall.accomodation}</span> </td>
          <td><b>AC cost :</b><br><span style="  font-family: 'Courier New', Courier, monospace;"><span style="font-size:15px">&#8377;</span>${hall.AC}</span></td>
        </tr>
        <tr class="bg-info">
          <td colspan="4">Services Chosen</td>
          
        </tr>
        <tr class="bg-default" style="  font-family: 'Courier New', Courier, monospace;font-weight:520px">
          <td><b>S.NO</b></td>
          <td><b>Service name</b></td>
          <td><b>Cost</b></td>
          <td><b>Remove</b></td>
        </tr>
        <tr >
        <c:set var="serialNo" value="1" scope="page"/>
        <c:forEach items="${services}" var="service">
          <form:form method="post" action="${contextPath}/delete" modelAttribute="service">
          <tr style="  font-family: 'Courier New', Courier, monospace;font-weight:520px">
            <td>${serialNo}</td>
            <td>${service.servicename}</td> 
            <td><span style="font-size:15px">&#8377;</span>${service.servicecost}</td>
            <td><input type="submit" class="btn btn-danger" value="Delete" /></td> 
          </tr>
          <input type="hidden" name="delserviceid" value="${service.compkey.serviceid}" />
          <input type="hidden" name="delpartyid" value="${service.compkey.partyid}" />
          <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>          
          </form:form>
          <c:set var="serialNo" value="${serialNo + 1}" scope="page"/>
        </c:forEach>

          <td class="bg-success" colspan="4"><b>Total cost :</b> <span style=" font-weight:567; font-family: 'Courier New', Courier, monospace;"><span style="font-size:15px">&#8377;</span>${totalcost}</span></td>
        </tr>
     
    </table>
   
    <br><br>
    <form:form method="POST" action="${contextPath}/pay" modelAttribute="service">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Confirm your order" class="btn btn-warning" style="display:block;margin-left:auto;margin-right:auto"/>
    <br>
    </form:form> 
   
  <br><br>
    <script>
var n = new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("date").innerHTML ="Date : "+ d + "/" + m + "/" + y;
  
  </script>
</body>
</html>