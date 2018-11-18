<%-- 
    Document   : updateBto1Status
    Created on : May 22, 2017, 5:40:04 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyData.Admin_Data"%>
<%
String pid = request.getParameter("offcode");
int x = Admin_Data.updateBuyOneGetOneStatus(pid);
if(x>0)
response.sendRedirect("buyonegetone.jsp");
//out.println(pid);
%>
