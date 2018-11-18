<%-- 
    Document   : ofrCmbo
    Created on : May 22, 2017, 1:18:18 PM
    Author     : Win7
--%>

<%@page import="HsyModel.Offer"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="HsyModel.Product"%>
<%@page import="java.util.*"%>
<%@page import="HsyData.HsyDbAccess"%>
<%
    ArrayList <Product> listsales = Admin_Data.viewSalesData();
    ArrayList<Offer> comboOfferList = Admin_Data.viewAllCombo();
    ArrayList<Offer> approvalCombos = Admin_Data.viewAllApprovCombo();
%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Combo offer page</title>
        <script type="text/javascript" src="jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="logo/logo.jpg" />
        <link rel="stylesheet" href="w3css/w3css.css" />
        <link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css" />
        <link rel="stylesheet" href="icons/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="comB.js"></script>
        <script type="text/javascript" src="bootstrap-3.3.7\dist\js\bootstrap.min.js" ></script>
    </head>
    <body>
        <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Offer(Buy one Get One)</div>
        </div>
        <form action="comboOffer.jsp" method="post">
        <table  style="margin-left: 12%; margin-top: 3%;">
            <tr>
                <td colspan="4" style="text-align: center;">
                    Select Offer Code:<select name="ccode">
                        <option>COF1</option>
                        <option>COF2</option>
                        <option>COF3</option>
                        <option>COF4</option>
                        <option>COF5</option>
                        <option>COF6</option>
                        <option>COF7</option>
                        <option>COF8</option>
                        <option>COF9</option>
                        <option>COF10</option>
                        <option>COF11</option>
                        <option>COF12</option>
                        <option>COF13</option>
                        <option>COF14</option>
                        <option>COF15</option>
                    </select>
                    Combo Name <input type="text" name="combo_name" />
               </td>
            </tr>
            <tr>
                <td>
                   Product Id(1) <select id="ids" onchange="getOnData();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x:listsales  )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code" name="prod_code"/>
                </td>
                 <td>
                   Product Id(2) <select id="ids1" onchange="getOnData1();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code1" name="prod_code1"/>
                </td>
            </tr>
              <tr>
                <td>
                   Product Id(3) <select id="ids2" onchange="getOnData2();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code2" name="prod_code2"/>
                </td>
                 <td>
                   Product Id(4) <select id="ids3" onchange="getOnData3();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code3" name="prod_code3"/>
                </td>
            </tr>
             <tr>
                <td>
                   Product Id(5) <select id="ids4" onchange="getOnData4();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code4" name="prod_code4"/>
                </td>
                 <td>
                   Product Id(6) <select id="ids5" onchange="getOnData5();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code5" name="prod_code5"/>
                </td>
            </tr>
             <tr>
                <td>
                   Product Id(7) <select id="ids6" onchange="getOnData6();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code6" name="prod_code6"/>
                </td>
                 <td>
                   Product Id(8) <select id="ids7" onchange="getOnData7();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code7" name="prod_code7"/>
                </td>
            </tr>
               <tr>
                <td>
                   Product Id(9) <select id="ids8" onchange="getOnData8();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code8" name="prod_code8"/>
                </td>
                 <td>
                   Product Id(10) <select id="ids9" onchange="getOnData9();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code9" name="prod_code9"/>
                </td>
            </tr>
              <tr>
                <td>
                   Product Id(11) <select id="ids10" onchange="getOnData10();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code10" name="prod_code10"/>
                </td>
                 <td>
                   Product Id(12) <select id="ids11" onchange="getOnData11();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code11" name="prod_code11"/>
                </td>
            </tr>
              <tr>
                <td>
                   Product Id(13) <select id="ids12" onchange="getOnData12();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
             <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code12" name="prod_code12"/>
                </td>
                
                 <td>
                   Product Id(14) <select id="ids13" onchange="getOnData13();">
                       <option>
                            &nbsp;
                        </option>
         <%                for(Product x: listsales )
         {
         %>
         
         <option value="<%=x.getProduct_code() %>" > <%=Admin_Data.getProductName(x.getProduct_code()) %></option>
         
         <%
         }
           %>        </select>
                </td>
                <td>
                    <input type="text" id="prod_code13" name="prod_code13"/>
                </td>
            </tr>
            <tr>
                <td>Quantity <input type="number" name="quantity" /></td>
                <td>Hour<input type="text" name="hour" placeholder="valid till"/></td>
                <td>Price<input type="text" name="price" placeholder="Price of combo" /></td>
                        <td>Return 
                            <select name="status">
                                <option>NO</option>
                                <option>YES</option>
                            </select>
                        </td>
            </tr>
            <tr><td colspan="4" align="center"><input class="w3-button w3-green" type="submit" name="combodata" value="AddCombo" /></td></tr>
        </table>
                <table width="100%">
                    <tr class="w3-purple"><th colspan="2" align="center">OFFER COMBO DETAILS</th></tr>
                    <tr>
                        <td valign="top">
                            <table width="100%">
                                <tr class="w3-red">
                                    <th colspan="5">Offer present in Server</th>
                                </tr> 
                                <tr class="w3-gray" style="font-size: 12px;">
                                        <th>Combo ID</th>
                                        <th>Combo Name</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th>Status(&#10004;)/(&#x2716;)</th>
                                </tr>
                                <%
                                    for(Offer off : comboOfferList)
                                    {
                                        String sts = off.getStatus();
                                        String combo_id = off.getCombo_id();
                                        %>
                                        <tr style="font-size: 12px;text-align: center;">
                                            <td><%=combo_id%></td>
                                            <td><%=off.getCombo_name()%></td>
                                            <td><%=off.getQuantity()%></td>
                                            <td><%=off.getPrice()%></td>
                                            <%
                                                if(sts.equals("no"))
                                                {
                                                %>
                                                <td><a href="updateCombostatus.jsp?combo_id=<%=combo_id%>">(&#x2716;)</a></td></tr>
                                            <%
                                              }
                                               else{
                                                 %>
                                             <td>(&#10004;)</td></tr>
                                        <%
                                            }
                                    }
                                %>
                            </table>
                        </td>
                        <td valign="top">
                            <table width="100%">
                                <tr class="w3-green">
                                    <th colspan="5">Offer in Client</th>
                                </tr>
                                 <tr class="w3-gray" style="font-size: 12px;">
                                        <th>Combo ID</th>
                                        <th>Combo Name</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th>Status(&#10004;)/(&#x2716;)</th>
                                </tr>
                                <%
                                    for(Offer off : approvalCombos)
                                    {
                                        //String sts = off.getStatus();
                                        String combo_id = off.getCombo_id();
                                        %>
                                        <tr style="font-size: 12px;text-align: center;">
                                            <td><%=combo_id%></td>
                                            <td><%=off.getCombo_name()%></td>
                                            <td><%=off.getQuantity()%></td>
                                            <td><%=off.getPrice()%></td>
                                            <td>(&#10004;)</td></tr>
                                        <%
                                    }
                                %>
                            </table>
                            </table>
                        </td>
                    </tr>
                </table>
        </form>        
    </body>
</html>
