<%-- 
    Document   : entry_to_site
    Created on : May 14, 2017, 12:33:04 PM
    Author     : mantu
--%>

<%@page import="HsyData.Admin_Data"%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <title>Swap Sales To Site</title>
    </head>
    <body>
        <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Product Entry Page</div>
        </div><br/>
        <div class="w3-large w3-black" style="margin-left: 0">Sales Entry To Site</div>
        <form action="clientSideSalesAppoval.jsp" method="post">
        <table style="width:100%;" border="2px">
            <tr class="w3-row-padding">
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>MRP</th>
                <th>Discount</th>
                <th>Date Of Entry</th>
                <th>Site Entry</th>
                <th>Action</th>
            </tr>
            <%
            ArrayList<Product> saleList = Admin_Data.viewNoNSalesEntryData();
            for(Product p : saleList)
            {
                String pcode = p.getProduct_code(); 
                //String status = p.getRes();
                %>
                <tr>
                    <td><%=pcode%><input type="hidden" name="pcode" value="<%=pcode%>"/></td>
                    <td><%=Admin_Data.getProductName(pcode)%></td>
                    <td><%=p.getQuantity()%></td>
                    <td><%=p.getMrp()%></td>
                    <td><%=p.getDiscount()%></td>
                    <td><%=p.getDate_of_entry()%></td>
                    <td><img src="../icons/no.png" width="30px" height="20px" /></td>
                    <td><input type="submit" name="update" value="Change Status" /></td>
                  <%  
            }
                    
            %>
        </table>
        </form>
    </body>
</html>

