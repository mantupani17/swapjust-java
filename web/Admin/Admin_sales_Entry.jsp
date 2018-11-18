<%-- 
    Document   : Admin_sales_Entry
    Created on : May 12, 2017, 12:17:42 AM
    Author     : mantu
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <title>Sales Entry</title>
    </head>
    <body>
        <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Product Entry Page</div>
        </div><br/>
        <div class="w3-large w3-black" style="margin-left: 0">Sales Entry</div>
        <form action="sales_entry.jsp" method="post">
            <table style="width: auto;">
                <tr>
                    <td>Product code</td><td><input type="text" name="pcode" width="100%" placeholder="product code"/></td>
                    <td>Quantity</td><td><input type="number" name="quantity" width="100%" placeholder="quantity"/></td>
                    <td>MRP</td><td><input type="text" name="mrp" width="100%" placeholder="MRP"/></td>
                </tr>
                <tr>
                    <td>Discount</td><td><input type="text" name="discount" width="100%" placeholder="Discount"/></td>
                    <td>Entry Date</td><td><input type="date" name="edate" width="100%" /></td>
                    <td colspan="2">
                        <input type="submit" class="w3-button w3-green" value="Add New" name="salesentry"/>
                        <input type="submit" formaction="updatesales.jsp" class="w3-button w3-blue" value="Update" name="update" />
                        <input type="submit" formaction="removesales.jsp" class="w3-button w3-red" value="Remove" name="remove" />
                    </td>
                </tr>
            </table>
        </form>
        <table width="100%">
            <tr>
                <td class="w3-large w3-red">Product input in Sales Entry (SERVER)</td>
                <td class="w3-large w3-deep-purple">Product input in website (CLIENT)</td>
            </tr>
            <tr>
                <td valign="top">
             <table width="100%">
            <tr class="w3-green">
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>MRP</th>
                <th>Discount</th>
                <th>Date Of Entry</th>
                <th>Site Entry</th>
            </tr>
            <%
            ArrayList<Product> saleList = Admin_Data.viewSalesData();
            for(Product p : saleList)
            {
                String pcode = p.getProduct_code(); 
                String status = p.getRes();
                %>
                <tr style="font-size: 12px;">
                    <td><%=pcode%></td>
                    <td><%=Admin_Data.getProductName(pcode)%></td>
                    <td><%=p.getQuantity()%></td>
                    <td><%=p.getMrp()%></td>
                    <td><%=p.getDiscount()%></td>
                    <td><%=p.getDate_of_entry()%></td>
                    <%
                    if(status.equals("no"))
                    {
                    %>
                    <td><a href="clientSideSalesAppoval.jsp?pcode=<%=pcode%>">(&#x2716;)</a></td>
                    </tr>
                    <%
                    }
                    else
                    {
                        %>
                    <td>(&#10004;)</td>
                    </tr>
                    <%
                    }
            }
                    
            %>
        </table>
                </td>
                <td valign="top">
                <table width="100%">
            <tr class="w3-green">
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>MRP</th>
                <th>Discount</th>
                <th>Date Of Entry</th>
                <th>Site Entry</th>
            </tr>
           
            <%
            ArrayList<Product> saleListdata = Admin_Data.viewSalesData();
            for(Product p : saleListdata)
            {
                String pcode = p.getProduct_code(); 
                String status = p.getRes();
                %>
                <tr style="font-size: 12px;">
                     <td ><%=pcode%></td>
                    <td><%=Admin_Data.getProductName(pcode)%></td>
                    <td ><%=p.getQuantity()%></td>
                    <td ><%=p.getMrp()%></td>
                    <td ><%=p.getDiscount()%></td>
                    <td ><%=p.getDate_of_entry()%></td>
                    <%
                    if(status.equals("no"))
                    {
                    %>
                    <td  >(&#x2716;)</td>
                    </tr>
                    <%
                    }
                    else
                    {
                        %>
                    <td >(&#10004;)</td>
                    </tr>
                    <%
                    }
            }
                    
            %>
         
        </table>
                </td>
            </tr>
        </table>
       
    </body>
</html>
