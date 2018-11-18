<%-- 
    Document   : Offer_entry
    Created on : May 16, 2017, 12:09:07 PM
    Author     : mantu
--%>

<%@page import="hsy.date.*"%>
<%@page import="HsyData.Admin_Data"%>
<%@page import="HsyModel.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     try{
       String dt = DateBean.getCurrentDateTime();
        String pid = request.getParameter("prod_code");
    int quantity = Integer.parseInt(request.getParameter("quantity"));
    float discount = Float.parseFloat(request.getParameter("discount"));
    float hour = Float.parseFloat(request.getParameter("hour"));
    String status = "no";
   Product pro = new Product(pid, quantity, discount, dt, status , hour);
   int re = Admin_Data.insertOffer(pro);
    if(re>0)
    {
        Admin_Data.updateSalesQuantity(pid, quantity); 
        response.sendRedirect("offerEntry.jsp");
    }
    else
    {
        out.println("insertion denied");
    }
     }catch(Exception r){
     out.println(r.toString());
     }
    
%>
