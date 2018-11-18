<%-- 
    Document   : updateCombostatus
    Created on : May 24, 2017, 4:02:33 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyData.Admin_Data"%>
<%
String combo_code = request.getParameter("combo_id");
int res = Admin_Data.updateComboStatus(combo_code);
if(res>0)
    response.sendRedirect("ofrCmbo_1.jsp");
%>