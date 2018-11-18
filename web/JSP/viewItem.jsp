<%-- 
    Document   : viewItem
    Created on : Feb 3, 2017, 10:43:26 AM
    Author     : mantu
--%>

<%@page import="HsyModel.CartItemBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%
    String pid = request.getParameter("pcode");
    Product item = HsyDbAccess.getItem(pid);
    session.setAttribute("ProductToAdd", item);
    ArrayList<CartItemBean> cart = (ArrayList<CartItemBean>)session.getAttribute("cartitem");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= item.getProduct_name() %></title>
    </head>
    <body>
        <h1>Select Product is As Follows </h1>
        <table border="2">
		<tr>
                        <td rowspan="5">mantu</td>
		</tr>
		<tr>
			<td><%= item.getProduct_name() %></td>
		</tr>
		<tr>
			<td><%= item.getMrp() %></td>
		</tr>
		<tr>
			<td><%= item.getDiscount()%></td>
		</tr>
                <form action="../cartservlet" method="GET">
		<tr>
                    <td><input type="number" name="qty" /></td>
		</tr>
		<tr>
                    <td>
                        
                            <input type="submit"  value="AddToCart" name="addtocart" />
                        </form>
                    </td>
                    <td>
                        <form action="viewcart.jsp?cart=<%=cart%>" method="GET">
                            <input type="submit"  value="ViewCart" name="viewcart" />
                        </form>
                    </td>
		</tr>
	</table>
    </body>
</html>
