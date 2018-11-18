<%-- 
    Document   : my
    Created on : Mar 8, 2017, 8:26:19 AM
    Author     : mantu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String data = request.getParameter("pid");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <script type="text/javascript" lang="javascript">
           $(function (){
               $("#checkpin").click(showpin);
           });
           function showpin()
           {
               var param ={pincode:$("#areacode").val()};
               $.ajax({
                  url:"CheckPin.jsp",
                  data:param,
                  success :showData,
                  catch:false
               });
           }
           function showData(text)
           {
               document.getElementById("viewAvail").innerHTML=text;
           }
        </script>
    </head>
    <body>
        <input type="text" id="areacode" placeholder="Enter Code" />
        <input type="button" id="checkpin" value="check Availability" onclick="showpin();">
        <label id="viewAvail">Check Availability </label>
    </body>
</html>
