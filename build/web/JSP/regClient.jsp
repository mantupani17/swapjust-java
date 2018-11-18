<%-- 
    Document   : regClient
    Created on : May 26, 2017, 1:15:27 PM
    Author     : Win7
--%>

<%@page import="HsyData.HsyDbAccess"%>
<%@page import="HsyModel.Customer"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.sql.*" %>
<%
    String name= request.getParameter("nam");
    String pincode= request.getParameter("pin");
    String street= request.getParameter("strt");
    String landmark= request.getParameter("loc");
    String city= request.getParameter("cit");
    String district= request.getParameter("dist");
    String state= request.getParameter("st");
    String country= request.getParameter("count");
    String mobile= request.getParameter("mob");
    String email= request.getParameter("mail");
    String password= request.getParameter("pass");
    String gender = request.getParameter("gen");
    String edate = hsy.date.DateBean.getCurrentDateTime();
    String hno = request.getParameter("hno");
    String altno =request.getParameter("altmb");
    Customer customer = new Customer(name, mobile, altno, street, district, state, pincode, hno, country, city, landmark, email, gender, edate, password);
    int res = HsyDbAccess.addCustomer(customer);
    if(res>0)
    response.sendRedirect("RegisterClient.jsp");
    
%>
