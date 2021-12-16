<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Paradise Point</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">
   <link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>
   <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <style>

@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";
body {
    font-family: 'Times New Roman', Times, serif;
    background: #fafafa;
}

p {
    font-family: 'Times New Roman', Times, serif;
    font-size: 18px;
    font-weight: 300;
    line-height: 1.7em;
    color: rgb(0, 0, 0);
}

a,
a:hover,
a:focus {
    color: inherit;
    text-decoration: none;
    transition: all 0.3s;
}

.navbar {
    padding: 15px 10px;
    background: #fff;
    border: none;
    border-radius: 0;
    margin-bottom: 40px;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
    box-shadow: none;
    outline: none !important;
    border: none;
}

.line {
    width: 100%;
    height: 1px;
    border-bottom: 1px dashed #ddd;
    margin: 40px 0;
}

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */

.wrapper {
    display: flex;
    width: 100%;
    align-items: stretch;
}

#sidebar {
    min-width: 250px;
    max-width: 250px;
    background: #4d4d4d;
    color: #fff;
    transition: all 0.3s;
}

#sidebar.active {
    margin-left: -250px;
}

#sidebar .sidebar-header {
    padding: 20px;
    background: #4d4d4d;
}

#sidebar ul.components {
    padding: 20px 0;
    border-bottom: 1px solid #47748b;
}

#sidebar ul p {
    color: #fff;
    padding: 10px;
}

#sidebar ul li a {
    padding: 10px;
    font-size: 1.1em;
    display: block;
}

#sidebar ul li a:hover {
    color: #4d4d4d;
    background: #fff;
}

#sidebar ul li.active>a,
a[aria-expanded="true"] {
    color: #fff;
    background: #c5c5c5;
}

a[data-toggle="collapse"] {
    position: relative;
}

.dropdown-toggle::after {
    display: block;
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}

ul ul a {
    font-size: 0.9em !important;
    padding-left: 30px !important;
    background: #c5c5c5;
}

ul.CTAs {
    padding: 20px;
    cursor: grab;
}

ul.CTAs a {
    text-align: center;
    font-size: 0.9em !important;
    display: block;
    border-radius: 5px;
    margin-bottom: 5px;
}

a.download {
    background: #fff;
    color: #4d4d4d;
}

a.article,
a.article:hover {
    background: #4d4d4d !important;
    color: #fff !important;
}

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */

#content {
    width: 100%;
    padding: 20px;
    min-height: 100vh;
    transition: all 0.3s;
}

/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */

@media (max-width: 768px) {
    #sidebar {
        margin-left: -250px;
    }
    #sidebar.active {
        margin-left: 0;
    }
    #sidebarCollapse span {
        display: none;
    }
}
#date 
    {
        width:100%;
        display:block;
        margin-left:auto;
        margin-right:auto;
        padding:8px;
       
        
    }
    #submit 
    {
        width:45%;
        padding:13px;
        margin-left:-20px;
    }
 
  #alert
{
    width:30%;
    display: block;
    margin-left: auto;
    margin-right: auto;
}
  </style>
</head>
<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar" class="fixed">
            <div class="sidebar-header">
                <h3>Admin Dashboard</h3>
            </div>

            <ul class="list-unstyled components">
                <li >
                    <form id="home" method="POST" action="${contextPath}/admin/dashboard">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['home'].submit()" class="nav-link" style="color:black"><span class="c"><i class="fa fa-home" style="font-size:20px"></i>&nbsp;&nbsp;Home</span></a>
                </li>
                <li>
                    <form id="hall" method="POST" action="${contextPath}/admin/hall">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                     <!-- <a href="#"><i class="fa fa-building" style='font-size:20px'></i>&nbsp;&nbsp;Halls</a> -->
                    <a onclick="document.forms['hall'].submit()" class="nav-link" style="color:black"><span class="c"><i class="fa fa-building" style='font-size:20px'></i>&nbsp;&nbsp;Halls</span></a> 
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-calendar" style="font-size:20px"></i>&nbsp;&nbsp;Date</a>
                </li>
                <li>
                    <form id="party" method="POST" action="${contextPath}/admin/party">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['party'].submit()" class="nav-link" style="color:black"><span class="c"><i class='fa fa-glass-martini-alt' style='font-size:20px'></i>&nbsp;&nbsp;Parties</span></a>
                </li>
                <li>
                    <form id="service" method="POST" action="${contextPath}/admin/service">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['service'].submit()" class="nav-link" style="color:black"><span class="c"><i class='fa fa-gear' style='font-size:20px'></i>&nbsp;&nbsp;Services</span></a>
                
                </li>
                <li >
                    <form id="orders" method="POST" action="${contextPath}/admin/order">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['orders'].submit()" class="nav-link" style="color:black"><span class="c"><i class="fa fa-shopping-cart" style="font-size:20px"></i>&nbsp;&nbsp;Orders</span></a> 
                </li>
            </ul>
            
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <h2 class="text-danger">Welcome Admin!</h2>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item" >
                                <!--  <a class="nav-link" style="color:white" href="#">Logout</a> -->
                                 <c:if test="${pageContext.request.userPrincipal.name != null}">
                                 <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                 </form>
                                 <a onclick="document.forms['logoutForm'].submit()" class="nav-link c" style="color:black"><span class="c">Logout</span></a>                           
                                 </c:if>
                             </li>
                        </ul>
                    </div>
                </div>
            </nav>
          
          <div class="container">
               <div class="row">
                <div class="col-sm-12">
                     <div id="datediv">
                          
                        <form:form method="POST" action="${contextPath}/admin/adddate" modelAttribute="datesel">
                       <div class="row">
                       <div class="col-sm-2"></div>
                       <div class="col-sm-5">
                       <input type="date" placeholder="yyyy-mm-dd" name="datesel" required id="date"/>
                       </div>
                       <div class="col-sm-3">
                      <input class="btn btn-warning" type="submit" value="Add" id="submit"/>
                      </div>
                      <div class="col-sm-2"></div>
                      </div>
                      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                     </form:form>
                     <br>
                     <div id="alert"  class="alert alert-success alert-dismissible">
                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                       ${msg}
                      </div>
                     </div>


              </div>             
               </div>

          </div>
          <br>
          <hr>
          <img src="https://lh3.googleusercontent.com/proxy/fS3ODK2Ha_sxJ_vP0MsNdDPlQMzNS7dEXAolj246SIXWTF-TLkEPfwhxHbr_23kyqwLJmRpiCUI5-W-bROKKE2M"
			style="display: block; margin-left: auto; margin-right: auto; width: 43px;margin-bottom:10px;" />
          <h3 style="text-align: center;color: crimson;">Dates Available</h3>
          <!--users display-->
          <table class="table table-striped" style="width: 80%;margin-right: 10%;margin-left: 10%;">
              <thead>
                <tr>
                  <th>Date</th>
                  <th>Hall 1</th>
                  <th>Hall 2</th>
                  <th>Hall 3</th>
                  <th>Hall 4</th>
                  <th>Hall 5</th>
                  <th>Hall 6</th>
                </tr>
              </thead>
              <tbody style="text-align:center;">
                <!-- <span class="badge badge-pill badge-danger" style="padding:6px;width:8%">Available</span>
                <span class="badge badge-pill badge-success" style="padding:6px;width:8%">Booked</span> -->
               <c:forEach items="${bookings}" var="booking">
	              <tr>
	               <td>${booking.date}</td>
	               <c:choose>
                     <c:when test="${booking.hall1==0}">
                         <td><div class="badge-pill badge-danger" style="padding:3px;width:100%">Available</div></td>
                     </c:when>
                     <c:otherwise>
                         <td><div class="badge-pill badge-success" style="padding:3px;width:100%">Booked</div></td>
                     </c:otherwise>
                   </c:choose>
	               <c:choose>
                     <c:when test="${booking.hall2==0}">
                         <td><div class="badge-pill badge-danger" style="padding:3px;width:100%">Available</div></td>
                     </c:when>
                     <c:otherwise>
                         <td><div class="badge-pill badge-success" style="padding:3px;width:100%">Booked</div></td>
                     </c:otherwise>
                   </c:choose>
	               <c:choose>
                     <c:when test="${booking.hall3==0}">
                         <td><div class="badge-pill badge-danger" style="padding:3px;width:100%">Available</div></td>
                     </c:when>
                     <c:otherwise>
                         <td><div class="badge-pill badge-success" style="padding:3px;width:100%">Booked</div></td>
                     </c:otherwise>
                   </c:choose>
	               <c:choose>
                     <c:when test="${booking.hall4==0}">
                         <td><div class="badge-pill badge-danger" style="padding:3px;width:100%">Available</div></td>
                     </c:when>
                     <c:otherwise>
                         <td><div class="badge-pill badge-success" style="padding:3px;width:100%">Booked</div></td>
                     </c:otherwise>
                   </c:choose>
	              <c:choose>
                     <c:when test="${booking.hall5==0}">
                         <td><div class="badge-pill badge-danger" style="padding:3px;width:100%">Available</div></td>
                     </c:when>
                     <c:otherwise>
                         <td><div class="badge-pill badge-success" style="padding:3px;width:100%">Booked</div></td>
                     </c:otherwise>
                   </c:choose>
	               <c:choose>
                     <c:when test="${booking.hall6==0}">
                         <td><div class="badge-pill badge-danger" style="padding:3px;width:100%">Available</div></td>
                     </c:when>
                     <c:otherwise>
                         <td><div class="badge-pill badge-success" style="padding:3px;width:100%">Booked</div></td>
                     </c:otherwise>
                   </c:choose>
	              </tr>
               </c:forEach>
 
              </tbody>
            </table>
            

          
        </div>
    </div>

</body>
</html>



