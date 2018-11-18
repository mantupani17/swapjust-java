<%-- 
    Document   : comboOffer
    Created on : May 23, 2017, 2:22:18 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyData.Admin_Data"%>
<%@page import="HsyModel.Offer"%>
<%@page import="hsy.date.DateBean"%>
<%
String product1 = request.getParameter("prod_code");
String product2 = request.getParameter("prod_code1");
String product3 = request.getParameter("prod_code2");
String product4 = request.getParameter("prod_code3");
String product5 = request.getParameter("prod_code4");
String product6 = request.getParameter("prod_code5");
String product7 = request.getParameter("prod_code6");
String product8 = request.getParameter("prod_code7");
String product9 = request.getParameter("prod_code8");
String product10 = request.getParameter("prod_code9");
String product11 = request.getParameter("prod_code10");
String product12 = request.getParameter("prod_code11");
String product13 = request.getParameter("prod_code12");
String product14 = request.getParameter("prod_code13");
String combo_id = request.getParameter("ccode");
String status = "no";
String edate = DateBean.getCurrentDateTime();
String combo_return_option = request.getParameter("status");
int quantity = Integer.parseInt(request.getParameter("quantity"));
float hour = Float.parseFloat(request.getParameter("hour"));
float price = Float.parseFloat(request.getParameter("price"));
String combo_name = request.getParameter("combo_name");
if(
        Admin_Data.getSalesProductQuantity(product1)>quantity && 
        Admin_Data.getSalesProductQuantity(product2)>quantity && 
        Admin_Data.getSalesProductQuantity(product3)>quantity && 
        Admin_Data.getSalesProductQuantity(product4)>quantity && 
        Admin_Data.getSalesProductQuantity(product5)>quantity && 
        Admin_Data.getSalesProductQuantity(product6)>quantity && 
        Admin_Data.getSalesProductQuantity(product7)>quantity && 
        Admin_Data.getSalesProductQuantity(product8)>quantity && 
        Admin_Data.getSalesProductQuantity(product9)>quantity && 
        Admin_Data.getSalesProductQuantity(product10)>quantity && 
        Admin_Data.getSalesProductQuantity(product11)>quantity && 
        Admin_Data.getSalesProductQuantity(product12)>quantity && 
        Admin_Data.getSalesProductQuantity(product13)>quantity && 
        Admin_Data.getSalesProductQuantity(product14)>quantity
   )
{
Admin_Data.updateSalesQuantity(product1, quantity);  
Admin_Data.updateSalesQuantity(product2, quantity);
Admin_Data.updateSalesQuantity(product3, quantity);
Admin_Data.updateSalesQuantity(product4, quantity);
Admin_Data.updateSalesQuantity(product5, quantity);
Admin_Data.updateSalesQuantity(product6, quantity);
Admin_Data.updateSalesQuantity(product7, quantity);
Admin_Data.updateSalesQuantity(product8, quantity);
Admin_Data.updateSalesQuantity(product9, quantity);
Admin_Data.updateSalesQuantity(product10, quantity);
Admin_Data.updateSalesQuantity(product11, quantity);
Admin_Data.updateSalesQuantity(product12, quantity);
Admin_Data.updateSalesQuantity(product13, quantity);
Admin_Data.updateSalesQuantity(product14, quantity);
try{
Offer comboOffer = new Offer(product1, product2, product3, product4, product5, product6, product7, product8, product9, product10, product11, product12, product13, product14, combo_id, status, edate, combo_return_option, hour, quantity, price,combo_name);

int x = Admin_Data.addNewCombo(comboOffer);
if(x>0)
{
    response.sendRedirect("ofrCmbo_1.jsp");
}
}catch(Exception r){
    out.print(r.toString());
}
}else
{
    response.sendError(0,"insufficient quantity");
}
%>