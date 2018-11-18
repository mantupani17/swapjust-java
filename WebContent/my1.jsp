<%-- 
    Document   : my
    Created on : Dec 26, 2016, 2:33:20 PM
    Author     : Win7
--%>


<%@page import="HsyModel.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<%@page import="java.util.*"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.HsyDbAccess"%>

<%
   ArrayList<Product> products = (ArrayList<Product>)HsyDbAccess.viewAll();
    int count = 0;
    String cname = " ";
    String cid =  ""; 
    HttpSession ses = request.getSession();
   if(ses == null)
    {
        ses.setAttribute("count",count); 
        ses.setAttribute("customer", cname);
        session.setAttribute("cid", cid);
    }
   
%>
 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
<link rel="shortcut icon" href="logo/logo.jpg" />
<link rel="stylesheet" href="w3css/w3css.css" />
<link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
<link rel="stylesheet" href="icons/font-awesome-4.7.0/css/font-awesome.min.css" />
<link href="jquery.bxslider.css"/>
 <link rel="stylesheet" href="o/docs/assets/css/docs.theme.min.css">
   <link rel="stylesheet" href="o/docs/assets/owlcarousel/assets/owl.carousel.min.css">
 <link rel="stylesheet" href="o/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
  <script src="o/docs/assets/vendors/jquery.min.js"></script>
 <script src="o/docs/assets/owlcarousel/owl.carousel.js"></script>
<!--<script type="text/javascript" src="bxslider/jquery.bxslider.js"></script>-->
<script type="text/javascript" src="bootstrap-3.3.7\dist\js\bootstrap.min.js" >
</script>
<title>Homepage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<script type="text/javascript" lang="javascript"></script>
  <style>
 body {
      position: relative; 
  }
  .drpd{
  background-color:ff6600;
  color:#ffffff;
  cursor:pointer;
  margin-top:1%;
  }
  .affix {
      top:0;
      width: 100%;
      z-index: 9999 !important;
  }
  .navbar {
      margin-bottom: 0px;
  }

  .affix ~ .container-fluid {
     position: relative;
     top: 50px;
  }
  .vs { 
  background-color:#fff;
  border:none;
  }
  #vg{
  background-color:#ff6600;
  color:#ffffff;
  cursor:pointer;
  }
 .sv{
width:30px;
background-color:fff;
  }
  #sc {    
  	width:100%;
	font-size:10px;
    box-sizing: border-box;
    border: 2px solid yellow;
    border-radius: 4px;
    font-size: 16px;
    background-color: #ff6600;
    background-image:url('search.png');
    background-position: 10px 0px; 
    background-repeat: no-repeat;
	margin:8px 0px 0px 0px;
    padding: 5px 20px 5px 70px;
-webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
	}
	#scr:focus
	{
	background-color:#fff;
	}
	#sc:focus {
	border: 2px solid yellow;
	margin:8px 0px 0px 0px;
    border-radius: 4px;
	padding: 5px 20px 5px 70px;
	background-color:#ffefd0;
   	width: 100%;
	color:#000066;
	}
button span:focus
{
background-color:#FF6600;
}
#cl:hover
{
background-color:white;
}
#l
{
width:500px;
}
/*image slider*/
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  #ht
  {
  height:250px;
  }
  .mr{
  cursor:pointer;
  }
  .l
  {
  background-color:ff6600;
  color:#fff;
  }
  .l:hover
  {
  background-color:ff6600;
  color:#fff;
  }
  .viewmore{
      font-size: 8px;
      color:red;
  }
  </style>
<script lang="javascript">
     $(function(){
              $("#getOtp").click(showOtp); 
           });
           function showOtp()
           {
               var param = {mbno:$("#mno").val()};
               $.ajax({
                  url:"JSP/getOtp.jsp",
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
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#F7F7F7;">
<div class="container-fluid" style=" background-image:url(banners/fb.jpg); background-repeat:no-repeat; background-size:100% 100%; color:#fff;height:150px; margin-top:1px;">
</div>

<nav class="navbar navbar-inverse vs " data-spy="affix" data-offset-top="147">
  <ul class="w3-navbar w3-deep-orange w3-border" style="height: 55px;">

  <li><a href="#"  class="w3-hover-deep-orange"><img src="logo/logo10-12.png" width="80px;" height="35px" /></a></li>
  <li>        <a href="#items" class="btn btn-info btn-lg w3-deep-orange  w3-padding-6 w3-hover-deep-orange w3-hide-small w3-threequarter" style="border:none; color:#fff; margin-top:7%;">
          <span class="glyphicon glyphicon-align-justify"></span>  Items
        </a></li>
   <li class="w3-dropdown-click" style="margin-top:.5%" >
      <a class=" w3-deep-orange w3-hide-small" style=" color:#fff;" href="#lang">Language <i class="fa fa-caret-down"></i></a>
      <div class="w3-dropdown-content w3-card-4" style="margin-top:.8%">
        <a href="#">Language</a>
        <a href="#">Language</a>
        <a href="#">Language</a>
      </div>
  <li style="width:30%; margin-top:.5%;">   <input type="text" class="w3-input w3-orange w3-padding-6 w3-hide-small" placeholder="Search.."  style="width:100%;"></li>
    <li style="margin-top:.5%;"><button class="w3-btn w3-black w3-padding-6 w3-hover-orange w3-hide-small" style="color:#fff; height:37px;">Search</button></li>
    <li style="margin-top:.2%;"><a href="JSP/cart.jsp"  style="position:relative; z-index:3;" class="w3-text-white w3-hover-deep-orange w3-hide-small">bascket<img src="trolly/bs.png" class="" width="35px"/><span class="w3-badge w3-small w3-orange" style="z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;"><%=ses.getAttribute("count")%></span></a></li>
	 <li id="mr" style="margin-top:.3%;"><a class="w3-hide-small w3-hover-deep-orange" style="cursor:pointer;">
                 <i class="material-icons w3-padding-6 w3-hide-small" style="color:#000; font-size:15px;"  onclick="document.getElementById('log').style.display='block'" > <img src="icons/log.png" width="20px" weight="20px" /><%=session.getAttribute("customer")+"/"+session.getAttribute("cid") %></i></a>
       </li>
	<!--login or sinup form-->
  <div id="log" class="w3-modal" >
    <div class="w3-modal-content w3-card-8 w3-animate-top" style="max-width:550px">
	        <span onclick="document.getElementById('log').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">&times;</span>
	 <form class="w3-container" action="" method="POST">
        <div class="w3-section">
          <label style="color:#000;"><b>Phone Number</b></label>
          <input class="w3-input  w3-margin-bottom" type="text" placeholder="Enter Phone Number" pattern="[0-9]{10}" style="color:#666666;" name="usrname" id="mno" required />
          <button onclick="" class="w3-deep-orange w3-border-0  w3-padding w3-margin-bottom" id="getOtp" onclick="showOtp();">Get O T P</button><br />
          <label style="color:#000;"><b>Verify OT P</b></label>
          <input class="w3-input" type="text" placeholder="Enter O T P" name="psw" style="color:#666666;" pattern="[0-9]{5}" id="otpdata" required>
          <input class="w3-check" type="checkbox" checked="checked" ><label style="color:#000000"> Agreed Terms & Condition</label>
        </div>
      </form>
<form class="w3-container" action="/HygoShoppingMart/loginServlet" method="POST">
	  <input type="text" class="w3-input" placeholder="Enter Phone Number or email" style="color:#000;" name="uid" required /><br>
	  <input type="password" class="w3-input w3-margin-bottom" placeholder="Enter Password" style="color:#000;" name="pass" required />
          <input class="w3-btn-block w3-deep-orange w3-section w3-padding" type="submit" name="login" value="login" />
</form>
	   <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('log').style.display='none'" type="button" class="w3-btn w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#" style="color:#000000;">password</a></span>
      </div>

    </div>
  </div><!---->

	
	   <li id="mr" style="margin-top:-.1%;"><a href="#" class="w3-hide-small w3-hover-deep-orange"><div class="material-icons w3-hide-small" style="font-size:24px;color:#ffffff; margin-top:4%;">call</div><span style="font-size:1.5em; color:#fff;">+91 9861766666</span></a></li>
	   </li>
</ul>
<div id="demo" class="w3-hide w3-hide-large w3-hide-medium">
  <ul class="w3-navbar w3-left-align w3-large w3-black">
    <li><a href="#items">Link 1</a></li>
    <li><a href="#lang">Link 2</a></li>
    <li><a href="#bas">Link 3</a></li>
    <li><a href="#">Link 1</a></li>
    <li><a href="#">Link 2</a></li>
    <li><a href="#">Link 3</a></li>
  </ul>
</div>
</nav> 
    <div>
<!-- Wrapper for slides -->
<div style="position: relative;margin-top:2%;">
    <div>
            <div class="" style="max-height:230px; height:0px; margin-left:15%; width:80%; position: static; margin-top: 0">
                <a href="#"><img class="mySlides" src="banners/FLOWER - Copy.jpg" style="width:100%;"></a>
                <a href="#"> <img class="mySlides" src="banners/hygo2.jpg" style="width:100%"></a>
                <a href="#"><img class="mySlides" src="banners/HTGO3.jpg" style="width:100%"></a>
            </div>
   </div>


<div class="w3-sidenav w3-white" style="width:5%; height:24%; margin-left: -1.08%;">
  <a class="w3-padding-12 w3-blue w3-hover-white w3-hover-text-blue" href="#"><i class="fa fa-facebook" style="font-size:22px"></i></a>
  <a class="w3-padding-12 w3-green w3-hover-white w3-hover-text-green" href="#"><i class="fa fa-whatsapp" style="font-size:22px"></i></a>
  <a class="w3-padding-12 w3-blue w3-hover-white w3-hover-text-blue" href="#"><i class="fa fa-twitter" style="font-size:22px"></i></a>
</div>

<!--side navi-->
<div class="col-md-3" style="width:13%; float:left;margin-top: -2%; text-decoration:none;" >
    <ul class="nav nav-pills nav-stacked" style="margin-top: 20%;">
     <li><a href="JSP/productCat.jsp"><img src="items/sp.jpg" width="100%" class="w3-round-xlarge" style="cursor:pointer;box-shadow:2px 1px 4px 0px #ff6600;" /></a></li>
        <li><a href="#"><img src="items/vg.png" class="w3-round-xlarge" width="100%" style="cursor:pointer; box-shadow:2px 1px 4px 0px #ff6600;" /></a></li>
        <li><a href="#"><img src="items/fl.jpg" class="w3-round-xlarge" width="100%" style="cursor:pointer;box-shadow:2px 1px 4px 0px #ff6600;"/></a></li>
        <li><a href="#"><img src="items/gr.jpg" class="w3-round-xlarge" width="100%" style="cursor:pointer;box-shadow:2px 1px 4px 0px #ff6600;" /></a></li>
  </ul>
</div>
  
</div>
<!--ITEM BOX-->

<div  style="width:100%; height:0%; margin-top: 27%; margin-left: 4%;  "><img src="banners/dm2.jpg"></div>
<section id="demos" style="background-color:red;width: 100%; " >
      <div class="row" style=" margin-left:4%; float:left;">
          <div class="large-12 columns" >
                <div class="owl-carousel owl-theme" >
        <%
        for(Product pro: products)
        {
           %>
<div class=""  style="width:100%;" >
    <div class="w3-border-0" style="margin-left: 0%; width:100%;">
      <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:0%; width:100%;">
          <a href="JSP/individualProduct.jsp?pid=<%=pro.getProduct_code()%>" style="text-decoration: none;">
              <div class="w3-card-4">
                  <img src="items/BN/BN0.png" alt="Jane" style="width:200px;height: 150px;"  />
            <div class="w3-container">
                    <div>
                        <span class="w3-text-deep-orange"><%=pro.getProduct_name() %></span><br/>
                         <i class="fa fa-heart" style="color:#FF0000"></i>
                         <i class="fa fa-heart" style="color:#FF0000"></i>
                         <i class="fa fa-heart" style="color:#FF0000;"></i>
                         <i class="fa fa-heart" style="color:#FF0000"></i>
                         <i class="fa fa-heart"></i>
                     <span class="w3-opacity w3-small"><span  style="text-decoration:line-through;color:black;">MRP <%=pro.getMrp()%>/-<br/>Discount <%=pro.getDiscount()%>%</span><br/>
		     <p style="font-size: 12px;" class="w3-text-deep-orange">Price: <%=pro.getMrp()-(pro.getMrp()*(pro.getDiscount()/100))%>/-</p>
                     <input type="hidden" name="pid" value="<%=pro.getProduct_code()%>"  />
                     </div>
                     
                     <!--<input type="submit" class="viewmore"  name="individual" value="View"/>-->
            </div>
              </a>
        </div>
      </div>            
  </div>
</div>
           <%
           }
        %>
        </div>
                  <script>
            $(document).ready(function() {
              var owl = $('.owl-carousel');
              owl.owlCarousel({
                margin: 10,
                nav: true,
                loop: true,
                responsive: {
                  0: {
                    items: 1
                  },
                  600: {
                    items: 3
                  },
                  1000: {
                    items: 6
                  }
                }
              })
            })
          </script>
        </div>
      </div>
                <div id="itembox" class="w3-modal" >
    <div class="w3-modal-content w3-card-24 w3-animate-zoom" style="max-width:1024px">
	        <span onclick="document.getElementById('itembox').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">&times;</span>
	 <form class="w3-container" action="">
             <div style="height: 70%; width: 40%; background-color: red;"><img src="items/Katrinaa.jpg">
             </div>
      </form>
                <div>
	  <form class="w3-container" action=""  style="float:right; width: 55%; margin-top: -30%">
	  <input type="text" class="w3-input" placeholder="Enter Phone Number or email" style="color:#000;" required /><br>
	  <input type="password" class="w3-input w3-margin-bottom" placeholder="Enter Password" style="color:#000;" required />
	       <button class="w3-btn-block w3-deep-orange w3-section w3-padding" type="submit">Login</button>
	  </form>
	   <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('itembox').style.display='none'" type="button" class="w3-btn w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#" style="color:#000000;">password</a></span>
      </div>

    </div>
  </div>
                </div>
        <!---->
</section>
            <!--timer image-->
        <div class="container-fluid w3-row">
        <div class=" w3-container w3-quarter " style=" cursor: pointer;">
            <img class="w3-padding w3-hover-sepia" src="items/BN/BN0.png" width="100%" style="max-height: 350px;" />
    </div>
            <div class="w3-quarter w3-container " style=" cursor: pointer;">
                <img class="w3-padding w3-opacity w3-hover-opacity-off" src="items/SP/SP11.jpg" width="100%" style="max-height: 350px;" />
                
            </div>
<div class=" w3-quarter w3-container" style=" cursor: pointer;">
    <img  class="w3-padding w3-opacity w3-hover-opacity-off" src="items/BN/BN2.png" width="100%" style="max-height: 350px;"/>
</div>
            <div class=" w3-container w3-quarter " style=" cursor: pointer;">
                <img class="w3-padding w3-hover-sepia" src="items/BN/BN5.png" width="100%" style="max-height: 350px;" />
    </div>
        </div>
        <!--end-->
        <div  style="width:100%; height:0%; margin-top: 3%; margin-left: 4%;"><img src="banners/ls1.jpg"></div>     
<section id="demos"style="background-color:red;width: 80%;" >
               <div class="row" style=" margin-left:4%; float:left;">
          <div class="large-12 columns" >
                <div class="owl-carousel owl-theme" >
        <%
        for(Product pro: products)
        {
           
           %>
<div class=""  style="width:100%;" >
    <div class="w3-border-0" style="margin-left: 15%; width:100%;"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
      <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:50%; width:100%;">
        <div class="w3-card-4">
                     <img src="items/deepika.jpg" alt="Jane" style="width:100%" />
            <div class="w3-container">
                     <h6 class="w3-text-deep-orange"><%=pro.getProduct_name() %></h6>
                     <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
                     <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP <%=pro.getMrp()%>/-</span>&nbsp; &nbsp;Discount <%=pro.getDiscount()%>%</p>
		     <p>Price: <%=pro.getProduct_name()%>/-</p>
                     <hidden value="<%=pro.getProduct_name()%>" id="hide"></hidden>
            </div>
        </div>
      </div>            </a>
  </div>
</div>
           <%
           }
        %>
        
        </div>
                  <script>
            $(document).ready(function() {
              var owl = $('.owl-carousel');
              owl.owlCarousel({
                margin: 10,
                nav: true,
                loop: true,
                responsive: {
                  0: {
                    items: 1
                  },
                  600: {
                    items: 3
                  },
                  1000: {
                    items: 5
                  }
                }
              })
            })
          </script>
        </div>
      </div>
</section>

<script>
function myFunction() {
    var x = document.getElementById("demo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
<!--banner slide-->
<script>
var myIndex = 0;
carousel();
function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

</body>
        
</html>
       