<%-- 
    Document   : viewsalesIDs1
    Created on : May 21, 2017, 4:52:20 PM
    Author     : Handshakeyou
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<select id="ids1" onchange="getOnData1();">
    <option>&nbsp;</option>
<%
ArrayList <Product> listsales = Admin_Data.viewSalesData();
for(Product p:listsales)
{
%>
<option value="<%=p.getProduct_code()%>"><%=Admin_Data.getProductName(p.getProduct_code())%></option>
<%
}
%>
</select>