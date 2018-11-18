<%-- 
    Document   : cartview
    Created on : Apr 6, 2017, 7:54:40 PM
    Author     : Handshakeyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="cart" scope="session" class="HsyModel.CartBean" />
        <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="/HygoShoppingMart/CartController">
  <tr>
    <td>
        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
        <b>
        <input type='hidden' name='pcode' value='<c:out value="${cartItem.product_code}"/>'/></b><br/>
        <c:out value="${cartItem.product_name}"/></font></td>
    <td>
      <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
       <input type='hidden' name='itemIndex' value='<c:out value="${cart.count}"/>'>
  <font size="2" face="Verdana, Arial, Helvetica, sans-serif">(Rs)<c:out value="${cartItem.mrp}"/></font>
        
 <br/>
 
 </font>
    </td>
    <td>
        <input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> 
        <input type="submit" name="action" value="Update">
        <input type="submit" name="action" value="Delete">
        </td>
        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">(Rs)<c:out value="${cartItem.discount}"/></font></td>
        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">(Rs)<c:out value="${cartItem.totalCost}"/></font></td>
  </tr>
  
  </c:forEach>
    </body>
</html>
