<%-- 
    Document   : test
    Created on : May 30, 2017, 10:59:17 AM
    Author     : Handshakeyou
--%>

<%@page import="HsyModel.CartItemBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.CartBean"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
String result ;
result = request.getParameter("action");
if(result.contains("viewcartdata"))
 {
     CartBean cartitem = (CartBean)session.getAttribute("cart");
    //CartItemBean cartItem = (CartItemBean) alCartItems.get(counter);
        ArrayList cartdata = cartitem.getCartItems();
        CartItemBean cartItemBean  = (CartItemBean)cartdata.get(0);
        CartItemBean cartItemBean1  = (CartItemBean)cartdata.get(1);
        out.println(cartItemBean.getTotalCost());
         out.println(cartItemBean1.getTotalCost());
         for(int i =0;i<cartdata.size();i++)
         {
             CartItemBean cart = (CartItemBean)cartdata.get(i);
             out.println("<br>"+cart.getTotalCost());
         }
 }
%>
