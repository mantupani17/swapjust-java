<%-- 
    Document   : offerEntry
    Created on : May 14, 2017, 12:30:10 PM
    Author     : mantu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
        <title>Offer Page</title>
        <script lang="javascript" type="text/javascript">
            function getData()
            {
                
                $.ajax({
                    url:"viewsalesIDs.jsp",
                    success:showAlert,
                    catch:false
                });
            }
            function showAlert(data)
            {
                document.getElementById("x").innerHTML=data;
            }
            function  showData()
            {
                alert(document.getElementById("ids").value);
            }
            function getOnData()
            {
                var e = document.getElementById("ids");
                var value = e.options[e.selectedIndex].value;
                document.getElementById("prod_code").value = value;
                //alert(value);
            }
        </script>
    </head>
    <body onload="getData();">
        <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Product Entry Page</div>
        </div><br/>
        <div class="w3-large w3-black" style="margin-left: 0">Offer Entry</div>
        <form action="Offer_entry.jsp" method="post">
            <table border="0px" align="center">
                <tr>
                    <td>Select Product Code</td>
                    <td><div id="x"></div></td>
                    <td><input type="text" name="prod_code" id="prod_code" placeholder="product Code" /></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td colspan="2"><input type="number" name="quantity" id="quantity" placeholder="quantity"/></td>
                </tr>
                <tr>
                    <td>Discount</td>
                    <td colspan="2"><input type="text" name="discount" id="discount" placeholder="Discount price"/></td>
                </tr>
                <tr>
                    <td>Time to Access </td>
                    <td colspan="2"><input type="text" name="hour" id="hour" placeholder="Hour" /></td>
                </tr>
                 <!--<tr>
                    <td>Date</td>
                   <td colspan="2"><input type="date" class="w3-orange" name="edate"  /></td>
                </tr>-->
                    <td colspan="3" align="center"><input type="submit" class="w3-button w3-hover-red w3-green" name="offer" value="Set Offer" /></td>
                </tr>
            </table>
        </form>
        <table width="100%">
            <tr><th colspan="2" class="w3-orange w3-text-white" >All Data</th></tr>
            <tr>
                <td valign="top">
                    <table border="0px" width="100%">
                        <tr><th colspan="6" class="w3-purple">Sales Data</th></tr>
                        <tr class="w3-yellow">
                            <th>Code</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Discount</th>
                            <th>Status</th>
                        </tr>
                       <%
                        ArrayList<Product> offerList = Admin_Data.getOfferData();
                        for(Product pro:offerList)
                        {
                            String pid = pro.getProduct_code(); 
                            String res = pro.getRes();
                            %>
                            <tr style="font-size: 12px;">
                                <td><%=pid%></td>
                                <td><%=Admin_Data.getProductName(pid)%></td>
                                <td><%=Admin_Data.getProductMrp(pid)%></td>
                                <td><%=pro.getQuantity()%></td>
                                <td><%=pro.getDiscount()%></td>
                                <%
                                if(res.equals("no"))
                                {
                                    %>
                                    <td><a href="offereUpdate.jsp?pid=<%=pid%>"><img src="../icons/no.png" /></a></td></tr>
                                    <%
                                }
                                else
                                {
                                    %>
                            <td><img src="../icons/yes.png" /></td></tr>
                                    <%
                                }
                        }
                        %>
                    </table>
                </td>
                <td valign="top">
                    <table border="0px" width="100%">
                        <tr><th colspan="8" class="w3-purple" >Offer Data</th></tr>
                        <tr class="w3-green">
                            <th>Code</th>
                            <th>Name</th>
                            <th>Quantity</th>
                            <th>MRP</th>
                            <th>D Offer</th>
                            <th>Hour</th>
                            <th>Date</th>
                            <th>status</th>
                        </tr>
                        <%
                        ArrayList<Product> appofferList = Admin_Data.getAprovOfferData();
                        for(Product pro:appofferList)
                        {
                            String pid = pro.getProduct_code(); 
                            String res = pro.getRes();
                            %>
                            <tr style="font-size: 12px;">
                                <td><%=pid%></td>
                                <td><%=Admin_Data.getProductName(pid)%></td>
                                <td><%=pro.getQuantity()%></td>
                                <td><%=Admin_Data.getProductMrp(pid)%></td>
                                <td><%=pro.getDiscount()%></td>
                                <td><%=pro.getHour()%></td>
                                <td><%=pro.getDate_of_entry()%></td>
                               <%
                                if(res.equals("no"))
                                {
                                    %>
                                    <td><a href="offereUpdate.jsp?pid=<%=pid%>"><img src="../icons/no.png" /></a></td></tr>
                                    <%
                                }
                                else
                                {
                                    %>
                            <td><img src="../icons/yes.png" /></td></tr>
                                    <%
                                }
                        }
                        %>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>
