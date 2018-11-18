<%-- 
    Document   : newProductEntry
    Created on : May 6, 2017, 10:54:00 AM
    Author     : mantu
--%>

<%@page import="HsyModel.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Product Entry</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <link rel="stylesheet" href="../bootstrap-3.3.7/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="../w3css/w3css.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="../bootstrap-3.3.7/dist/js/bootstrap.min.js" ></script>
    </head>
    <body>
        <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Product Entry Page</div>
        </div>
        <br/>
        <div class="w3-large w3-black" style="margin-left: 0">Product Entry</div>
        <form action="NewProduct.jsp" method="post" >
        <table style="width: auto;">
           <tr>
                        <td>Product Code:<b style="color:red;">*</b></td>
                        <td><input type="text" name="pcode" id="pcode"/></td>
                        <td>Product Name:<b style="color:red;">*</b></td>
                        <td><input type="text" name="pname" id="pname"/></td>
                        <td>Batch Code:<b style="color:red;">*</b></td>
                        <td><input type="text" name="bcode" /></td>
                    </tr>
                    <tr>
                        <td>Product for:<b style="color:red;">*</b></td>
                        <td>
                            <select name="pfor">
                                <option value="male">male</option>
                                <option value="female">female</option>
                                <option value="baby">baby</option>
                                <option value="child">child</option>
                                <option value="adult">adult</option>
                                <option value="old">old</option>
                                <option value="pet's">Pet's</option>
                                <option value="others">others</option>
                            </select>
                        </td>
                        <td>Category:<b style="color:red;">*</b></td>
                        <td>
                            <select name="cate">
                                <option value="Flower">Flower</option>
                                <option value="Grocery">Grocery</option>
                                <option value="Nutrition's">Nutrition's</option>
                                <option value="Sample">sample</option>
                                <option value="others">others</option>
                            </select>
                        </td>
                        <td>Specification:<b style="color:red;">*</b></td>
                        <td>
                            <select name="specify">
                                <option value="no-msg">No-msg</option>
                                <option value="msg">msg</option>
                                <option value="added">Added</option>
                                <option value="others">others</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Manufacturer:<b style="color:red;">*</b></td>
                        <td><input type="text" name="mcompany" /></td>
                        <td>Origin country:<b style="color:red;">*</b></td>
                        <td><input type="text" name="country" /></td>
                        <td>Type Of Product:<b style="color:red;">*</b></td>
                        <td>
                            <select name="type_of_product">
                                <option value="pack">pack</option>
                                <option value="caps">caps</option>
                                <option value="powder">powder</option>
                                <option value="jelly">jelly</option>
                                <option value="tabs">tabs</option>
                                <option value="oil">oil</option>
                                <option value="ointment">ointment</option>
                                <option value="others">others</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>MRP:<b style="color:red;">*</b></td>
                        <td><input type="text" name="mrp" /></td>
                        <td>Quantity:<b style="color:red;">*</b></td>
                        <td><input type="text" name="quantity" /></td>
                        <td>Discount:<b style="color:red;">*</b></td>
                        <td><input type="text" name="discount" /></td>
                    </tr>
                     <tr>
                        <td>Weight:<b style="color:red;">*</b></td>
                        <td><input type="text" name="weight" /></td>
                        <td>Size:<b style="color:red;">*</b></td>
                        <td><input type="text" name="size" /></td>
                        <td>Color:<b style="color:red;">*</b></td>
                        <td>
                             <select name="color">
                                <option value="Red">red</option>
                                <option value="White">white</option>
                                <option value="Gray">gray</option>
                                <option value="others">others</option>
                            </select>
                        </td>
                     </tr>
                     <tr>
                        <td>Flavor:<b style="color:red;">*</b></td>
                        <td> 
                            <select name="flavor">
                                <option value="chocolate">chocolate</option>
                                <option value="vanilla">vanilla</option>
                                <option value="apple">apple</option>
                                <option value="grep">grep</option>
                                <option value="milk">milk</option>
                                <option value="others">others</option>
                            </select>
                        </td>
                        <td>Volume:<b style="color:red;">*</b></td>
                        <td><input type="text" name="volume" /></td>
                        <td>Type of grocery:<b style="color:red;">*</b></td>
                        <td>
                            <select name="vnv">
                                <option value="veg">veg</option>
                                <option value="nveg">non-veg</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Ingredients Used:<b style="color:red;">*</b></td>
                        <td><textarea name="ingredients" placeholder="ingredients used"></textarea></td>
                        <td>Description:<b style="color:red;">*</b></td>
                        <td><textarea name="abtprd" placeholder="About the product"></textarea></td>
                        <td>Quality:<b style="color:red;">*</b></td>
                        <td><input type="text" name="quality" /></td>
                    </tr>
                    <tr>
                        <td>Reliabilty:<b style="color:red;">*</b></td>
                        <td><input type="text" name="reli" /></td>
                        <td>Date:<b style="color:red;">*</b></td>
                        <td><input type="date" name="dt" /></td>
                        <td>Expire Date:<b style="color:red;">*</b></td>
                        <td><input type="date" name="exd" /></td>
                    </tr>
                     <tr>
                        <td>Manufacture date:<b style="color:red;">*</b></td>
                        <td><input type="date" name="mfdt" /></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td  align="center"><input type="submit" name="Product" value="product" /></td>
                    </tr>
                </table>
        </table>
        </form>
        <div class="w3-black w3-large" style="margin-left: 0">Enterd Product</div>
        <br/>
        <%
            ArrayList <Product> list = HsyDbAccess.viewAllItem();
         %>
        <table class="w3-table"  >
            <thead>
            <tr class="w3-green">
                <td>product name</td>
                <td>Quantity</td>
                <td>Manufacture company</td>
                <td>MRP</td>
                <td>Discount</td>
                <td>Weight</td>
                <td>Flavor</td>
                <td>Update</td>
        </tr>
            </thead>
       <tbody  style="overflow-y:auto; overflow-x: hidden; height: 200px; float: right; width: 100%; position:absolute ; display: block;">
        <%
            for(Product p:list)
            {
            %>
            
            <tr>
                <td style="width:21%;"><%=p.getProduct_name() %></td>
                <td style="width: 10%;"><%=p.getQuantity() %></td>
                <td style="width: 27%;"><%=p.getManufacturer() %></td>
                <td style="width: 8%;"><%=p.getMrp() %></td>
                <td style="width: 12%;"><%=p.getDiscount() %></td>
                <td style="width: 10%;"><%=p.getWeight() %></td>
                <td style="width: 10%;"><%=p.getFlavor() %></td>
                <td style="width: 10%;"><input type="submit" class="w3-blue w3-small w3-button" value="Update"/></td>
        </tr>
        
           
        <%
            }
            %>
            </tbody> 
        </table>
         
    </body>
</html>
