<%-- 
    Document   : offerImage
    Created on : May 26, 2017, 1:25:46 PM
    Author     : Handshakeyou
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
ArrayList<Product> listofdiscount = Admin_Data.getDiscountOfferID();
ArrayList<Product> listofoffer = Admin_Data.getBuyOneGetOneOfferID();
ArrayList<Product> listofcombo = Admin_Data.getComboOfferID();
%>
<html>
    <head>
        <title>Image Entry</title>
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
            <div class="w3-bar-item w3-allerta w3-xlarge">Offer image entry</div>
        </div>
        <form class="w3-form w3-green" action="fileUploadController.jsp" method="post" enctype="multipart/form-data">
        <table style="margin-left: 3%; margin-top: 2%;">
            <tr>
                <td>
                    Offer type
                    <select id="ids" onchange="getOnData()">
                        <option>&nbsp;</option>
                        <optgroup label="Combo Group">
                            <%
                                for(Product p : listofcombo)
                                {
                                %>
                                <option value="<%=p.getProduct_code()%>"><%=p.getProduct_name()%></option>
                                <%
                                }
                            %>
                            
                        </optgroup>
                        <optgroup label="Offer Discount">
                            <%
                                for(Product p : listofdiscount)
                                {
                                %>
                                <option value="<%=p.getProduct_code()%>"><%=p.getProduct_name()%></option>
                                <%
                                }
                            %>
                            
                        </optgroup>
                        <optgroup label="Buy 1 Get 1">
                            <%
                                for(Product p : listofoffer)
                                {
                                %>
                                <option value="<%=p.getProduct_code()%>"><%=p.getProduct_name()%></option>
                                <%
                                }
                            %>
                        </optgroup>
                    </select>
                </td>
                <td>
                    <input type="text" name="prod_code" id="prod_code" />
                </td>
                <td><input type="file" class="w3-button w3-green w3-hover-aqua" name="file"/></td>
                <td><input type="submit" class="w3-button w3-green w3-hover-purple"/> </td>
            </tr>
        </table>
        </form>
    </body>
</html>
<script type="text/javascript">
    function getOnData()
            {
                var e = document.getElementById("ids");
                var value = e.options[e.selectedIndex].value;
                document.getElementById("prod_code").value = value;
                //document.getElementById("prod_code1").value = value;
                //alert(value);
            }
    </script>
