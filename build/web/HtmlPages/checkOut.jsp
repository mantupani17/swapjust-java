<%-- 
    Document   : checkOut
    Created on : Apr 1, 2017, 9:17:26 AM
    Author     : mantu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <link rel="stylesheet" href="../bootstrap-3.3.7\dist\css\bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--<link href="jquery.bxslider.css"/>-->
<link rel="stylesheet" href="../o/docs/assets/css/docs.theme.min.css">
<link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
<script src="../o/docs/assets/vendors/jquery.min.js"></script>
<script src="../o/docs/assets/owlcarousel/owl.carousel.js"></script>
<script type="text/javascript" src="../bxslider/jquery.boxslider.js"></script>
<script type="text/javascript" src="../bootstrap-3.3.7\dist\js\bootstrap.min.js" >
</script>
<link href="header.css" type="text/css" rel="stylesheet"/>
        <title>JSP Page</title>
    </head>
     <body data-spy="scroll" data-target=".navbar" data-offset="50" style="" onload="checkMobileNo();">
       <!-- <div class="container-fluid" style=" background-image:url(banners/fb.jpg); background-repeat:no-repeat; background-size:100% 100%; color:#fff;height:150px; margin-top:1px;">
</div>
-->
<nav class="navbar navbar-inverse vs " data-spy="affix" data-offset-top="0">
  <ul class="w3-navbar w3-deep-orange w3-border">

      <li><a href="../my1.jsp"  class="w3-hover-deep-orange"><img src="/logo/logo.jpg" width="80px;" height="35px" /></a></li>
  <li>        <a href="#items" class="btn btn-info btn-lg w3-deep-orange  w3-padding-6 w3-hover-deep-orange w3-hide-small w3-threequarter" style="border:none; color:#fff; margin-top:7%;">
          <span class="glyphicon glyphicon-align-justify"></span>  Items
        </a></li>
   <li class="w3-dropdown-click" style="margin-top:.7%" >
      <a class=" w3-deep-orange w3-hide-small" style=" color:#fff;" href="#lang">Language <i class="fa fa-caret-down"></i></a>
      <div class="w3-dropdown-content w3-card-4" style="margin-top:.8%">
        <a href="#">Language</a>
        <a href="#">Language</a>
        <a href="#">Language</a>
      </div>
  <li style="width:30%; margin-top:.5%;">   <input type="text" class="w3-input w3-orange w3-padding-6 w3-hide-small" placeholder="Search.."  style="width:100%;"></li>
    <li style="margin-top:.5%;"><button class="w3-btn w3-black w3-padding-6 w3-hover-orange w3-hide-small" style="color:#fff;">Search</button></li>
	<li ><a href="cart.jsp"  style="position:relative; z-index:3;" class="w3-text-white w3-hover-deep-orange w3-hide-small">bascket<img src="/trolly/bs.png" class="" width="35px"/><span class="w3-badge w3-small w3-orange" style="z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;"><%=session.getAttribute("count")%></span></a></li>
	 <li id="mr" style="margin-top:.3%;"><a class="w3-hide-small w3-hover-deep-orange" style="cursor:pointer;">
                 <i class="material-icons w3-padding-6 w3-hide-small" style="color:#fff; font-size:15px;"  onclick="document.getElementById('log').style.display='block'" ><img src="../icons/log.png" width="10%" weight="10%" /><%--<%=c.getCust_first_name()+" "+c.getCust_last_name()%>--%></i></a>
       </li>
	<!--login or sinup form-->
  <div id="log" class="w3-modal" >
    <div class="w3-modal-content w3-card-8 w3-animate-top" style="max-width:550px">
	        <span onclick="document.getElementById('log').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">&times;</span>
	 <form class="w3-container" action="">
        <div class="w3-section">
          <label style="color:#000;"><b>Phone Number</b></label>
          <input class="w3-input  w3-margin-bottom" type="text" placeholder="Enter Phone Number" pattern="[0-9]{10}" style="color:#666666;" name="usrname" required>
		  <button onclick="" class="w3-deep-orange w3-border-0  w3-padding w3-margin-bottom">Get O T P</button><br />
          <label style="color:#000;"><b>Verify OTP</b></label>
          <input class="w3-input" type="text" placeholder="Enter O T P" name="psw" style="color:#666666;" pattern="[0-9]{5}" required>
          <input class="w3-check" type="checkbox" checked="checked" ><label style="color:#000000"> Agreed Terms & Condition</label>
        </div>
      </form>
	  <form class="w3-container" action="/HsyEcom/loginServlet" method="POST">
	  <input type="text" class="w3-input" placeholder="Enter Phone Number or email" style="color:#000;" name="uid" required /><br>
	  <input type="password" class="w3-input w3-margin-bottom" placeholder="Enter Password" style="color:#000;" name="pass" required />
	       <button class="w3-btn-block w3-deep-orange w3-section w3-padding" type="submit">Login</button>
	  </form>
	   <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('log').style.display='none'" type="button" class="w3-btn w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#" style="color:#000000;">password</a></span>
      </div>

    </div>
  </div>
	   <li id="mr"><a href="#" class="w3-hide-small w3-hover-deep-orange"><div class="material-icons w3-hide-small" style="font-size:24px;color:#ffffff; margin-top:4%;">call</div><span style="font-size:1.5em; color:#fff;">+91 9861766666</span></a></li>
	   </li>
  </ul>
</nav>
       <div>
   <table class="w3-table w3-card-4 w3-centered " style="width: 99.5%; margin-top: 2%; margin-left: 0%">
            <thead class="w3-deep-orange w3-text-white" >
                <td style="color: #fff;" >Items</td>
                <td style="color: #fff;">Price</td>
                <td style="color: #fff;">Quantity</td>
                <td style="color: #fff;">Discount (%)</td>
                <td style="color: #fff;">Sub Total</td>
        </thead>
       
  <jsp:useBean id="cart" scope="session" class="HsyModel.CartBean" />
  <c:if test="${cart.lineItemCount==0}">
  <tr>
  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
  </tr>
  </c:if>
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="final.jsp">
  <tr>
    <td>
        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
        <b>
        <input type="hidden" name="pcode" value='<c:out value="${cartItem.product_code}"/>' /></b><br/>
        <c:out value="${cartItem.product_name}"/></font></td>
    <td>
      <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
       <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
  <font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.mrp}"/></font>
        
 <br/>
 
 </font>
    </td>
    <td>
        <c:out value="${cartItem.quantity}"/>
        <input type='hidden' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> 
        </td>
        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.discount}"/></font></td>
        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.totalCost}"/></font></td>
  </tr>
  
  </c:forEach>
   <input type="submit"/>
  </form>     
    
        </table>
       </div>
    </body>
</html>
