<%-- 
    Document   : CheckQuantity
    Created on : Mar 22, 2017, 10:47:38 AM
    Author     : mantu
--%>

<%@page import="HsyData.HsyDbAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String pin = request.getParameter("pincode");
String res = HsyDbAccess.checkPinCode(pin);
%>
<%=res %>