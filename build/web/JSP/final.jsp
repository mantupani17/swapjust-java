<%-- 
    Document   : final
    Created on : Apr 1, 2017, 12:04:55 PM
    Author     : mantu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%
String pcodes[] = request.getParameterValues("pcode");
String quantities[] =  request.getParameterValues("quantity");
for(String pcode : pcodes)
{
    out.println(pcode);
}
 %>

