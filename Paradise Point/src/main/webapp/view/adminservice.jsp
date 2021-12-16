<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

#sidebar ul li.active1>a,
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
    cursor: crosshair;
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
.c :hover{
  cursor: crosshair;
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
                <li >
                    <form id="date" method="POST" action="${contextPath}/admin/date">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['date'].submit()" class="nav-link" style="color:black"><span class="c"><i class="fa fa-calendar" style="font-size:20px"></i>&nbsp;&nbsp;Date</span></a>
                </li>
                <li>
                    <form id="party" method="POST" action="${contextPath}/admin/party">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['party'].submit()" class="nav-link" style="color:black"><span class="c"><i class='fa fa-glass-martini-alt' style='font-size:20px'></i>&nbsp;&nbsp;Parties</span></a>
                </li>
                <li class="active">
                    
                    <a href="#content" class="nav-link" style="color:black"><span class="c"><i class='fa fa-gear' style='font-size:20px'></i>&nbsp;&nbsp;Services</span></a>
                </li>
                
                <li>
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
         
          <c:if test='${msg!=null}'>
                    <div id="alert" style="width:55%;display: block;margin-left: auto;margin-right: auto;" class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                     ${msg}
                    </div>
                     <br/>
                    </c:if>  
                            
          <div class="container">
           
            <ul class="nav nav-pills flex-column " id="pills-tab" role="tablist"   >
                <li class="nav-item" style="width:20%;color: black;margin-right: 15px;text-align: center;box-shadow: 2px 2px gainsboro;margin-bottom: 15px;">
                  <a class="nav-link active" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="true">Edit Service</a>
                </li>
                <li class="nav-item" style="width:20%;color: black;margin-right: 15px;text-align: center;box-shadow: 2px 2px gainsboro;margin-bottom: 15px;">
                  <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Delete Service</a>
                </li>
                <li class="nav-item" style="width:20%;color: black;margin-right: 15px;text-align: center;box-shadow: 2px 2px gainsboro;margin-bottom: 15px;">
                  <a class="nav-link" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="false">Add Service</a>
                </li>
              </ul>
           
           
              <div class="tab-content" id="pills-tabContent" >
              <div class="tab-pane fade show active" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">


                    <br>
                    <div class="container" style="background-color:rgb(228, 247, 255);border: 1px solid gainsboro;box-shadow: 2px 2px gainsboro;padding:10px;width: 50%;margin-top:-22%">
                        <img src="https://cdn3.iconfinder.com/data/icons/social-messaging-ui-color-line/254000/35-512.png"
                        style="display: block; margin-left: auto; margin-right: auto; width: 40px;margin-top: 10px;" />
                        <br>
                    <h4
                    
                        style="text-align: center; font-family: Courgette; text-align: center; color: dodgerblue;">Edit Service</h4>
						<form:form action="/admin/searchservice" method="post" modelAttribute="service">
						  Party ID: <input type="text" class="form-control" name="partyid"required/>
						  Service ID: <input type="text" class="form-control" name="serviceid" required/>
						  <br>
						  <input type="submit" class="btn btn-info" value="Search" style="display: block;margin-left: auto;margin-right: auto;"/>
						</form:form>
                        <form:form action="/admin/editservice" method="post">
                            <div class="form-group">
                              <label >Party id:</label>
                              <input type="text" class="form-control" placeholder="Enter party id" value="${service.compkey.partyid}" disabled>
                              <input type="hidden" name="partyid" value="${service.compkey.partyid}"/>
                            </div>
                            <div class="form-group">
                              <label >Service id : </label>
                              <input type="text" class="form-control" placeholder="Enter service id" value="${service.compkey.serviceid}" disabled>
                              <input type="hidden" name="serviceid" value="${service.compkey.serviceid}"/>
                            </div>
                            <div class="form-group">
                                <label>Service name:</label>
                                <input type="text" class="form-control" placeholder="Enter service name" name="servicename" value="${service.servicename}" required/>
                              </div>
                              
                              <div class="form-group">
                                <label >Service cost:</label>
                                <input type="text" class="form-control" placeholder="Enter service cost" name="servicecost" value="${service.servicecost}" required/>
                              </div>
                              <div class="form-group">
                                <label >Service Image : </label>
                                <input type="text" class="form-control" placeholder="Enter service image url" name="serviceimg"  value="${service.serviceimg}" required/>
                              </div>
                           
                            <input type="submit" class="btn btn-primary" value="Edit" style="display: block;margin-left: auto;margin-right: auto;" >
                          </form:form>
                           
                          
                     </div>
                </div>
                
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                      <br>

                    <div class="container" style="background-color:rgb(255, 224, 224);border: 1px solid gainsboro;box-shadow: 2px 2px gainsboro;padding:10px;width: 50%;margin-top:-22%">
                        <img src="https://cdn.pixabay.com/photo/2012/04/13/00/14/cross-31176_960_720.png"
                        style="display: block; margin-left: auto; margin-right: auto; width: 38px;margin-top: 10px;" />
                        <br>
                    <h4
                        style="text-align: center; font-family: Courgette; text-align: center; color: tomato;">Delete Service</h4>
                        <form:form action="/admin/deleteservice" method="post">
                            <div class="form-group">
                              <label >Party Id :</label>
                              <input type="text" class="form-control" placeholder="Enter party id" name="partyid" required/>
                            </div>
                            
                            <div class="form-group">
                                <label >Service Id :</label>
                                <input type="text" class="form-control" placeholder="Enter service id" name="serviceid" required/>
                              </div>
                              
                            <input type="submit" class="btn btn-danger" value="delete" style="display: block;margin-left: auto;margin-right: auto;"/>
                          </form:form>
                         
                    </div>
                </div>
                <div  class="tab-pane fade" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                    <br>
                    <div class="container" style="background-color:rgb(245, 255, 239);border: 1px solid gainsboro;box-shadow: 2px 2px gainsboro;padding:10px;width: 50%;margin-top:-22%">
                        <img src="https://findicons.com/files/icons/748/delikate_lite/512/add.png"
                        style="display: block; margin-left: auto; margin-right: auto; width: 40px;margin-top: 10px;" />
                        <br>
                    <h4
                        style="text-align: center; font-family: Courgette; text-align: center; color: #afd275;">Add Service</h4>
                        <form:form action="/admin/newservice" method="post" modelAttribute="service">
                            <div class="form-group">
                              <label >Party id:</label>
                              <input type="text" class="form-control" placeholder="Enter party id" name="partyid" required/>
                            </div>
                            <div class="form-group">
                              <label >Service id : </label>
                              <input type="text" class="form-control" placeholder="Enter service id" name="serviceid" required/>
                            </div>
                            <div class="form-group">
                                <label>Service name:</label>
                                <input type="text" class="form-control" placeholder="Enter service name" name="servicename" required/>
                              </div>
                              
                              <div class="form-group">
                                <label >Service cost:</label>
                                <input type="text" class="form-control" placeholder="Enter service cost" name="servicecost" required/>
                              </div>
                              <div class="form-group">
                                <label >Service Image : </label>
                                <input type="text" class="form-control" placeholder="Enter service image url" name="serviceimg" required/>
                              </div>
                           
                            <input type="submit" class="btn btn-success" value="Add" style="display: block;margin-left: auto;margin-right: auto;"/>
                          </form:form>
                          
                     </div>




                </div>
              </div>
          </div>
          <br>
          <img src="https://cdn-icons-png.flaticon.com/512/3790/3790202.png"
          style="display: block; margin-left: auto; margin-right: auto; width: 60px;" />
        <h3 style="text-align: center;color: crimson;">Services Available</h3>
        <!--users display-->
        <table class="table table-striped" style="width: 90%;margin-left: 5%;margin-right: 5%;">
            <thead>
              <tr>
                <th>Party id</th>
                <th>Service id</th>
                <th>Service name</th>
             
                <th>Service cost</th>
                <th>Service image</th>
              </tr>
            </thead>
            <tbody>
                <c:forEach items="${services}" var="service">
		           <tr>
		           <td>${service.compkey.partyid}</td>
		           <td>${service.compkey.serviceid}</td>
		           <td>${service.servicename}</td>
		           <td>${service.servicecost}</td>
		           <td><img src="${service.serviceimg}" width="50" height="50"/></td>
		           </tr>
                 </c:forEach>
            </tbody>
          </table>
       

          
        </div>
    </div>

</body>
</html>