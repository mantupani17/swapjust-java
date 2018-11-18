<%-- 
    Document   : prodCat
    Created on : Feb 25, 2017, 1:19:52 PM
    Author     : Handshakeyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Products</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<script type="text/javascript" src="bootstrap-3.3.7\dist\js\bootstrap.min.js" >
</script>
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
  .imgprd{
      height:100px;
      width:100px;
      
  }
  .bigimg
  {
  height: 500px;
  width: 500px;
  }
  .mitm
  {
      max-height: 100px;
      cursor: pointer;
      width: 300px;
  }
  </style>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50" style="">
       <!-- <div class="container-fluid" style=" background-image:url(banners/fb.jpg); background-repeat:no-repeat; background-size:100% 100%; color:#fff;height:150px; margin-top:1px;">
</div>
-->
<nav class="navbar navbar-inverse vs w3-top " data-spy="affix" >
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
  <li style="width:30%; margin-top:.5%;">   <input type="text" class="w3-input w3-orange w3-padding-12 w3-hide-small" placeholder="Search.."  style="width:100%;"></li>
    <li style="margin-top:.5%;"><button class="w3-btn w3-black w3-padding-8 w3-hover-orange w3-hide-small" style="color:#fff; height:37px;">Search</button></li>
	<li style="margin-top:.2%;"><a href="#bas"  style="position:relative; z-index:3;" class="w3-text-white w3-hover-deep-orange w3-hide-small">bascket<img src="trolly/bs.png" class="" width="35px"/><span class="w3-badge w3-small w3-orange" style="z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;">5</span></a></li>
	 <li id="mr" style="margin-top:-.1%;"><a class="w3-hide-small w3-hover-deep-orange" style="cursor:pointer;">
          <i class="material-icons w3-padding-6 w3-hide-small" style="color:#fff; font-size:40px; margin-top:2px;"  onclick="document.getElementById('log').style.display='block'" >account_circle</i></a>
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
          <label style="color:#000;"><b>Verify OT P</b></label>
          <input class="w3-input" type="text" placeholder="Enter O T P" name="psw" style="color:#666666;" pattern="[0-9]{5}" required>
          <input class="w3-check" type="checkbox" checked="checked" ><label style="color:#000000"> Agreed Terms & Condition</label>
        </div>
      </form>
	  <form class="w3-container" action="">
	  <input type="text" class="w3-input" placeholder="Enter Phone Number or email" style="color:#000;" required /><br>
	  <input type="password" class="w3-input w3-margin-bottom" placeholder="Enter Password" style="color:#000;" required />
	       <button class="w3-btn-block w3-deep-orange w3-section w3-padding" type="submit">Login</button>
	  </form>
	   <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('log').style.display='none'" type="button" class="w3-btn w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#" style="color:#000000;">password</a></span>
      </div>

    </div>
  </div>
        <li id="mr" style="margin-top:-.1%;"><a href="#" class="w3-hide-small w3-hover-deep-orange"><div class="material-icons w3-hide-small" style="font-size:24px;color:#ffffff; margin-top:4%;">call</div><span style="font-size:1.5em; color:#fff;">+91 9861766666</span></a></li>
	   </li>
  </ul></nav>





<div class="container-fluid" style="margin-top: 1.5%;">
    <div class="col-sm-2" >
        <table >
            <tr>
                <td>
                    <img src="items/al2.jpg" style="max-height: 150px;"/>
                   
                </td>
                
            </tr>
            <tr>
                <td>
                      <p>Alia Bhatt (born 15 March 1993[1]) is a British film actress and singer </p>

                </td>
            </tr>
        </table>
        
    </div>
    <div class="col-sm-8">
          <img src="items/al6.jpg" style="width: 100%; max-height: 300px;"/>
    </div>
  
    <div class="col-sm-2">
        <div>
            <img src="items/al4.jpg" style="width: 100%; max-height: 150px;" class="w3-hover-opacity"/>
        </div>
        <div>
            <img src="items/al4.jpg" style="width: 100%; max-height: 150px;" class="w3-hover-opacity"/>
    </div>
    
</div>
</div>
<div class="container-fluid">
    <div class="col-sm-3">
        <img src="items/bn.jpg" class="mitm w3-hover-shadow">
    </div>
        <div class="col-sm-3">
            <img src="items/bf.jpg" class="mitm  w3-hover-shadow">
    </div>
        <div class="col-sm-2">
            <img src="items/mb.jpg" class="mitm w3-hover-shadow">
    </div>
        <div class="col-sm-2">
            <img src="items/mp.jpg" class="mitm w3-hover-shadow">
    </div>
        <div class="col-sm-2">
            <img src="items/sp1.png" class="mitm w3-hover-shadow">
    </div>
</div>
<div style="position: relative" class="container-fluid">
    <table>
        <tr>
            <td style="margin-left: 0;">
              
            </td>
        </tr>
    </table>
</div>
    </body>
</html>
