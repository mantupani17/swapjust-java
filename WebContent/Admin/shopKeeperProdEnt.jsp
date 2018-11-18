<%-- 
    Document   : shopKeeperProdEnt
    Created on : May 26, 2017, 12:54:30 PM
    Author     : Win7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shopkeeper desk</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="logo/logo.jpg" />
        <link rel="stylesheet" href="w3css/w3css.css" />
        <link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css" />
        <link rel="stylesheet" href="icons/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="bootstrap-3.3.7\dist\js\bootstrap.min.js" ></script>
    </head>
    <body>
       <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Shopkeeper Product Desk</div>
        </div>  
        <form action="ShpProdEnt.jsp" method="post">
        <table class="w3-table">
            <tr>
                <td>
                    Product Name<input type="text" name="pName" id="pn">
                </td>
                <td>quantity <input type="text" name="qun" id="qt"/></td>
                <td>Mrp<input type="text" name="mrpr" id="mrpri"/></td>
                <td>S/J selling price<input type="text" name="spr" id="wpr"/></td>
            </tr>
            <tr >
                <td colspan="4" align="center"><input type="submit" value="Entry" id="ent" name="en" class="w3-button w3-green w3-hover-purple" /></td>
            </tr> 
        </table>
        </form>
        <table style="width: 100%;">
            <thead>
                <tr class="w3-deep-orange">
                    <td>Product Name</td>
                    <td>Quantity</td>
                    <td>Mrp</td>
                    <td>S/J Selling Price</td>
                    <td>Grant</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Mass Gainer</td>
                    <td>5</td>
                    <td>1000</td>
                    <td>800</td>
                    <td>Yes</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>

