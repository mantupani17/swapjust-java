<%-- 
    Document   : ShpProdEnt
    Created on : May 26, 2017, 12:55:38 PM
    Author     : Win7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.sql.*"%>
<%
    String productName=request.getParameter("pName");
    String Quantity=request.getParameter("qun");
    String Mrp=request.getParameter("mrpr");
    String sellingprice=request.getParameter("spr");
    out.print(productName);
    out.print(Quantity);
    out.print(Mrp);
    out.print(sellingprice);
%>
