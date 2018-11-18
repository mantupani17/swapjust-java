<%-- 
    Document   : offereUpdate
    Created on : May 18, 2017, 6:58:59 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyData.Admin_Data"%>
<%
String pid = request.getParameter("pid");
int x = Admin_Data.updateOfferStatus(pid);
if(x>0)
response.sendRedirect("offerEntry.jsp");
%>