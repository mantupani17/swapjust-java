<%-- 
    Document   : cust_order
    Created on : Apr 29, 2017, 8:53:30 PM
    Author     : mantu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My orders</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
<link rel="stylesheet" href="../bootstrap-3.3.7/dist/css/bootstrap.min.css" />
<!--<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />-->
<link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
<link href="jquery.bxslider.css"/>
<link rel="stylesheet" href="../o/docs/assets/css/docs.theme.min.css">
<link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <script src="../o/docs/assets/vendors/jquery.min.js"></script>
 <script src="../o/docs/assets/owlcarousel/owl.carousel.js"></script>
 <script type="text/javascript" src="../bxslider/jquery.bxslider.js"></script>
 <script type="text/javascript" src="../bootstrap-3.3.7/dist/js/bootstrap.min.js" >
</script>
<script type="text/javascript" lang="javascript"></script>
    </head>
    <body>
             <div>
                    <div class="w3-card-1" style=" ">
                            
                            <div id="itemsp" class=" w3-container ">
                                <table border="0px" style="border:none; background-color: transparent;" >
                                          <tr>
                    <td style="width: 20%"><img style="width: 100%" src="items/katrina.jpg"></td>
                    <td >Rs <span id="pr">16000</span></td>
                    <td id="qt">2</td>
                    <td><span id="dis">10</span> %</td>
                    <td ><span id="subd">Sub Details</span></td>
            </tr>
                                </table>   
                                <table style="border: none;">
                                            <tr>
                                                <td>
                                                    Packaged <span class="w3-badge w3-green">0</span>
                                                </td>
                                                 <td style="width: 36%;">
                                                      <div id="myBar" class="w3-deep-orange" style="height:10px;width:100%"></div>
                                                      
                                                </td>
                                                 <td>
                                                     Dispatched <span class="w3-badge w3-green" style="">0</span>
                                                </td>
                                                <td style="width: 36%;">
                                                      <div id="myBar" class="w3-deep-orange" style="height:10px;width:100%"></div>
                                                      
                                                </td>
                                                 <td>
                                                    Delivered <span class="w3-badge w3-green">0</span>
                                                </td>
                                            </tr>
                                        </table>
                </div>
<script>
function move() {
  var elem = document.getElementById("myBar");   
  var width = 1;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
    } else {
      width++; 
      elem.style.width = width + '%'; 
    }
  }
}
</script>
    </body>
</html>
