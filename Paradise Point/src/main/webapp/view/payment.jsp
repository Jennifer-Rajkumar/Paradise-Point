<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Paradise Point</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
<style>
#logo 
{
    background-color: white;
    padding:10px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    border-radius: 3%;
}
#common
{
    
   border:none;
   border-radius: 0%;
   outline: none;
}
.rowDesign :hover
{
  
    background-color: rgb(240, 251, 255);
}
#qr {
    background: url(https://i.ibb.co/nwD29rB/Untitled-design-1.png);
    border: 0;
    display: block;
    height: 200px;
    width:200px;
    display:block;
    margin-left:auto;
    margin-right:auto;
    color:white;
}
#cardinput 
{
    border: none;
    border-bottom: 1px solid gainsboro;
}

</style>
</head>
<body>
  <div id="myModal" class="modal fade">
    <div class="modal-dialog" id="common">
        <div class="modal-content" style="width: 70%;margin-left: 15%;margin-right: 15%;background-color: #459eca">
            <div  style="background-color: rgb(69, 158, 202);border: none;">
                <button type="button" class="close" data-dismiss="modal" style="color: white;margin-right: 10px;font-weight: lighter;">&times;</button>
                <br>
                <div class="row">
                <div class="col-sm-5">
                    <img src="https://i.ibb.co/2g4tjMf/Paradise-modified.png" width="83px" height="83px" id="logo">
                    <br>
                </div>
                <div class="col-sm-7" style="text-align: left;color: white;margin-left: -40px;margin-top:-3px">
                <p style="font-size: 20px;font-weight:480;">Paradise Point</p>
                <p style="font-size: 14px;margin-top:-20px">Moments made perfect</p>
                <p style="font-size:25px;font-weight: lighter;margin-top:-10px"><i class="fa fa-rupee" ></i>&nbsp;${totalcost}</p>
            </div>
            </div>
            <div class="row" style="background-color: #2881ad;width: 100%;margin-left: 0px;padding-right: 5px;margin-top: -10px;">
                
                    <p style="margin-top: -10px;color: #2881ad">--------------</p>
                
            </div>
            </div>
            <div class="modal-body" id="mb" style="background-color: white;height: 380px;overflow: auto;font-family: lato;font-size: 13.5px;">
                
                <div id="firstpage">
				<div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;" >
                   
                    <div class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                        <span style="font-size: 14px;"><img src="https://i.ibb.co/m5nXWNR/output-onlinepngtools-1.png" width="34px" height="34px">&nbsp;+91 9003093180 | <span style="font-size: 11px;color:#9b9b9b">paradisepoint.event...</span></span>

                    </div>
                </div>
                <br>
                
                <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PREFERRED PAYMENT METHODS</p>
                
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div onclick="upipagecallgpay()" class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                        <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/bFNp2ch/filename.png" width="33px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;UPI - Google Pay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                    </div>
             
                </div>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;" >
                   
                    <div  onclick="upipagecallpaytm()" class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                        <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://download.logo.wine/logo/Paytm/Paytm-Logo.wine.png" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UPI - PayTM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                    </div>
                </div>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;" >
                   
                    <div  onclick="upipagecallphonepe()" class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                        <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://www.pngitem.com/pimgs/m/3-38170_phonepe-logo-png-phone-pe-transparent-png.png" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UPI - PhonePe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                    </div>
                </div>
                <br>
                <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;CARDS UPI & MORE</p>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div onclick="cardcall()" class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                        <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/MGjkj6K/2.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;Card</span>
                        <p style="color:#8a8a8a;margin-left:23%;margin-top:-10px;font-size: 12.5px;">Visa, MasterCard, RuPay, and Maestro</p>

                    </div>
                </div>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div  onclick="upipagecallcard()"  class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                        <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/K28P7kQ/3.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;UPI / QR</span>
                        <p style="color:#8a8a8a;margin-left:23%;margin-top:-10px;font-size: 12.5px;">Google Pay, PhonePe & more</p>

                    </div>
                </div>
                <div onclick="netcall()" class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                        <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/mtrw7BD/4.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;Netbanking</span>
                        <p style="color:#8a8a8a;margin-left:23%;margin-top:-10px;font-size: 12.5px;">All Indian banks</p>

                    </div>
                </div>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div onclick="walletcall()" class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                        <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/Q8tjStL/5.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;Wallet</span>
                        <p style="color:#8a8a8a;margin-left:23%;margin-top:-10px;font-size: 12.5px;">Mobikwik & More</p>

                    </div>
                </div>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div onclick="paylatercall()" class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                        <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/6gV92m0/6.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;Pay Later</span>
                        <p style="color:#8a8a8a;margin-left:23%;margin-top:-10px;font-size: 12.5px;">ePayLater & More</p>

                    </div>
                </div>
               
            </div>
            <!--gpayupi starts-->
            <div id="upipagegpay" style="display: none;">

                 <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                     <div class="col-sm-6" >
                         <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp; UPI</p>

                     </div>
                     <div class="col-sm-6">
                         <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                     </div>
                 </div>
                 <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING UPI ID</p>
                 <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div class="col-sm-12 colDesign" style="background-color: rgb(240, 251, 255);padding:3px;border:1px solid #04344d;border-radius:3px;margin-right: 7%;">
                        <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/K28P7kQ/3.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;UPI / QR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://www.pngitem.com/pimgs/m/474-4748228_tick-logo-png-tick-mark-with-circle-icon.png" width="20px" height="20px"></span>
                        <p style="color:#8a8a8a;margin-left:19%;margin-top:-10px;font-size: 12.5px;">Google Pay, Bhim, PhonePe & more</p>
                        
                        <input style="background-color: rgb(240, 251, 255);margin-left:19%;margin-top:-10px;border:none;border-bottom:  1px solid #013c5a;width: 80%;" type="text" placeholder="@oksbi" title="Please enter valid VPA of the form username@bankname" autofocus>
                         <br><br>
                    </div>
                </div>
                <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING QR CODE</p>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                    <div onclick="qrcodecall()" class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                        <span style="font-size: 16.5px;color:rgb(0, 46, 107)">&nbsp;&nbsp;&nbsp;<img src="data:image/png;base64,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" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;Show QR Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #838383;font-size: 18px;font-weight: normal;">&gt;</span></span>
                        <p style="color:#8a8a8a;margin-left:17.5%;margin-top:-8px;font-size: 12.5px;">Scan the QR code using your UPI app</p>

                    </div>
                </div>
                <br>
                 <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>


            </div>
            <!--gpay upi ends-->
            <!-- paytm upi starts-->
            <div id="upipagepaytm" style="display: none;">

                <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                    <div class="col-sm-6" >
                        <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp; UPI</p>

                    </div>
                    <div class="col-sm-6">
                        <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                    </div>
                </div>
                <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING UPI ID</p>
                <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                  
                   <div class="col-sm-12 colDesign" style="background-color: rgb(240, 251, 255);padding:3px;border:1px solid #04344d;border-radius:3px;margin-right: 7%;">
                       <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/K28P7kQ/3.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;UPI / QR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://www.pngitem.com/pimgs/m/474-4748228_tick-logo-png-tick-mark-with-circle-icon.png" width="20px" height="20px"></span>
                       <p style="color:#8a8a8a;margin-left:19%;margin-top:-10px;font-size: 12.5px;">Google Pay, Bhim, PhonePe & more</p>
                       
                       <input style="background-color: rgb(240, 251, 255);margin-left:19%;margin-top:-10px;border:none;border-bottom:  1px solid #013c5a;width: 80%;" type="text" placeholder="@paytm" autofocus>
                        <br><br>
                   </div>
               </div>
               <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING QR CODE</p>
               <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                  
                   <div onclick="qrcodecall()" class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                       <span style="font-size: 16.5px;color:rgb(0, 46, 107)">&nbsp;&nbsp;&nbsp;<img src="data:image/png;base64,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" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;Show QR Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #838383;font-size: 18px;font-weight: normal;">&gt;</span></span>
                       <p style="color:#8a8a8a;margin-left:17.5%;margin-top:-8px;font-size: 12.5px;">Scan the QR code using your UPI app</p>

                   </div>
               </div>
               <br>
               <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>


           </div>
           <!--paytm upi ends-->
           <!--phone pe upi starts-->
           <div id="upipagephonepe" style="display: none;">

            <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                <div class="col-sm-6" >
                    <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp; UPI</p>

                </div>
                <div class="col-sm-6">
                    <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                </div>
            </div>
            <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING UPI ID</p>
            <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
              
               <div class="col-sm-12 colDesign" style="background-color: rgb(240, 251, 255);padding:3px;border:1px solid #04344d;border-radius:3px;margin-right: 7%;">
                   <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/K28P7kQ/3.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;UPI / QR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://www.pngitem.com/pimgs/m/474-4748228_tick-logo-png-tick-mark-with-circle-icon.png" width="20px" height="20px"></span>
                   <p style="color:#8a8a8a;margin-left:19%;margin-top:-10px;font-size: 12.5px;">Google Pay, Bhim, PhonePe & more</p>
                   
                   <input style="background-color: rgb(240, 251, 255);margin-left:19%;margin-top:-10px;border:none;border-bottom:  1px solid #013c5a;width: 80%;" type="text" placeholder="@ybl"  autofocus>
                    <br><br>
               </div>
           </div>
           <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING QR CODE</p>
           <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
              
               <div onclick="qrcodecall()"  class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                   <span style="font-size: 16.5px;color:rgb(0, 46, 107)">&nbsp;&nbsp;&nbsp;<img src="data:image/png;base64,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" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;Show QR Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #838383;font-size: 18px;font-weight: normal;">&gt;</span></span>
                   <p style="color:#8a8a8a;margin-left:17.5%;margin-top:-8px;font-size: 12.5px;">Scan the QR code using your UPI app</p>

               </div>
           </div>
           <br>
            <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>



       </div>
       <!--phone pe upi ends-->
         <!-- cards upi starts-->
         <div id="upipagecard" style="display: none;">

            <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                <div class="col-sm-6" >
                    <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp; UPI</p>

                </div>
                <div class="col-sm-6">
                    <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                </div>
            </div>
            <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING UPI ID</p>
            <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
              
               <div class="col-sm-12 colDesign" style="background-color: rgb(240, 251, 255);padding:3px;border:1px solid #04344d;border-radius:3px;margin-right: 7%;">
                   <span style="font-size: 16.5px;font-weight: bold;color:rgb(78, 78, 78)">&nbsp;&nbsp;&nbsp;<img src="https://i.ibb.co/K28P7kQ/3.png" width="40px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;UPI / QR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://www.pngitem.com/pimgs/m/474-4748228_tick-logo-png-tick-mark-with-circle-icon.png" width="20px" height="20px"></span>
                   <p style="color:#8a8a8a;margin-left:19%;margin-top:-10px;font-size: 12.5px;">Google Pay, Bhim, PhonePe & more</p>
                   
                   <input style="background-color: rgb(240, 251, 255);margin-left:19%;margin-top:-10px;border:none;border-bottom:  1px solid #013c5a;width: 80%;" type="text" placeholder="Enter UPI ID" autofocus>
                    <br><br>
               </div>
           </div>
           <p style="color:#8a8a8a;margin-top: 10px;">&nbsp;&nbsp;&nbsp;PAY USING QR CODE</p>
           <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
              
               <div onclick="qrcodecall()" class="col-sm-12 colDesign" style="padding:3px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                   <span style="font-size: 16.5px;color:rgb(0, 46, 107)">&nbsp;&nbsp;&nbsp;<img src="data:image/png;base64,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" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;Show QR Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #838383;font-size: 18px;font-weight: normal;">&gt;</span></span>
                   <p style="color:#8a8a8a;margin-left:17.5%;margin-top:-8px;font-size: 12.5px;">Scan the QR code using your UPI app</p>

               </div>
           </div>
           <br>
           
            <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>
           



       </div>
       <!--cards upi ends-->
         <!-- qr code starts-->
         <div id="qrcode" style="display: none;">

            <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                <div class="col-sm-6" >
                    <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp; UPI</p>

                </div>
                <div class="col-sm-6">
                    <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                </div>
            </div>
            <p style="color:#8a8a8a;margin-top: 10px;text-align: center;">Scan the QR using any UPI app on your phone <br> like BHIM, PhonePe, Google Pay etc.  </p>
           
            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://www.pngitem.com/pimgs/m/274-2746824_bhim-icon-png-image-free-download-searchpng-bhim.png" width="30px" height="30px">&nbsp;&nbsp;&nbsp;
                <img src="https://www.pngitem.com/pimgs/m/3-38170_phonepe-logo-png-phone-pe-transparent-png.png" width="30px" height="30px">&nbsp;&nbsp;&nbsp;
                <img src="https://i.ibb.co/bFNp2ch/filename.png" width="30px" height="30px">&nbsp;&nbsp;&nbsp;
                <img src="https://download.logo.wine/logo/Paytm/Paytm-Logo.wine.png" width="30px" height="30px">
                
            </span>
            <br>
             <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input id="qr" type="submit" value="Pay" />
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>
            

       </div>
       <!--qr code ends-->
       <!-- netbanking starts-->
        <div id="net" style="display: none;">

            <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                <div class="col-sm-6" >
                    <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp;&nbsp;&nbsp;&nbsp;Netbanking</p>

                </div>
                <div class="col-sm-6">
                    <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                </div>
            </div>
            <br>
            <div class="row">
                <div onclick="sbicall()" id="sbi" class="col-sm-4" style="border:1px solid rgb(180, 180, 180);border-right: none;padding:10px">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/SBI-logo.svg/1200px-SBI-logo.svg.png" width="25px" height="25px" style="margin-left: 33%;">
                   
                    <p style="text-align: center;margin-top: 9px;font-size: 14px;">SBI</p>
                </div>
                <div onclick="kotakcall()" id="kotak" class="col-sm-4" style="border:1px solid rgb(180, 180, 180);border-right: none;padding:10px">
                    <img src="https://static.smartspends.com/static/images/short_providers_logos/kotak_mahindra_mutual_fund.png" width="30px" height="25px" style="margin-left: 33%;">
                   
                    <p style="text-align: center;margin-top: 9px;font-size: 14px;">Kotak</p>
                </div>
                <div onclick="yescall()" id="yes" class="col-sm-4" style="border:1px solid rgb(180, 180, 180);border-right: none;padding:10px">
                    <img src="https://logodownload.org/wp-content/uploads/2019/08/yes-bank-logo.png" width="34px" height="25px" style="margin-left: 33%;">
                   
                    <p style="text-align: center;margin-top: 9px;font-size: 14px;">Yes</p>
                </div>
            </div>
            <div class="row">
                <div onclick="idbicall()" id="idbi" class="col-sm-4" style="border:1px solid rgb(180, 180, 180);border-right: none;padding:10px">
                    <img src="data:image/png;base64,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" width="30px" height="25px" style="margin-left: 33%;">
                   
                    <p style="text-align: center;margin-top: 9px;font-size: 14px;">IDBI</p>
                </div>
                <div onclick="bobcall()" id="bob" class="col-sm-4" style="border:1px solid rgb(180, 180, 180);border-right: none;padding:10px">
                    <img src="data:image/png;base64,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" width="30px" height="25px" style="margin-left: 33%;">
                   
                    <p style="text-align: center;margin-top: 9px;font-size: 14px;">BOB</p>
                </div>
                <div onclick="pnbcall()"    id="pnb"  class="col-sm-4" style="border:1px solid rgb(180, 180, 180);border-right: none;padding:10px">
                    <img src="https://www.india.com/wp-content/uploads/2015/11/8-520x2451.jpg" width="34px" height="25px" style="margin-left: 33%;">
                   
                    <p style="text-align: center;margin-top: 9px;font-size: 14px;">PNB</p>
                </div>
            </div>
            <br>
            <p style="margin-top: 10px;text-align: center;" id="bankname">&nbsp;&nbsp;&nbsp;</p>
            <br>
            <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>
            

       </div>
       <!--netbanking ends-->
        <!--wallet starts-->
        <div id="wallet" style="display: none;">

            <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                <div class="col-sm-6" >
                    <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp;&nbsp;&nbsp;&nbsp;Wallet</p>

                </div>
                <div class="col-sm-6">
                    <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                </div>
            </div>
            <br>
            <div onclick="showbtn()" class="row rowDesign" style="padding-top:10px;width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                <div class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://images.firstpost.com/fpimages/1200x800/fixed/jpg/2017/10/mobikwik-380.png" width="33px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;Mobikwik</span>

                </div>
         
            </div>
            <div  onclick="showbtn()" class="row rowDesign" style="padding-top:10px;width: 98%;margin-right: 1%;margin-left: 1%;" >
               
                <div class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://uxwing.com/wp-content/themes/uxwing/download/10-brands-and-social-media/freecharge-logo.png" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FreeCharge</span>

                </div>
            </div>
            <div onclick="showbtn()" class="row rowDesign" style="padding-top:10px;width: 98%;margin-right: 1%;margin-left: 1%;" >
               
                <div class="col-sm-12 colDesign" style="border-bottom:none;padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://seeklogo.com/images/A/airtel-logo-2F959F4207-seeklogo.com.png" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Airtel Money</span>

                </div>
            </div>
            <div onclick="showbtn()" class="row rowDesign" style="padding-top:10px;width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                <div class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="data:image/png;base64,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" width="33px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;Ola Money (Postpaid + Wallet)</span>

                </div>
         
            </div>
            <div onclick="showbtn()" class="row rowDesign" style="padding-top:10px;width: 98%;margin-right: 1%;margin-left: 1%;" >
               
                <div class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://nuvei.com/wp-content/uploads/2021/06/jiomoney.png" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jio Money</span>

                </div>
            </div>
            <div onclick="showbtn()" class="row rowDesign" style="padding-top:10px;width: 98%;margin-right: 1%;margin-left: 1%;" >
               
                <div class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://is4-ssl.mzstatic.com/image/thumb/Purple115/v4/8e/a8/05/8ea8058c-94e6-6c75-d235-bc0df76f180b/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x600wa.png" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PayZapp</span>

                </div>
            </div>

            <div id="showbutton" style="display:none;">
                <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>
            </div>
            

       </div>
       <!--wallet ends-->
          <!--card starts-->
        <div id="card" style="display: none;">

            <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                <div class="col-sm-6" >
                    <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp;&nbsp;&nbsp;&nbsp;Card</p>

                </div>
                <div class="col-sm-6">
                    <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                </div>
            </div>
            <br>
            <p style="font-size: 17px;">Card Details</p>
            <div class="row" style="overflow: hidden;">
                <div class="col-sm-7">
                    <input type="text" placeholder="Card Number" id="cardinput">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <input type="text" placeholder="Expiry" id="cardinput">

                </div>
            </div>
            <br><br>
            <div class="row" style="overflow: hidden;">
                <div class="col-sm-7">
                    <input type="text" placeholder="Card Holder Name" id="cardinput">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <input type="text" placeholder="CVV" id="cardinput">

                </div>
            </div>
            <br>
            <br>
            <span><img src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-and-shapes-7/177800/337-512.png" width="20px" height="20px">&nbsp;&nbsp;&nbsp;Save card securely for future payments</span>
           <br><br>
             <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>
       </div>
       <!--card ends-->
    <!--paylater starts-->
        <div id="paylater" style="display: none;">

            <div onclick="firstpagecall()" class="row" style="background-color: rgb(240, 251, 255);padding: 3px;padding-top: 15px;margin-top: -20px;border-bottom: 1px solid rgb(216, 216, 216);">
                <div class="col-sm-6" >
                    <p style="color:rgb(85, 85, 85);font-size:15px">&lt;&nbsp;&nbsp;&nbsp;&nbsp;Pay Later</p>

                </div>
                <div class="col-sm-6">
                    <p style="color:rgb(85, 85, 85);"><i class="fa fa-user"></i>&nbsp;+91 9003093180</p>
                </div>
            </div>
            <br>
            <p style="color:#8a8a8a;">&nbsp;&nbsp;&nbsp;SELECT AN OPTION</p>
            <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                <div onclick="showbtn2()"  class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://play-lh.googleusercontent.com/1JAcQa4LuNMErzHcvxeo8V8VYz8JBdpLpjjPIBqfsbMjm1V9oV5zJrmApcEMRKEESys2" width="33px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;ePayLater&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                </div>
         
            </div>
            <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;" >
               
                <div  onclick="showbtn2()" class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEX///8A08EA0L0A0LwA1ML8///X9vPl+vfv/Pvz/fz4/v7N9PDd+PU02Mi/8evf+PVf3tF44teR592l6+NS3M7E8u2z7ujS9fGn7OSL5tyC5Nol1sZD2suY6N/B8uxs4NTC8Tu3AAANAUlEQVR4nO1da5eqOgyVgoo6IAjiAxn+/7+8jI97SJOWR5M6s5b7y113OYeyaZsmO2m7WHzwwQcffPDB78Nyu94d07SqiqJK0/S4irfLd78TF9bH4lImkUKI6jJvqtP23S/ogO2pyOuw4xIYcWfaFru/SPN0uAU2bpBncDvs/tKo3VTZaHa93iyL9bvffBS2VTmV3T+WSfPrSR6zufSeJMOk2LybhBn7axC60Hv1ZLZ7NxMax9Kp9wDJ5PxuNhhVzcbvzjEofpdtPUes/B4cm3ez+oeKn9+DY/FuZg/sktH8Xg7b6L+Pqnez6+xnOWw+VaiC+pa116b4QdNc8qysA7tD9/yn9enNBC8D79hxKC/VLibMxnJzqg5ZNERTte90WndWA9q5KNfveOgZ8fehtPp4Kkh9cKGwbM3v1YUMeTreOTk1SWh5WPaebjyZLWhYH1ZTH7cubhaS7+jGi8nCqOiyn/fIuDGO+rD17QDEpiUiLJ2cylNr6EhV+406jobXCK6DlmUImyYwPNzn2ngg30EFBxaLsDT4gOrC8fRRyKgX4OJ3R0H2o8rYGrBiS07B8MoauC7JYaISH9HxOqL4Zc7zT8cmpzhG8vbmi/q0tUhQvqIGi5L2U09Eo+FVqrWGoigrcZzwMq/qye7LeFDLbniUa2+xwu2pXLC9Dgfim8pRJAgG4rLYCVu28FuorTUiqJLxJnS72qXnLvptmqI6niaYxO0NtytDcY2HSzvqH8bHIr91EX3YzzyFUZkXx3Ef6IpGqkgvbtFoCUeIYXGV18oUFXU/1G01YhGv8EAVCKeS6Y2sLrUl5HvRVLfma+BBMfq6Assi9kUHFon1IRqfXasb23gl5gf/CoXcxAH3KZ2YgFKhOVnhhWCqz/XI9s2XRTQjQ6NqOgD0QhA3YiNoCmFHcCQSMl4ILmq9EcsQPc/ld395JHITBIfs0gzocYwyEzwljhlEdQME/PRgpRM0trFpGTKkYU+s8ENwoxE0+/Z4YZ6Ff7kKPwQXpdaGKeVlk8An4tmNnghqY9QYLX1xJhHvLr0nglutkdu4D+GOXeyH4CLTWjH4yaRs5ASFfVERgjv45iHtWi35yjAslGXUErjWKzpe2lACIztBgYW+QwH7JiH/CMc2EgRlelAzM7Qvg03e3yG4uIIuVGSh0l/uwUU8Yoz6mYNSkmwOmgmpzO4ShR1/iSDsQkVq96XprTghJqrDLgzIP/GwDgaRVEoNxhQhZWYqhmBpBOhFyh1QfKqJv/jy0YMdVCnDEDZCicw+zOij9YMEQRgsUAPFyyR8UpRIN91AC4S+bag4EQJ7Fl3LpFFd6G2M3mGKS+cDLBUhodVevXahYTl2AXh8hH/fixPUFT7mXEzafz5lyuSdmaP2/xFv7R4QLxSe5uJmRu31NkbmY0diCZ5NFFuhbCI/QZTwMkgo8/Ddd8eI1V68Cx+ShTYVKL9qLtr+gwk7I92Fz0BNy6xzFieCB2M7vRPuwv9Fpx107S0poYkAtV1EmZWwIe2patpuB7byS1hPhn5eywZNQDaE84HN2ACfFCcqtNBYkqDuWTCFisv+U3EyDS4l3NDVIDhOqRBgBoAhUUhDQGULjCCUbWhPeVYMMA2xU68nazhBGMsj+KA8ndg3lThVsZVcKijFElpulpnYfyC2Xqkkw4io99/DTmQI94FOGqImZS0pJTq1g38xEd99hnhQyMb2VHJEk6Zn7qrqARgatBpKS4iUZwb1BPe66/6gwJ/0LB1WEIqMliJy1sD7Hg12SuGkEAA1TvOhP5gG8DQU3nuQ2LA9hZ3ouurHfeOMYsPYg8RGTDSoqjgmo1ZWUyodGt4ZYNcNNuuoLAKFAgVk4obmB8SSBzKxhOowBYAD0g2uHghSYWAxEJRPQV/hwmV6XpK+xIoRMw7TS/9jIU9eWoN6tosFbmBr3IYpWPDRcPCUj8EzEWT73AqkQOyEvqWfvDaxDgPhwVB+NhLApdG93NgXQyyNgmHqFGAAhrobLJ9yegLPNDhMXdI0fVuCBouv4gQi0I3Z1os+w1BnSG2ylAEWf8Gnd5mIgKEeqFA7nWWAx2F/GXOaiNY+9MgQLcUw4eUwEa3z0N8oDVBCdANSfg5JGqst9WZpKGva975dTjoBK77uO+DdzmLAUSCI9B1yiVafZulpxQ8or/9sjevGo/+l8LLjjSDBARgBB+cbxBZotPuoCX5Bb3vT/zGcb0z7cileWP3Eh4/GkbkEpmZ+eGGP8cXFxB4HVAMCTMR8v82u01AHqkgxRAOoL6E4qKZ2rY19j5oFaM0HE2h+VS1wHdBsF65SAEBqDUjsOaQv+o3gWNsfQbwggPIaB9+777ZhXe+mv4cclN723jqBxgNIUcixuOjvIchQXy6AhuKQvbDnDz2Wd2PPlMmpARzQl9I3rwsCTxHw8/wj/kD8gPP4/iYi1mqAWutwiGH/Ofg7+lvzcZgPGDqkgoFzhBZWb4LigN+Pi7XGY6Amyt9mIOSYWRWWCRioa/M2TOX6EKYI0GTwpmTgpkF06lKSAcwl3gTgy5oO2FIXhgM1wr7iC7H1cLjO2w/BIZ/GaQ8NaAiHKfRJyexAivuWyS9d6FoF+tlHUU0gGFsstEJnoqJTtgLzBdRLYBlzq8KExer4WX46EbULYnzHjV5gmBLew9C9FixABgDYeMfdz6B8nBB99MOVJICdNqC1uV5CAxvDv3uo/sKFIPa60IkA1V1UKkte3seOJ/jV9cwhmCgk1h75bDBqFJbYOxIcsR9f/MABVLx2YpJpnqiGOlF6nOKvCuoTGTbqDTQnntPH0xDInAxHZQyfbSIbCmOvDMS/DPuf4JJHpnok93jhToq5ajH+h+a3UMGK4FTEoVNqj1pnAG5Sow69JG/zYAKeFmCJ5jmUR9u+ifYb7eX4UYVrtf3nOdjARnVdUZIgMc/WA8LDLEBjqfm6ogSJUQir9bmOAYGtgu8qS5A4qQI4WWxnY2mqWm+cyhIcUk6YpuEP4OaDf2uU8IGXBAMQrjHssnxB88xeCqb4iZ54moFBynnKiR5BbH0QJLoQZrw4b2DTD1C4eSBIdSGMyFnPitQ2p3eujThBSoIBf8A5SBfIvQ4P4vlDgkAlNkgXfmQ1AOrgfqg4cB8L7ff4QDJ6h1tI+U/79Hy8HpEXBFWt7nu5MfxsOnyAOsFQW5UFzqTFh/jLgVKYoLETucvOxw7uB6i8J9Ru+Q78AvBVf0Gu5bC2XOjI3QXfBSRWglS6BQ4guTssfRTp0xegQLmL/6jWJ9Y+NlqQbw/vZxC6+tDTBQg1VT+i2XGps729EKTvcoMrhdQdpF4I0ledaYfDCc1CPwRJYUJz+0OZq1je2IN66MZ60K5fgjVdLKpVC7gUXL6XoLrRVXhanadz+cVIghF7jG885Vlbg5nFCxPB4GuDryB2I2jqGu1211DiWnWK4IK6gtgBkUk407x9/nPnzQQ7Z5iNn8pMORb9BEqJMWq5A3SbMXWjcVu9XgchcMexuQfvODLcd6haYyWznvnhPMvbTBCGp8uL66WqtblbkG4i4HGPuKY2xldZT+CHLsbtAd0E5rJ9ZDxBwuat5l58qALb6r3Vg1GBqHD0RcOrbPj6dPwswwXVT2x0giH/JJxyyWl8mGZzlCrtQV6M5AR+8WnqLa7HdvRF8WHdDKiBOH9e895OQrYRDMVly6oNBlkqlTSD6WkiS8IvkBIMx+jMp0PZkaBpqq7z8mqEQSzQEiRyASm+l1LdxoVm++rQJtEPIfVA99+gvl3Pp3H/HsuyQvooFRSOzywvN/HqmFYd0nS3isfvwIoTRDDkuSqAaAszDEXizz6I095djoMaAFF2qDKpqxYfIArHQ77KIAzyjlipIdPhRKyqErnQHpBnIdmNS6ryn0qW8raK573UZ630W9buTQmOmBeo2CFM2EPRL9p/l5BlEMhdI6plDWViemtKJJPqRSjI1lXOxnFDF3qYFFQBGDQnlbN84o4fSTAUqUYwgPAzHhwz53myag06iPAqgWBK4aukcBis27Ph03XxsUyGyYKUfpOfaK9M58VulojS6wh9YWOWY8KgnUzymFPL3wseVkEKtk2xSpXN6MBjXWU2etK+rwV25bAbcuXhOPByy1PRRlYhQJklcB9IBwSnLtiNyuv5uMdE16dzkyWm+P9/hFdvi6ABYzbh/0T1QZRk+RNtWT8i/uF/WfJtMZiNNVc+huBXC9WRTMVskXuAX+R5jbdhx5wB/m38frDirVNUkbgANB3rq21Nm8YveesCYUbnVTIYHaVy1t0vzNhf3LLAnStUvXv9G8TuavdRrPTO/ElPEawOyVSSSkVt+ut7r4+4yms1Mk/afY2s8SIxcWO76xxPY+bpTk2F0e2SetKXhLDdp01+i+4Zp1fu6Y6gbi/V7m1xET+26/3X7jv9ST0dV/v1H7EoH3zwwQcfaPgPW+Ctc/+68/0AAAAASUVORK5CYII=" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Simpl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                </div>
            </div>
            <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;" >
               
                <div  onclick="showbtn2()" class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB9GVN9OKMUFRbd5uW0mYGayuAjTil1vl6faXkqaxaL3UrCiuMaBS-UrItv6yInxmhOIQ&usqp=CAU" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ICICI Bank PayLater&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                </div>
            </div>
            <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;">
                   
                <div onclick="showbtn2()" class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;border-bottom: none;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="data:image/jpeg;base64,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" width="33px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;Kotak Mahindra Bank&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                </div>
         
            </div>
            <div class="row rowDesign" style="width: 98%;margin-right: 1%;margin-left: 1%;" >
               
                <div  onclick="showbtn2()"  class="col-sm-12 colDesign" style="padding:5px;border:1px solid rgb(224, 224, 224);border-radius:3px;margin-right: 7%;">
                    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;<img src="https://pbs.twimg.com/profile_images/1300724353198206976/FBE75Was_400x400.jpg" width="30px" height="25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LazyPay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #045a85;font-size: 22px;font-weight: bolder;">&gt;</span></span>

                </div>
            </div>

            <div id="showbutton2" style="display:none;">
                 <form:form action="${contextPath}/transfer" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" value="${pageContext.request.userPrincipal.name}" name="uname"/>
                <input type="submit" class="btn" value="Pay" style="color:white;padding:10px;background-color:#459eca;width: 100%;"/>
                <%-- <a href="<c:url value='/user/transfer' />"><button class="btn btn-primary" type="button">Pay</button></a> --%>
              </form:form>
            </div>
            

       </div>
       <!--paylater ends-->
        </div>
        </div>
    </div>
</div>
<script>
    function showbtn()
    {
        document.getElementById("showbutton").style.display="block";
    }
    function showbtn2()
    {
        document.getElementById("showbutton2").style.display="block";
    }
    function cardcall()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("card").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function paylatercall()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("paylater").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function walletcall()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("wallet").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function sbicall()
    {
        document.getElementById("pnb").style.backgroundColor="white";
        document.getElementById("pnb").style.borderBottom="none";
        document.getElementById("bob").style.backgroundColor="white";
        document.getElementById("bob").style.borderBottom="none";
        document.getElementById("idbi").style.backgroundColor="white";
        document.getElementById("idbi").style.borderBottom="none";
        document.getElementById("yes").style.backgroundColor="white";
        document.getElementById("yes").style.borderBottom="none";
        document.getElementById("kotak").style.backgroundColor="white";
        document.getElementById("kotak").style.borderBottom="none";
        document.getElementById("sbi").style.backgroundColor="rgb(240, 251, 255)";
        document.getElementById("sbi").style.borderBottom="2px solid #013c5a";
        document.getElementById("bankname").innerHTML="State Bank Of India";
        document.getElementById("bankname").style.borderBottom="1px solid rgb(136, 136, 136);"
    }
    function kotakcall()
    {
        document.getElementById("pnb").style.backgroundColor="white";
        document.getElementById("pnb").style.borderBottom="none";
        document.getElementById("bob").style.backgroundColor="white";
        document.getElementById("bob").style.borderBottom="none";
        document.getElementById("idbi").style.backgroundColor="white";
        document.getElementById("idbi").style.borderBottom="none";
        document.getElementById("yes").style.backgroundColor="white";
        document.getElementById("yes").style.borderBottom="none";
        document.getElementById("sbi").style.backgroundColor="white";
        document.getElementById("sbi").style.borderBottom="none";
        document.getElementById("kotak").style.backgroundColor="rgb(240, 251, 255)";
        document.getElementById("kotak").style.borderBottom="2px solid #013c5a";
        document.getElementById("bankname").innerHTML="Kotak Mahindra Bank";
        document.getElementById("bankname").style.borderBottom="1px solid rgb(136, 136, 136);"
    }
    function yescall()
    {
        document.getElementById("pnb").style.backgroundColor="white";
        document.getElementById("pnb").style.borderBottom="none";
        document.getElementById("bob").style.backgroundColor="white";
        document.getElementById("bob").style.borderBottom="none";
        document.getElementById("kotak").style.backgroundColor="white";
        document.getElementById("kotak").style.borderBottom="none";
        document.getElementById("sbi").style.backgroundColor="white";
        document.getElementById("sbi").style.borderBottom="none";
        document.getElementById("yes").style.backgroundColor="rgb(240, 251, 255)";
        document.getElementById("yes").style.borderBottom="2px solid #013c5a";
        document.getElementById("bankname").innerHTML="Yes Bank";
        document.getElementById("bankname").style.borderBottom="1px solid rgb(136, 136, 136);"
        document.getElementById("idbi").style.backgroundColor="white";
        document.getElementById("idbi").style.borderBottom="none";
    }
    function idbicall()
    {
        document.getElementById("pnb").style.backgroundColor="white";
        document.getElementById("pnb").style.borderBottom="none";
        document.getElementById("bob").style.backgroundColor="white";
        document.getElementById("bob").style.borderBottom="none";
        document.getElementById("yes").style.backgroundColor="white";
        document.getElementById("yes").style.borderBottom="none";
        document.getElementById("kotak").style.backgroundColor="white";
        document.getElementById("kotak").style.borderBottom="none";
        document.getElementById("sbi").style.backgroundColor="white";
        document.getElementById("sbi").style.borderBottom="none";
        document.getElementById("idbi").style.backgroundColor="rgb(240, 251, 255)";
        document.getElementById("idbi").style.borderBottom="2px solid #013c5a";
        document.getElementById("bankname").innerHTML="IDBI";
        document.getElementById("bankname").style.borderBottom="1px solid rgb(136, 136, 136);"
    }
    function bobcall()
    {
        document.getElementById("pnb").style.backgroundColor="white";
        document.getElementById("pnb").style.borderBottom="none";
        document.getElementById("yes").style.backgroundColor="white";
        document.getElementById("yes").style.borderBottom="none";
        document.getElementById("kotak").style.backgroundColor="white";
        document.getElementById("kotak").style.borderBottom="none";
        document.getElementById("sbi").style.backgroundColor="white";
        document.getElementById("sbi").style.borderBottom="none";
        document.getElementById("bob").style.backgroundColor="rgb(240, 251, 255)";
        document.getElementById("bob").style.borderBottom="2px solid #013c5a";
        document.getElementById("bankname").innerHTML="Bank of Baroda - Retail Banking";
        document.getElementById("bankname").style.borderBottom="1px solid rgb(136, 136, 136);"
        document.getElementById("idbi").style.backgroundColor="white";
        document.getElementById("idbi").style.borderBottom="none";
    }
    function pnbcall()
    {
        document.getElementById("bob").style.backgroundColor="white";
        document.getElementById("bob").style.borderBottom="none";
        document.getElementById("yes").style.backgroundColor="white";
        document.getElementById("yes").style.borderBottom="none";
        document.getElementById("kotak").style.backgroundColor="white";
        document.getElementById("kotak").style.borderBottom="none";
        document.getElementById("sbi").style.backgroundColor="white";
        document.getElementById("sbi").style.borderBottom="none";
        document.getElementById("pnb").style.backgroundColor="rgb(240, 251, 255)";
        document.getElementById("pnb").style.borderBottom="2px solid #013c5a";
        document.getElementById("bankname").innerHTML="Punjab National Bank - Retail Banking";
        document.getElementById("bankname").style.borderBottom="1px solid rgb(136, 136, 136);"
        document.getElementById("idbi").style.backgroundColor="white";
        document.getElementById("idbi").style.borderBottom="none";
    }
     function qrcodecall()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("upipagegpay").style.display="none";
       document.getElementById("upipagepaytm").style.display="none";
       document.getElementById("upipagephonepe").style.display="none";
       document.getElementById("upipagecard").style.display="none";
       document.getElementById("qrcode").style.display="block";
       document.getElementById("net").style.display="none";
       document.getElementById("mb").style.height="380px";
       document.getElementById("mb").style.overflow="auto";

    }
    function netcall()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("net").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function upipagecallgpay()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("upipagegpay").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function upipagecallpaytm()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("upipagepaytm").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function upipagecallphonepe()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("upipagephonepe").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function upipagecallcard()
    {
       document.getElementById("firstpage").style.display="none";
       document.getElementById("upipagecard").style.display="block";
       document.getElementById("mb").style.height="410px";
       document.getElementById("mb").style.overflow="visible";

    }
    function firstpagecall()
    {
       document.getElementById("firstpage").style.display="block";
       document.getElementById("upipagegpay").style.display="none";
       document.getElementById("upipagepaytm").style.display="none";
       document.getElementById("upipagephonepe").style.display="none";
       document.getElementById("upipagecard").style.display="none";
       document.getElementById("net").style.display="none";
       document.getElementById("wallet").style.display="none";
       document.getElementById("card").style.display="none";
       document.getElementById("paylater").style.display="none";
       document.getElementById("qrcode").style.display="none";
       document.getElementById("mb").style.height="380px";
       document.getElementById("mb").style.overflow="auto";

    }

</script>
</body>
</html>