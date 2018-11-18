<%-- 
    Document   : NewProduct
    Created on : Jan 14, 2017, 8:30:29 AM
    Author     : mantu
--%>


<%@page import="HsyData.HsyDbAccess"%>
<%@page import="HsyModel.Product"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
       <%
        String product_code=request.getParameter("pcode");
        String product_name=request.getParameter("pname");
        String batch_code=request.getParameter("bcode");
        String product_for=request.getParameter("pfor");
        String category=request.getParameter("cate");
        String specification=request.getParameter("specify");
        String manufacturer=request.getParameter("mcompany");
        String country=request.getParameter("country");
        String type_of_product=request.getParameter("type_of_product");
        float mrp=Float.parseFloat(request.getParameter("mrp"));
        int quantity=Integer.parseInt(request.getParameter("quantity"));
        float discount=Float.parseFloat(request.getParameter("discount"));
        String weight=request.getParameter("weight");
        String size=request.getParameter("size");
        String color=request.getParameter("color");
        String flavor=request.getParameter("flavor");
        String volume=request.getParameter("volume");
        String veg_or_nveg=request.getParameter("vnv");
        String ingredients=request.getParameter("ingredients");
        String description=request.getParameter("abtprd");
        String quality=request.getParameter("quality");
        String reliability=request.getParameter("reli");
        String date_of_entry=request.getParameter("dt");
        String exp_date=request.getParameter("exd");
        String mfd_date=request.getParameter("mfdt");
        try{
        Product p=new Product(product_code, product_name, batch_code,  quantity, product_for, category, specification, manufacturer, country, type_of_product, veg_or_nveg, mrp, discount, description,ingredients, weight, size, color,flavor,volume, quality, reliability, date_of_entry, exp_date, mfd_date);
        HsyDbAccess hd=new HsyDbAccess();
        hd.addProduct(p);
        }catch(Exception e)
        {
            out.println(e.toString());
        }
      response.sendRedirect("imageUpload.html");
        %>
        
    </body>
</html>
