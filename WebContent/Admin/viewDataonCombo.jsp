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
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../jquery-3.1.1.min.js"></script>
        <script lang="javascript" type="text/javascript">
            
        </script>
    </head>
    <body>-->
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
    <!--</body>
</html>-->
