<%-- 
    Document   : viewDataonCombo
    Created on : Jan 20, 2017, 11:21:24 AM
    Author     : mantu
--%>

<%@page import="HsyModel.Product"%>
<%@page import="java.util.List"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<select id="vc" onchange="getOnData();">
    <option>&nbsp;</option>
        <%
        try{
         List <Product> p=HsyDbAccess.viewCombo();
         for(Product x: p )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=x.getProduct_name() %></option>
         
         <%
         }
        }catch(Exception e){}
        %>
       </select>
   