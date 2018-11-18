<%-- 
    Document   : ProductView
    Created on : Mar 26, 2017, 11:05:14 AM
    Author     : mantu
--%>

<%@page import="HsyModel.Product"%>
<%@page import="java.util.*"%>
<%@page import="HsyData.HsyDbAccess"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!List<Product> listdata =null; %>
<!DOCTYPE html>
<html>
<%
   try{
       String ctype = request.getParameter("ctype");
       //out.println(ctype);
       listdata = (List<Product>) HsyDbAccess.viewDataByName(ctype);
   }catch(Exception e){}
%>

<%
   for(Product p : listdata)
   {
       out.println("<h1>"+p.getProduct_name()+","+p.getMrp()+"</h1>");
   }
    //String ctype = request.getParameter("ctype");
    //out.println(ctype);
%>
</html>