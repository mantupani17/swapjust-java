<%-- 
    Document   : regShopKpr
    Created on : May 27, 2017, 4:20:02 PM
    Author     : Handshakeyou
--%>
<%@page import="HsyData.Admin_Data"%>
<%@page import="HsyModel.StoreKeeper"%>
<%
    String name= request.getParameter("nam");
    String pincode= request.getParameter("pin");
    String street= request.getParameter("strt");
    //String landmark= request.getParameter("loc");
    String city= request.getParameter("cit");
    String district= request.getParameter("dist");
    String state= request.getParameter("st");
    String country= request.getParameter("count");
    String mobile= request.getParameter("mob");
    String email= request.getParameter("mail");
    String password= request.getParameter("pass");
    //String gender = request.getParameter("gen");
    String edate = hsy.date.DateBean.getCurrentDateTime();
    //String hno = request.getParameter("hno");
    String altno =request.getParameter("altmb");
    String shop_name = request.getParameter("sp_name");
    StoreKeeper storeKeeper = new  StoreKeeper(shop_name, pincode, mobile, altno, edate, city, street, country, district, state, email, password, name);
    int res = Admin_Data.addStoreKeeper(storeKeeper);
    if(res>0)
    response.sendRedirect("ShopkprEnt.jsp");
%>
