<%-- 
    Document   : viewsalesIDs
    Created on : May 15, 2017, 12:29:43 PM
    Author     : mantu
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<select id="ids" onchange="getOnData();">
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