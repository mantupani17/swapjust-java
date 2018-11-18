<%-- 
    Document   : addBuyOneGet
    Created on : May 21, 2017, 5:08:01 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyModel.Product"%>
<%@page import="hsy.date.DateBean"%>
<%@page import="HsyData.Admin_Data"%>
<%
String ocode = request.getParameter("ocode");
String pcode1  = request.getParameter("prod_code");
String pcode2  = request.getParameter("prod_code1");
String offer_name = request.getParameter("offer_name");
int quantity = Integer.parseInt(request.getParameter("quantity"));
float price = Float.parseFloat(request.getParameter("price"));
float hour = Float.parseFloat(request.getParameter("hour"));
String edate = DateBean.getCurrentDateTime();
String status = "no";
if(Admin_Data.getSalesProductQuantity(pcode1)> quantity && Admin_Data.getSalesProductQuantity(pcode2)>quantity)
{
//Product p = new Product("bg1", 1, 50, "2017-05-17 13:11:18", "no", 1, "gf","bm1");
Product p = new Product(pcode1, offer_name, quantity, price, edate, status, hour, pcode2,ocode); 
//out.println(ocode);
Admin_Data.updateSalesQuantity(pcode1, quantity);
Admin_Data.updateSalesQuantity(pcode2, quantity);
int x = Admin_Data.addBuyOneGetOneProduct(p);
if(x>0)
{
    response.sendRedirect("offerImage.jsp");
}
else
{
   response.sendError(0,"insufficient quantity"); 
}
}
else
{
    response.sendError(0,"insufficient quantity");
}
/*out.print(pcode1); 
out.print(pcode2); 
out.print(quantity); 
out.print(price); 
out.print(hour); 
out.print(edate);
out.print(status); */
%>
