<%-- 
    Document   : checkOut
    Created on : Apr 1, 2017, 9:17:26 AM
    Author     : mantu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!
    String pid = null;
    String pname = null; 
    int quan = 0; 
    String img;
    double dis=0; 
    double mrp=0;
    String result = null;
    String cust_id;
%>
<%
    result = request.getParameter("action");
    cust_id = (String)session.getAttribute("cid");
    if(result.contains("buynow"))
    {
        pid = request.getParameter("pid");
        quan = Integer.parseInt(request.getParameter("quantity"));
        dis = Double.parseDouble(request.getParameter("discount"));
        mrp = Double.parseDouble(request.getParameter("price"));
        pname = request.getParameter("pname");
        img = request.getParameter("img1");
    }
   /* out.println(mrp);
    out.print(cust_id);*/
%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Payment</title>
    <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
<link rel="shortcut icon" href="../logo/logo.jpg" />
<link rel="stylesheet" href="../w3css/w3css.css" />
<link rel="stylesheet" href="../bootstrap-3.3.7\dist\css\bootstrap.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
<link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--<link href="../jquery.bxslider.css"/>-->
<link rel="stylesheet" href="../o/docs/assets/css/docs.theme.min.css">
   <!-- <link href="../css/index.css" rel="stylesheet"/>-->
     <link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.carousel.min.css">
       <link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
     <script src="../o/docs/assets/vendors/jquery.min.js"></script>
     <script src="../o/docs/assets/owlcarousel/owl.carousel.js"></script>
     <script type="text/javascript" src="../bxslider/jquery.bxslider.js"></script>
     <script type="text/javascript" src="../bootstrap-3.3.7/dist/js/bootstrap.min.js" >
</script>
     <script type="text/javascript">
$(document).ready(function(){
        
        $("#login").show();
        $("#address").hide();
        $("#itemsp").hide();
        $("#pay").hide();    
        
           

        $("#lo").click(function(){
        $("#login").toggle();
        $("#address").show();
        $("#itemsp").hide();
        $("#pay").hide();
         });


    $("#adds").click(function(){
        $("#address").toggle();
        $("#login").hide();
        $("#itemsp").hide();
        $("#pay").hide();
        
    });


    $("#pd").click(function(){
        $("#itemsp").toggle();
        $("#login").hide();
        $("#address").hide();
        $("#pay").hide();
        
    });


    $("#mp").click(function(){
        $("#pay").toggle();
        $("#address").hide();
        $("#items").hide();
        $("#pay").hide();
        
    });

});
    </script>
     <script type="text/javascript">
          $(function(){
              $("#getOtp").click(showOtp); 
           });
           function showOtp()
           {
               var param = {mbno:$("#mno").val()};
               $.ajax({
                  url:"../JSP/getOtp.jsp",
                  data:param,
                  success:showOtpdata,
                  catch:false
               });
           }
           function showOtpdata(data)
           {
               document.getElementById("otpdata").value = data;
           }
     </script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#F7F7F7;">

<nav class="navbar navbar-inverse vs w3-top " data-spy="affix" >
            <ul class="w3-navbar w3-deep-orange w3-border" style="height: 55px;">
                <li><a href="../index.jsp"  class="w3-hover-deep-orange"><img src="../logo/logo10-12.png" width="80px;" height="35px" /></a></li>
                <li style="width:40%; margin-top:.5%;margin-left: 3%;">   <input type="text" class="w3-input w3-orange w3-padding-6 w3-hide-small" placeholder="Search.."  style="width:100%;"></li>
                <li style="margin-top:.5%;"><button class="w3-btn w3-black w3-padding-6 w3-hover-orange w3-hide-small" style="color:#fff; height:37px;">Search</button></li>
                <li style="margin-top:.2%;"><a href="../JSP/cart.jsp"  style="position:relative; z-index:3;" class="w3-text-white w3-hover-deep-orange w3-hide-small">bascket<img src="../trolly/bs.png" class="" width="35px"/><span class="w3-badge w3-small w3-orange" style="z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;"><%=session.getAttribute("count") %></span></a></li>
                <li id="mr" style="margin-top:.3%;">
                <%--<a class="w3-hide-small w3-hover-deep-orange" style="cursor:pointer;">
                <%-- <i class="material-icons w3-padding-6 w3-hide-small" style="color:#000; font-size:15px;"  onclick="document.getElementById('log').style.display='block'" ><img src="icons/log.png" width="20px" weight="20px" /><%=session.getAttribute("cname")%></i></a>--%>
                    <div class="w3-container">
                        <div class="w3-dropdown-hover w3-deep-orange">
                            <div class="w3-deep-orange" style="margin-top:3px;"><i class="material-icons" style="font-size: 40px;">account_circle</i></div>
                        </div>
                    </div>
                </li>
                <!--login or sinup form-->
                
                <li id="mr" style="margin-top:-.1%;"><a href="#" class="w3-hide-small w3-hover-deep-orange"><div class="material-icons w3-hide-small" style="font-size:24px;color:#ffffff; margin-top:4%;">call</div><span style="font-size:1.5em; color:#fff;">+91 9861766666</span></a></li>
            </ul>
        </nav>
    <div class="w3-row" style="margin-left: 15px; margin-top: 4%; cursor: pointer;">
            <div class="w3-threequarter">
                <div class="w3-card-1" style="margin-top: .1%" id="lo">
                    <div class="w3-panel w3-deep-orange w3-round-xlarge w3-xlarge"  style="width: 92%" onclick="myFunction('login')" >Login/Register</div>
                <div id="login" class="w3-hide w3-container ">
                    <div style="width: 520px;  margin-top: 7px; margin-left: 1%; ">
                    <div class="w3-row" style="width: 500px;">
                        <span class="w3-third" style="width: 170px; margin-top: 1%">Enter Phone number </span>
                        <span class="w3-third" style="">
                            <input type="text" pattern="[0-9]{10}" width="80px" placeholder="Enter phone number"/></span>
                        <span class="w3-third" style=" margin-left: 20px; width:78px;">   <input type="submit" value="Get OTP" style="margin-top: 2%" class="w3-button w3-green w3-large"/></span>
                    </div>
                    <div class="row">
                        <span class="w3-half" style=" width:100px; margin-top:2%;">
                            <label>Verify OTP</label>
                        </span>
                        <span class="w3-half" style="width:334px;">
                            <input type="text" placeholder="Enter OTP" />
                        </span>
                    </div>
                            <input class="w3-check" type="checkbox" checked="checked" >
                            <label style="color:#000000"> Agreed Terms & Condition</label>
                            <input type="submit" value="Login" class="w3-button w3-blue w3-xlarge w3-round"> 
                      </div>
               </div>
               </div>
                    <div> 
                        <div class="w3-card-1" id="adds">
                            <div class="w3-panel w3-deep-orange w3-round-xlarge w3-xlarge"  style="width: 92%" onclick="myFunction('address')" >Address</div>
                            <div id="address" class="w3-hide w3-container ">
                                <table border="0px" style="border:none; background-color: transparent;" >
                                <tr style="height:2px;">
                                    <td style="padding: 0; margin: 0;">
                                        Pincode
                                    </td>
                                    <td  style="padding: 1; margin: 2;">
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Name
                                    </td>
                                    <td>
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Address
                                    </td>
                                    <td>
                                        <textarea rows="5" cols="35">
                                        </textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Locality/Landmark
                                    </td>
                                    <td>
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        City
                                    </td>
                                    <td>
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        State
                                    </td>
                                    <td>
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Mobile Number
                                    </td>
                                    <td>
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input class="w3-check" type="checkbox" checked="checked" >
                                        <label style="color:#000000"> Same as alternate number</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Alternate Number
                                    </td>
                                    <td>
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="w3-center">
                                        <input type="submit" value="Save and Continue" align="center" class="w3-button w3-xlarge w3-green" />
                                    </td>
                                </tr>
                            </table> 
                            </div>
                        </div>
                </div>
    <div>
        <div class="w3-card-1" style=" " id="pd">
            <div class="w3-panel w3-deep-orange w3-round-xlarge w3-xlarge" style="width: 92%"  onclick="myFunction('itemsp')" >Products details</div>
                <div id="itemsp" class="w3-hide w3-container ">
<jsp:useBean id="cart" scope="session" class="HsyModel.CartBean" />
<table border="0px" style="border:none; background-color: transparent;" >  
<c:if test="${cart.lineItemCount==0}">
            <tr>
                <td style="width: 20%"><img style="width: 80px;height:80px;" src="../Gallery/<%=img %>"></td>
                    <td><span id="pr">Rs <%=mrp%></span></td>
                    <td id="qt"><%=quan%></td>
                    <td><span id="dis"><%=dis%></span> %</td>
                    <td ><span id="subd"><%=(mrp*(dis/100))*quan%></span></td>
            </tr>
</c:if>
    <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
            <tr>
                <td style="width: 20%"><img style="width: 80px;height: 80px;" src="../Gallery/<c:out value="${cartItem.img}"/>"></td>
                <td >Rs <span><c:out value="${cartItem.mrp}"/></span></td>
                <td><c:out value="${cartItem.quantity}"/></td>
                <td><c:out value="${cartItem.discount}"/></td>
                <td><c:out value="${cartItem.totalCost}"/></td>
            </tr>
    </c:forEach>     
    </table>
            </div>
        </div>
    </div>
       <div>
            <div class="w3-card-1" style="" id="mp">
                <div class="w3-panel w3-deep-orange w3-round-xlarge w3-xlarge" style="width: 92%"  onclick="myFunction('pay')" >Make Payment</div>
                    <div id="pay" class="w3-hide w3-container ">
                        <table style="border: none; width:92%">  
                            <tr>   
                                <td>                    
                                <div class="w3-sidebar w3-bar-block" style="width:190px;">
                                <button class="w3-bar-item w3-button tablink" style="width: 98%" onclick="openCity(event, 'db')">Debit card</button>
                                <button class="w3-bar-item w3-button tablink" style="width: 98%" onclick="openCity(event, 'cc')">Credit card</button>
                                <button class="w3-bar-item w3-button tablink" style="width: 98%" onclick="openCity(event, 'nb')">Netbanking</button>
                                <button class="w3-bar-item w3-button tablink" style="width: 98%" onclick="openCity(event, 'hc')">Hygo Cash</button>
                                <button class="w3-bar-item w3-button tablink" style="width: 98%" onclick="openCity(event, 'cod')">Cash on delivery</button>
                                </div>
                                </td>
                                       <td>
<div style="">

  <div id="db" class="w3-container pay" style="display:none; ">
   <table style="width:350px; border: none; background-color: transparent;">
       <tr>
           <td colspan="3">
               <input class="w3-input  w3-margin-bottom" type="text" placeholder="Debit card Number" pattern="[0-9]{10}" style="color:#666666; " name="crdno" required>
           </td>
       </tr>
       <tr>
           <td>
               <input type="text" placeholder="MM/YY" style="width:80px;"/>
           </td>
           <td>
               <label style="margin-bottom: 7px;">Expiry Date</label>
           </td>
           <td><input type="text" style="width:80px;" placeholder="CVV"/></td>
       </tr>
       <tr>
            <td colspan="3">
               <input class="w3-input  w3-margin-bottom" type="text" placeholder="Name On Card" style="color:#666666; " name="crdnm" required>
           </td>
       </tr>
       <tr>
           <td colspan="3">
               <input type="Submit" style="margin-left: 25%" value="Save and pay" class="w3-button w3-blue w3-xlarge w3-round-jumbo"/>
           </td>
       </tr>
   </table>
  </div>

  <div id="cc" class="w3-container pay" style="display:none">
   <table style="width:350px; border: none; background-color: transparent;">
       <tr>
           <td colspan="3">
               <input class="w3-input  w3-margin-bottom" type="text" placeholder="Credit card Number" pattern="[0-9]{10}" style="color:#666666; " name="crdno" required>
           </td>
       </tr>
       <tr>
           <td>
               <input type="text" placeholder="MM/YY" style="width:80px;"/>
           </td>
           <td>
               <label style="margin-bottom: 7px;">Expiry Date</label>
           </td>
           <td><input type="text" style="width:80px;" placeholder="CVV"/></td>
       </tr>
       <tr>
            <td colspan="3">
               <input class="w3-input  w3-margin-bottom" type="text" placeholder="Name On Card" style="color:#666666; " name="crdnm" required>
           </td>
       </tr>
       <tr>
           <td colspan="3">
               <input type="Submit" style="margin-left: 25%" value="Save and pay" class="w3-button w3-blue w3-xlarge w3-round-jumbo"/>
           </td>
       </tr>
   </table>
  </div>

  </div>
    <div id="nb" class="w3-container pay" style="display:none">

      <table border="0px" style="border:none; background-color: transparent;">
          <tr>
              <td>
                  <label>Select Bank</label>
              </td>
          </tr>
          <tr style="">
              <td style="width:160px;" style="">
                  <input type="radio" class="w3-radio" name="bank" checked /><img src="../bank/idbi.png">
              </td>
              <td style="width: 160px;">
                  <input type="radio" class="w3-radio" name="bank" checked /><img src="../bank/Icici-Bank.png">
              </td>
              <td style="width: 160px;">
                  <input type="radio" class="w3-radio" name="bank" checked /><img src="../bank/HDFC-Bank-logo.png">
              </td>
              <td style="width: 160px;">
                  <input type="radio" class="w3-radio" name="bank" checked /><img src="../bank/axis.png">
              </td>
          </tr>
           <tr>
              <td colspan="4">
                  <select style="width: 500px;">
                      <option>State Bank</option>
                      <option>Canara Bank</option>
                      <option>Karurvaisya Bank</option>
                  </select>
              </td>
          </tr>
           <tr>
              <td colspan="4" class="w3-center">
                  <input type="submit" value="Proceed to Pay" class="w3-green w3-xlarge"/>
              </td>
          </tr>
      </table>
  </div>
   <div id="hc" class="w3-container pay" style="display:none">
       <table border="0px" style="border: none; background-color: transparent;">
           <tr>
               <td colspan="2" class="w3-center">
                   <label class="w3-large"> Hygo Cash Payment</label>
               </td>
           </tr>
           <tr>
               <td>
                   <label class="w3-large" style="margin-bottom: 5%;">Enter voucher number</label></td>
               <td>
                   <input type="text" class="w3-input" placeholder="Voucher number"/>
               </td>
           </tr>
           <tr>
               <td>
                   <label class="w3-large" style="margin-bottom: 5%;">Enter Password</label></td>
               <td>
                   <input type="text" class="w3-input" placeholder="Enter youy password"/>
               </td>
           </tr>
           <tr>
               <td colspan="2" class="w3-center">
                   <input type="submit" value="Proceed to pay" class="w3-green w3-xlarge"/>
               </td>
           </tr>
       </table>                                  
   </div>
    <div id="cod" class="w3-container pay" style="display:none">
        <table border="0" style="border: none">
            <tr>
                <td>
                    <label class="w3-xxlarge">Pay through Cash on Delivery </label>    
                </td>
                <tr>
                    <td class="w3-center">
                        <input type="Submit" class="w3-button w3-green w3-xlarge" value="Proceed to Deliver"/>
                    </td>
                </tr>
            </tr>
        </table>                                       
   </div>
                                       </td>
                                   </tr>
                               </table>

                    </div>
                </div>
            </div>
                
            </div>
  
        <!--rt--> 
        <div class="w3-quarter">
            <table width="100%" style="margin-top: 4%; border: none;" >
                <tr>
                    <td colspan="2">
                        <b>Items Details<span> (nos)</span></b>
                    </td>
                </tr>
                <c:if test="${cart.lineItemCount==0}">
                <tr>
                    <td>Item Name:</td>
                    <td><%=pname%></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><%=mrp%></td>
                </tr>
                <tr>
                    <td>total:</td>
                    <td id="tot"><%=(mrp*(dis/100))*quan%></td>
                </tr>
                <tr>
                    <td>Delivery charges</td>
                    <td>+<span id="dc">10</span></td>
                </tr>
                <tr class="w3-border">
                    <td>You have to pay</td>
                    <td>
                        <span id="tamnt"><%=(mrp*(dis/100))*quan+10%></span>
                     </td>
                </tr>
                </c:if>
                <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
            <tr>
                <tr>
                    <td>Item Name:</td>
                    <td><c:out value="${cartItem.product_name}"/></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><c:out value="${cartItem.mrp}"/></td>
                </tr>
                <tr>
                    <td>total:</td>
                    <td id="tot"><c:out value="${cartItem.totalCost}"/></td>
                </tr>
                <tr>
                    <td>Delivery charges</td>
                    <td>+<span id="dc">10</span></td>
                </tr>
                <tr class="w3-border">
                    <td>You have to pay</td>
                    <td>
                        <span id="tamnt"><c:out value="${cartItem.totalCost+10}"/></span>
                        
                    </td>
                </tr>
               
    </c:forEach> 
                
                
                
                
                
            </table>
        </div>
        </div>
           <script type="text/javascript">
            function myFunction(id) {
                 var x = document.getElementById(id);
                    if (x.className.indexOf("w3-show") == -1) {
                    x.className += " w3-show";
                    x.previousElementSibling.className += " w3-deep-orange";
                }
                else { 
                  
                     x.className = x.className.replace(" w3-show", "");
                     x.previousElementSibling.className = 
                     x.previousElementSibling.className.replace(" w3-green", "");
                }
                }
</script>
    <script>
function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("pay");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" w3-red", ""); 
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " w3-red";
}
</script>
    </body>
</html>
