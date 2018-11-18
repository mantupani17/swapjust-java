<%-- 
    Document   : processorder
    Created on : Jun 1, 2017, 4:19:15 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyModel.CartItemBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.CartBean"%>
<%@page import="HsyData.Admin_Data"%>
<%@page import="swapjust.special.processorder.Order"%>
<%@page import="hsy.date.DateBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%!
String result ;
String cust_id;
int quan = 0; 
float mrp=0;
String ord_date;
String pid = null;
%>
<%
        HttpSession sess = request.getSession();
        RequestDispatcher rd = request.getRequestDispatcher("checkOut.jsp");
            if(sess != null)
            {
                result = request.getParameter("action");
                if(result.contains("buynow"))
                {
                cust_id = (String)session.getAttribute("cid");
                mrp = Float.parseFloat(request.getParameter("price"));
                quan = Integer.parseInt(request.getParameter("quantity"));
                ord_date = DateBean.getCurrentDateTime();
                pid = request.getParameter("pid");
                
                //out.print("<h1>"+cust_id+"<br>"+result+"<br>"+mrp+"<br>"+quan+"<br>"+ord_date+"<br>"+pid+"</h1>");
                Order ord = new Order(cust_id, pid, mrp, quan, ord_date);
                int res = Admin_Data.addOrder(ord);
                if(res>0)
                {
                  rd.include(request, response);
                   // response.sendRedirect("checkOut.jsp");
                }
                else
                {
                  rd.include(request, response); 
                   // response.sendRedirect("checkOut.jsp");
                }
                }
                else if(result.contains("viewcartdata"))
                {
                    cust_id = (String)session.getAttribute("cid");
                    int res = 0 ;
                    CartBean cartitem = (CartBean)session.getAttribute("cart");
                    Order order = null;
                     ArrayList cartdata = cartitem.getCartItems();
                     for(int i =0;i<cartdata.size();i++)
                        {
                        CartItemBean cart = (CartItemBean)cartdata.get(i);
                        //out.println("<br>"+cart.getTotalCost());
                        pid = cart.getProduct_code();
                        mrp = (float)cart.getMrp();
                        quan = cart.getQuantity();
                        ord_date = DateBean.getCurrentDateTime();
                        order = new Order(cust_id, pid, mrp, quan, ord_date);
                        res = Admin_Data.addOrder(order);
                        }
                     if(res>0)
                     {
                         rd.include(request, response);
                     }
                }
            }
%>

