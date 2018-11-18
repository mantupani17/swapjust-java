<%-- 
    Document   : products
    Created on : Jan 25, 2017, 11:30:55 AM
    Author     : mantu
--%>

<%@page import="HsyModel.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRODUCTS</title>
    </head>
    <body>
        <table border="2">
        <%
        ArrayList<Product> data=(ArrayList<Product>)request.getAttribute("ViewAll");
        //session.setAttribute("ProductData", data);
        for(Product p:data)
        {
            %>
            <tr>
            <form action="CartController" method="POST" name="modelDetail1">
                <td><img src="wp.png" width="100px" height="80px" /></td>
                <td>
                    <input type="hidden" name="pid" value="<%=p.getProduct_code()%>">
                    <input type="hidden" name="pname" value="<%=p.getProduct_name() %>"><%=p.getProduct_name() %><br/>
                    <%--<input type="hidden" name="description" value="<%=p.getDescription() %>"><%=p.getDescription() %><br/>--%>
                    <Strong>Quantity:</strong>
                    <input type="text" name="quantity" value="<%=p.getQuantity() %>"><br/><Strong>Price:</strong>
                    <input type="hidden" name="price" value="<%=p.getMrp() %>"><%=p.getMrp() %><br/><Strong>Discount:</strong>
                    <input type="hidden" name="discount" value="<%=p.getDiscount() %>"><%=p.getDiscount() %><br/>
                    <input type="hidden" name="action" value="add"/>
                    <input type="submit" name="addToCart" value="Add To Cart"/>
                    <input type="submit" formaction="JSP/individualProduct.jsp" name="individual" value="purchase now"/>
                </td>
            </form>
            </tr>
            
            <%
        }
        %>
        
        </table>
    </body>
</html>
