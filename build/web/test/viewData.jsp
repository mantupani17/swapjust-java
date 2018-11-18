<%-- 
    Document   : viewData
    Created on : Apr 17, 2017, 7:15:22 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyModel.Product"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%!public static ArrayList<Product> products = new ArrayList<Product>(); static int flag = 0;public static ArrayList indexes = new ArrayList();  %>
<%
   String bname = request.getParameter("bname");
   ArrayList<Product> datas = HsyDbAccess.viewByBrandNames(bname);
   for(Product p : datas){
       products.add(flag++, p);
   }
  indexes.add(flag);
  out.println(indexes.get(0));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           for(Product obj : products)
           {
               out.println(obj.getProduct_name());
           }
       %>
    </body>
</html>
