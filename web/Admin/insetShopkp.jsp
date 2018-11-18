<%-- 
    Document   : insetShopkp
    Created on : May 26, 2017, 11:23:32 AM
    Author     : Win7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.sql.*" %>
<%
    String name= request.getParameter("nam");
    String pincode= request.getParameter("pin");
    String street= request.getParameter("strt");
    String city= request.getParameter("cit");
    String distrect= request.getParameter("dist");
    String state= request.getParameter("st");
    String country= request.getParameter("count");
    String mobile= request.getParameter("mob");
    String email= request.getParameter("mail");
    String password= request.getParameter("pass");
    
out.println(name);
out.println(pincode);
out.println(street);
out.println(city);
out.println(distrect);
out.println(state);
out.println(country);
out.println(mobile);
out.println(email);
out.println(password);
%>
