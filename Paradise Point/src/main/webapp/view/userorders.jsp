<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
    background: #FAFAFA;
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
    background: #4D4D4D;
    color: #fff;
    transition: all 0.3s;
}
#sidebar.active {
    margin-left: -250px;
}
#sidebar .sidebar-header {
    padding: 20px;
    background: #4D4D4D;
}
#sidebar ul.components {
    padding: 20px 0;
    border-bottom: 1px solid #47748B;
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
    color: #4D4D4D;
    background: #fff;
}
#sidebar ul li.active>a,
a[aria-expanded="true"] {
    color: #fff;
    background: #C5C5C5;
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
    background: #C5C5C5;
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
    color: #4D4D4D;
}
a.article,
a.article:hover {
    background: #4D4D4D !important;
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
  cursor: grab;
}
.my-custom-scrollbar {
/* position: relative; */
height: 1000px;
overflow: auto;
}
.table-wrapper-scroll-y {
display: block;
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
                <li>
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
                <li>
                    <form id="service" method="POST" action="${contextPath}/admin/service">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['service'].submit()" class="nav-link" style="color:black"><span class="c"><i class="fa fa-gear" style="font-size:20px"></i>&nbsp;&nbsp;Services</span></a>
                </li>
                <li class="active">
                    <form id="orders" method="POST" action="${contextPath}/admin/order">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['orders'].submit()" class="nav-link" style="color:black"><span class="c"><i class="fa fa-shopping-cart" style="font-size:20px"></i>&nbsp;&nbsp;Orders</span></a> 
                </li>
            </ul>
        </nav>
        <!-- Page Content  -->
        <div id="content" >
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
            <img src="https://i.ibb.co/2g4tjMf/Paradise-modified.png" width="90px" height="90px" style="position:relative;margin-top:-20px;">
          <img src="https://www.pngall.com/wp-content/uploads/5/Red-Shopping-Cart-PNG.png"
            style="display: block; margin-left: auto; margin-right: auto; width: 70px;margin-top:-9%;" />
          <h3 style="text-align: center;color: crimson;">Orders Display</h3>
          <!--users display-->
          
          <form:form id="download" action="/admin/generateReport" method="post">             
               <input type="submit" class="btn btn-secondary" value="Send Report" style="position:relative;margin-top:-12%;margin-left:80%;"/> 
            
          </form:form> 
                
         
        
          
          <div class="table-wrapper-scroll-y my-custom-scrollbar">
          <table id="tblCustomers" class="table table-striped" style="width: 90%;margin-left: 5%;margin-right: 5%;">
              <thead>
                <tr>
                  <th>S.No</th>
                  <th>Username</th>
                  <th>Purchase id</th>
                  <th>Party name</th>
                  <th>Hall no</th>
                  <th>Date</th>
                  <th>Cost</th>
                 <%--  <th>User Type</th> --%>
                </tr>
              </thead>
              <tbody>
             
			<c:set var="serialNo" value="1" scope="page" />
			<c:forEach items="${userorders}" var="user">
					<tr>
						<td>${serialNo}</td>
						<td>${user.username}</td>
						<td>${user.purchaseid}</td>
						<td>${user.partyname}</td>
						<td>${user.hallno}</td>
						<td>${user.date}</td>
						<td>${user.cost}</td>
						<%-- <td><span class="badge badge-pill badge-primary" style="padding:12px;text-align:center">Primary</span></td> --%>
						<c:set var="serialNo" value="${serialNo + 1}" scope="page" />
					</tr>
			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

			</c:forEach>
		
              </tbody>
            </table>
            <input type="button" id="btnExport" value="Export" onclick="Export()" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="table2excel.js" type="text/javascript"></script>
    <script type="text/javascript">
        function Export() {
            $("#tblCustomers").table2excel({
                filename: "Table.xls"
            });
        }
    </script>
            </div>
        </div>
    </div>
</body>
</html>
