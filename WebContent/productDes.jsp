<%-- 
    Document   : productDes
    Created on : Jan 2, 2017, 8:45:42 PM
    Author     : Handshakeyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.xml.parsers.*,org.w3c.dom.*;"%>
<%
    DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
    DocumentBuilder db=dbf.newDocumentBuilder();
    Document document=db.parse("XMLDoc.xml");
    document.getDocumentElement().normalize();
    String node=document.getDocumentElement().getNodeName();
    NodeList nodeList=document.getElementsByTagName("product");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>items</title>
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

<div class="w3-row" >
    <div class="w3-container w3-half" style="margin-top:4%">
     <!--product-->
    <table height="" width="100%" border="0" style="margin-top:2%;margin-left: 1%; border: none;">
        <tr>
            <td width="20%" onclick="imgChng(event)" >
                <img id="i1" src="items/Katrinaa.jpg" style="cursor: pointer; " class="imgprd">
            </td>
            <td rowspan="4">  <img id="mni" src="items/Katrinaa.jpg" width="100%" height="100%" class="bigimg"></td>
        </tr>
        <tr>
            <td onclick="imgChng(event)">
                <img id="i1" src="items/deepika.jpg"  style="cursor: pointer;" class="imgprd">  
            </td>
        </tr>
          <tr>
            <td onclick="imgChng(event)">
                  <img id="i1" src="items/deepikaa.jpg"  style="cursor: pointer;" class="imgprd">
            </td>
        </tr>
          <tr>
            <td onclick="imgChng(event)">
                  <img id="i1" src="items/kareena.jpg"  style="cursor: pointer;" class="imgprd">
            </td>
        </tr>
        <tr><td colspan="2">
                <table width="100%" border="0px" style="border:none">
                    <tr>
                        <td> <button class="w3-btn w3-deep-orange w3-border w3-border-red" style="width: 100%;">Add To Cart</button></td>
                        <td> <button class="w3-btn w3-deep-orange w3-border w3-border-red" style="width: 100%;" formaction="my.jsp">Buy Now</button></td>
                    </tr>
                </table>     
            </td>
        </tr>
    </table>
    </div>
     <script typetype="text/javascript">
         function imgChng(event)
         {
             event = event || window.event;
             var targElm = event.target || event.srcElement;
             if(targElm.tagName == "IMG"){
                 document.getElementById("mni").src = targElm.getAttribute("src");
                 }
         }
     </script>
     <!--right side product summery-->
     <div class="w3-container w3-half" style="margin-top: 2%;">
         <p style="font-size: 20px;">Katrina Kaif</p>
         <div><p style="margin-top: -1%;">Ratting <i class="fa fa-heart" style="color:#FF0000"></i> <i class="fa fa-heart" style="color:#FF0000"></i> <i class="fa fa-heart" style="color:#FF0000"></i> <i class="fa fa-heart" style="color:#FF0000"></i> <i class="fa fa-heart"></i></p></div>
       
         <div style=""><p class="w3-text-gray"  style="margin-top: -1%;text-decoration: line-through;">Mrp : 6000/-</p>
             <p class="w3-xlarge w3-text-blue" style="margin-top: -1.3%; ">Price :  <span id="rate"" >1000</span> /- <span class="w3-medium w3-text-red"> Discount: 25%</span></p></div>
         <div class="w3-panel w3-card-16 w3-purple w3-padding-16 w3-text-white" style="">Offer : Get 10% extra discount on use of HSY cash.</div>
         <table border="0" style="margin-top: 7.5%;border: none;"><tr><td>Delivery :</td><td align="right"><input type="text" class="w3-input" style="width: 140px;" placeholder="enter your pin code"></td><td align="left"><button class="w3-btn w3-deep-orange" style=" height:36px;">check</button></td></tr></table>
         <table border="0" style="border:none; margin-top:0;">
             <tr>
                 <td>Quantity :</td>
                 <td><a class="w3-btn-floating w3-deep-orange" id="" onclick="decNum()" style="text-decoration:none;"> - </a></td>
                 <td><div style=" border: none; font-size:25px;" id="valu" >1</div></td>
                 <td><a class="w3-btn-floating w3-deep-orange" onclick="incNum()" style="text-decoration:none;"> + </a></td>
                 <td><label style="border:none; font-size: 20px;">Rs <span id="amnt"></span> /-</label></td>
                 <td><label style="border:none; color:#999999;">Generally delivered with in 24 hours. </label></td>
             </tr>
         </table>
         <script type="text/javascript">
             var amt=0;
           var s = 1;
           var rt= parseInt(document.getElementById("rate").innerHTML);
    function incNum() {
        if (s < 10) {
            s++;
            var amt=s*rt;
            
        } else if (s = 10) {
            s = 10;
               var amt=s*rt;
        }
        document.getElementById("valu").innerHTML = s;
        document.getElementById("amnt").innerHTML = amt;
    }

    function decNum() {
        if (s > 1) {
            --s;
            var amt=s*rt;
        } else if (s = 1) {
            s = 1;
            var amt=s*rt;
        }
        document.getElementById("valu").innerHTML = s;
        document.getElementById("amnt").innerHTML = amt;
    }
         </script>
         <div><p>Hsy Guarantee </p> <p style="margin-top: -1%;font-size: 12px;">100% payment return in 7 day's if item is damaged, faulty and different from description <a href="#">show more</a></p></div>
     </div>
    </div>

 <div>
     <ul class="nav nav-tabs" style="width: 78.5%">
         <li class="active"><a data-toggle="tab" href="#sup" style="color:#666666">Supplementary</a></li>
    <li><a data-toggle="tab" href="#veg" style="color:#666666">Vegetables</a></li>
    <li><a data-toggle="tab" href="#gro" style="color:#666666">Grocery</a></li>
    <li><a data-toggle="tab" href="#flw" style="color:#666666">Flowers</a></li>
  </ul>

     <div class="tab-content" style="width: 80%;">
    <div id="sup" class="tab-pane fade in active">
        <table border="0" style="border: none;">
            <tr>
                <td>
                               
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                              
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                <td>
                            
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                                <td>
                             
 <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                            
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 7000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
            </tr>
        </table>
    </div>
    <div id="veg" class="tab-pane fade">
        <table border="0" style="border: none;">
            <tr>
                <td>
                               
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                              
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                <td>
                            
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                                <td>
                             
 <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                            
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 3000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
            </tr>
        </table>
    </div>
    <div id="gro" class="tab-pane fade">
        <table border="0" style="border: none;">
            <tr>
                <td>
                               
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                              
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                <td>
                            
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                                <td>
                             
 <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                            
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 2000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
            </tr>
        </table>
    </div>
    <div id="flw" class="tab-pane fade">
        <table border="0" style="border: none;">
            <tr>
                <td>
                               
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                              
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                <td>
                            
  <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                                <td>
                             
 <div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 4000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
                 <td>
                            
<div class="w3-border-0"><a href="http://www.handshakeyou.com" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
        <img src="items/deepika.jpg" alt="Jane" style="width:100%">
        <div class="w3-container">
          <h3 class="w3-text-deep-orange">Katrina</h3>
          
          <p><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart" style="color:#FF0000"></i><i class="fa fa-heart"></i></p>
		  <p class="w3-opacity w3-small"><span  style="text-decoration:line-through;">MRP 2000/-</span>&nbsp; &nbsp;Discount 50%</p>
		  <p>Price: 1000/-</p>
        </div>
      </div>
    </div>
	</a>
  </div>
                </td>
            </tr>
        </table>
    </div>
  </div>
</div>

    <div style=""> 
        <table border="0" style="border: none; background-color: #fff;" width="80%" >
            <tr>
                <td valign="top">
                    <label style="color:#999999; text-align: right;  font-size: 17px;">Features</label>
                </td>
                <td>
                    <ul style="color:#999999; margin-top: 10%;font-size: 14px;">
                        <li>flavor's: <span>Vanila, Chocolate, Orange</span></li>
                        <li>food type: <span>powder</span></li>
                        <li>suitable for: <span>Adults</span></li>
                    </ul>
                </td>
                 <td valign="top">
                    <label style="color:#999999; text-align: right;  font-size: 17px;">Services</label>
                </td>
                <td>
                    <ul style="color:#999999; margin-top: 10%;font-size: 14px;">
                        
                        <li>Cash On Delivery</li>
                        <li>No Return Applicable</li>
                        <li>HSY Money Accepted</li>
                    </ul>
                </td>
            </tr>
            <tr></tr>
            
             <tr>
                  <td valign="top">
                    <label style="color:#999999; text-align: right;  font-size: 17px;">General</label>
                </td>
                <td>
                    <ul style="color:#999999; margin-top: 10%;font-size: 14px;">
                        <li>Brand: <span>Katrina</span></li>
                        <li>Model Number: <span>Bx454775</span></li>
                        <li>Suitable for: <span>Adults</span></li>
                        <li>Quantity: <span>1kg</span></li>
                    </ul>
                </td>
                         <td valign="top">
                    <label style="color:#999999; text-align: right;  font-size: 17px;">Specification </label>
                </td>
                <td>
                    <ul style="color:#999999; margin-top: 10%;font-size: 14px;">
                        <li>Manufactures: <span>Katrina</span></li>
                        <li>Pack of: <span>1</span></li>
                        <li>Sales package of: <span>2</span></li>
                    </ul>
                </td>
            </tr>
                </table>
    </div>
    </body>
</html>

