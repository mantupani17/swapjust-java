<%-- 
    Document   : getOtp
    Created on : Mar 29, 2017, 12:24:40 PM
    Author     : mantu
--%>

<%@page import="HsyModel.Otp"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    String phn = request.getParameter("mbno");
    session.setAttribute("mno", phn);
    Otp otp = new Otp(phn);
    out.println(otp.getOtp());
%>
