<%-- 
    Document   : ProductViewAll
    Created on : Mar 25, 2017, 8:42:58 PM
    Author     : mantu
--%>
<%@page import="HsyModel.Product"%>
<%@page import="java.util.*"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! ArrayList<Product> products = null ; %>
<!DOCTYPE html>
<%
products = (ArrayList<Product>)HsyDbAccess.viewAll();
for(Product p :products){
%>
<h1><%= p.getProduct_name()%></h1>
<%
}
%>
