<%-- 
    Document   : productCat
    Created on : Apr 9, 2017, 1:56:10 PM
    Author     : mantu
--%>

<%@page import="java.util.*"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    ArrayList<String> productNames = HsyDbAccess.groupByTypes();
    ArrayList<String> brandNames = HsyDbAccess.groupByBrands();  
    ArrayList<String> flavors = HsyDbAccess.groupByFlavors();
    ArrayList<String> sizes = HsyDbAccess.groupBySizes();
%>
<!DOCTYPE html>
<html>
    <head>
        <title>items</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <link rel="stylesheet" href="../bootstrap-3.3.7/dist/css/bootstrap.css" />
        <link rel="stylesheet" href="../jquery-ui-bootstrap-masterbs3/css/custom-theme/jquery-ui-1.10.3.custom.css"/>
        <link rel="stylesheet" href="../jquery-ui-bootstrap-masterbs3/assets/css/docs.css" />
        <link rel="stylesheet" href="../jquery-ui-bootstrap-masterbs3/js/google-code-prettify/prettify.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link href="jquery.bxslider.css"/>
        <link rel="stylesheet" href="../o/docs/assets/css/docs.theme.min.css">
        <link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.carousel.min.css">
        <link href="../JSP/header.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
        <script src="../o/docs/assets/vendors/jquery.min.js"></script>
        <script src="../o/docs/assets/owlcarousel/owl.carousel.js"></script>
        <script type="text/javascript" src="../bxslider/jquery.bxslider.js"></script>
        <script type="text/javascript" src="../bootstrap-3.3.7\dist\js\bootstrap.min.js" ></script>
        <script src="../jquery-ui-bootstrap-masterbs3/assets/js/vendor/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="../jquery-ui-bootstrap-masterbs3/assets/js/vendor/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="../jquery-ui-bootstrap-masterbs3/assets/js/vendor/bootstrap.js" type="text/javascript"></script>
        <script src="assets/js/vendor/holder.js" type="text/javascript"></script>
        <script src="../jquery-ui-bootstrap-masterbs3/assets/js/vendor/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
        <script src="../jquery-ui-bootstrap-masterbs3/assets/js/google-code-prettify/prettify.js" type="text/javascript"></script>
        <script src="../jquery-ui-bootstrap-masterbs3/assets/js/docs.js" type="text/javascript"></script>
        <script src="../jquery-ui-bootstrap-masterbs3/assets/js/demo.js" type="text/javascript"></script>

<script type="text/javascript" lang="javascript">
 
        function getProductNames()
        {
            //var param = {pname:x};
            $.ajax({
                  url:"viewall.jsp",
                  //data:param,
                  success:showProducts,
                  catch:false
               });
        }
        function getProductName(x)
        {
            var param = {pname:x};
            $.ajax({
                  url:"viewproduct.jsp",
                  data:param,
                  success:showProducts,
                  catch:false
               });
        }
        function getProductByBrands(x)
        {
            var param ;
            if(x == null)
            {
             param = {action:"false",bname:null};   
            }
            else
            {
             param = {action:"true",bname:x};   
            }
            //alert(x);
            $.ajax({
                url:"viewByBrandNames.jsp",
                data:param,
                success:showProducts,
                catch:false
            });
        }
        function getProductBySize(x)
        {
            var param = {size:x};
            $.ajax({
                  url:"viewByProductSize.jsp",
                  data:param,
                  success:showProducts,
                  catch:false
               });
        }
         function getProductsByFlavors(x)
        {
             var param = {flavor:x};
            $.ajax({
                  url:"viewByFlavor.jsp",
                  data:param,
                  success:showProducts,
                  catch:false
               });
        }
        getProductNames();
        function showProducts(data)
        {
            document.getElementById("viewData").innerHTML = data;
        }
   // });
       

</script>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50" style=""  >
        <nav class="navbar navbar-inverse vs w3-top " data-spy="affix" >
            <ul class="w3-navbar w3-deep-orange w3-border" style="height: 55px;">
                <li><a href="../index.jsp"  class="w3-hover-deep-orange"><img src="../logo/logo10-12.png" width="80px;" height="35px" /></a></li>
                <li style="width:40%; margin-top:.5%;margin-left: 3%;">   <input type="text" class="w3-input w3-orange w3-padding-6 w3-hide-small" placeholder="Search.."  style="width:100%;"></li>
                <li style="margin-top:.5%;"><button class="w3-btn w3-black w3-padding-6 w3-hover-orange w3-hide-small" style="color:#fff; height:37px;">Search</button></li>
                <li style="margin-top:.2%;"><a href="JSP/cart.jsp"  style="position:relative; z-index:3;" class="w3-text-white w3-hover-deep-orange w3-hide-small">bascket<img src="../trolly/bs.png" class="" width="35px"/><span class="w3-badge w3-small w3-orange" style="z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;"><%=session.getAttribute("count")%></span></a></li>
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
            </ul>
        </nav>
     <!--sidebar-->
     <div class="w3-row" style="margin-top: 4%;">
     <div class="w3-card-1 w3-quarter" style="width:220px; margin-left: .5%;">
     <div class=" w3-card-2" style="">
         <div class="" style="width: 220px;  cursor: pointer;" onclick="myFunction('brands')" >Brands<i class="fa fa-angle-down" onclick="myFunction('brands')"  style="font-size:24px; margin-left: 150px;"></i>
     </div>
<div id="brands" class="w3-hide w3-container ">
    <form>
<%
    for(String bname :brandNames) 
    {
        %>
        <input class="w3-radio bnames" type="radio" name="bnames" value="<%=bname %>" onclick="getProductByBrands('<%=bname %>')" unchecked/><label class="w3-validate"><%=bname %></label><br>
        <%
     }
%>
<input class="w3-radio bnames" type="radio" name="bnames"  onclick="getProductNames()" unchecked/><label class="w3-validate">View All</label>
    </form>
</div>
         <div class="" id="ty" style="width: 220px; cursor: pointer; " onclick="myFunction('types')">Types<i class="fa fa-angle-down" style="font-size:24px; margin-left: 156px;" onclick="myFunction('types')"></i>
     </div>
     <div id="types" class="w3-hide w3-container ">
         <form>
<%
    for(String pname :productNames)
    {
        %>
        <input class="w3-radio typeproduct" type="radio" name="typeproduct" onclick="getProductName('<%=pname %>')" value="<%=pname %>" unchecked/><label class="w3-validate"><%=pname %></label><br>
        <%
     }
%>
         </form>
    </div>
    <div class="" id="ty" style="width: 220px; cursor: pointer; " onclick="myFunction('size')">Size<i class="fa fa-angle-down" style="font-size:24px; margin-left: 168px;" onclick="myFunction('size')"></i>
     </div>
     <div id="size" class="w3-hide w3-container ">
 <form>
<%
    for(String size :sizes)
    {
        %>
        <input class="w3-radio sizes" type="radio" name="sizes"  value="<%=size %>" onclick="getProductBySize('<%=size %>')" unchecked/><label class="w3-validate" ><%=size %></label><br>
        <%
     }
%>
         </form>
    </div>
         <div>
             <table style="border: none; color: transparent;">
                 <tr>
                     <td colspan="3">
                         <label style="font-size: 15px;"><b>Discount Range</b></label>
                     </td>
                 </tr>
                 
                 <tr>
                     <td colspan="3">
                         <section id="slider" style="width: 160px;">
                            <div style="width:180px;" id="h-slider"></div>
                         </section>
                     </td>
                 </tr>
                 <tr style="background-color: white;">
                     <td>
                         <input type="text" class="w3-input" id="r1" style="width:70px;"/>
                     </td>
                     <td>
                         To
                     </td>
                     <td >
                         <input type="text" class="w3-input" id="r2" style="width: 70px;" onblur="getDiscountRange(document.getElementById('r1').value,document.getElementById('r2').value)"/>
                     </td>
                 </tr>
             </table>
         </div>
         <div class="" id="ty" style="width: 220px; cursor: pointer; " onclick="myFunction('flv')">Flavors<i class="fa fa-angle-down" style="font-size:24px; margin-left: 145px;" onclick="myFunction('flv')"></i>
     </div>
     <div id="flv" class="w3-hide w3-container ">
 <form>
<%
    for(String flavor :flavors)
    {
        %>
        <input class="w3-radio flavors" type="radio" name="flavors"  value="<%=flavor %>"  onclick="getProductsByFlavors('<%=flavor %>')" unchecked/><label class="w3-validate"><%=flavor %></label><br>
        <%
     }
%>
         </form>
    </div>
    </div>
     </div>
       <div class="w3-threequarter" id="viewData" >
            
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
    </body>
</html>

