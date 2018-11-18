<%-- 
    Document   : sales_entry
    Created on : May 12, 2017, 9:11:48 AM
    Author     : mantu
--%>

<%@page import="HsyData.Admin_Data"%>
<%@page import="HsyModel.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String pcode = request.getParameter("pcode");
int quan = Integer.parseInt(request.getParameter("quantity"));
float price = Float.parseFloat(request.getParameter("mrp"));
float dis = Float.parseFloat(request.getParameter("discount"));
String date = request.getParameter("edate");
String rs = "no";
if(Admin_Data.getSalesProductQuantity(pcode)> quan)
{
Admin_Data.updateSalesQuantity(pcode, quan);
Product p = new Product(pcode, quan, price, dis, date,rs);
Admin_Data.salesEntry(p); 
response.sendRedirect("Admin_sales_Entry.jsp");
}
else
{
    response.sendError(0);
}
%>