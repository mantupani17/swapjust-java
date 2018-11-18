<%-- 
    Document   : clientSideSalesAppoval
    Created on : May 14, 2017, 1:02:08 PM
    Author     : mantu
--%>

<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%
String pid = request.getParameter("pcode");
int res = Admin_Data.updateStatus(pid);
if(res>0)
    response.sendRedirect("Admin_sales_Entry.jsp");
%>
