<%-- 
    Document   : viewcart
    Created on : Feb 5, 2017, 10:20:41 AM
    Author     : mantu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="HsyModel.CartItemBean"%>
<%@page import="HsyModel.Product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  ArrayList <CartItemBean> cartItemBean ;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
        
        <%
           
        /*HashMap cart = (HashMap) session.getAttribute("cart");
        double total = 0;
        if(cart == null || cart.size() == 0)
        {
            out.print("cart is empty");
        }
        else{
            Set cartItems = cart.keySet();
            Iterator iterator = cartItems.iterator();
            Product p;
            CartItemBean bean;
            
            int q;
            double price,subtotal,discount;
            while(iterator.hasNext())
            {
                bean = (CartItemBean)cart.get(iterator.hasNext());
                
                    out.print(bean.getQuantity());
                
            }
        }*/
            double total = 0; 
           cartItemBean = (ArrayList<CartItemBean>)session.getAttribute("cartitem");
            //Product p = cartItemBean.getProduct();
          %>
          <table border="2">
              <tr>
                  <th>Product name</th>
                  <th>quantity</th>
                  <th>Price</th>
                  <th>Discount</th>
                  <th>total</th>
              </tr>
             
          <%
            for(CartItemBean cart: cartItemBean)
            {
                Product p = cart.getProduct();
                float price = p.getMrp(); 
                float discount = p.getDiscount();
                int q = cart.getQuantity();
                float disrate = (price * q) * (discount/100);
                float subtotal = (price * q)- disrate;
                total += subtotal; 
                %>
                <tr>
                    <td><%=p.getProduct_name() %></td>
                    <td><%=q %></td>
                    <td><%=new DecimalFormat("0.0").format(price) %></td>
                    <td><%=new DecimalFormat("0.0").format(discount) %></td>
                    <td><%=new DecimalFormat("0.0").format(subtotal) %></td>
                    <td><a href="JSP/removeitem.jsp?pid=<%= p.getProduct_code()%>">remove</a></td>
                </tr>
                <%
            }
        
         session.setAttribute("total", new Double(total));
        
        %>
        <tr>
            <td colspan="4" align="right">Total:</td><td align="right"><%=new DecimalFormat("0.0").format(total)%></td>
        </tr>
          </table>
         
        <p><a href="/HsyEcom/ViewAll">Continue Shopping</a></p>
    </body>
</html>
