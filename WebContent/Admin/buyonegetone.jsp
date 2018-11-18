<%-- 
    Document   : buyonegetone
    Created on : May 21, 2017, 4:10:45 PM
    Author     : Handshakeyou
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="HsyModel.Product"%>
<%@page import="HsyData.Admin_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Product> buyOneGetOneList = Admin_Data.getAllBuyOneGetOneData();
    ArrayList<Product> nonOneGetOneList = Admin_Data.getAprovBuyOneGetOneData();
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Offer Entry</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <link rel="stylesheet" href="../bootstrap-3.3.7/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="../w3css/w3css.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="../bootstrap-3.3.7/dist/js/bootstrap.min.js" ></script>
        <script type="text/javascript">
             function getData()
            {
                
                $.ajax({
                    url:"viewsalesIDs.jsp",
                    success:showAlert,
                    catch:false
                });
                $.ajax({
                 url:"viewsalesIDs1.jsp",
                 success:showData,
                 catch:false
                });
            }
            function showAlert(data)
            {
                document.getElementById("x").innerHTML=data;
                
            }
            function  showData(data)
            {
               // alert(document.getElementById("ids").value);
               document.getElementById("y").innerHTML=data;
            }
            function getOnData()
            {
                var e = document.getElementById("ids");
                var value = e.options[e.selectedIndex].value;
                document.getElementById("prod_code").value = value;
                //document.getElementById("prod_code1").value = value;
                //alert(value);
            }
            function getOnData1()
            {
                var e = document.getElementById("ids1");
                var value = e.options[e.selectedIndex].value;
                //document.getElementById("prod_code").value = value;
                document.getElementById("prod_code1").value = value;
                //alert(value);
            }
         </script>
         <style rel="stylesheet" type="text/css">
             table{
                 border-spacing: 10px;
                
             }   
             td{
                 padding: 5px;
             }
         </style>
    </head>
    <body onload="getData();">
            <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Offer(Buy one Get One)</div>
        </div>
        <form action="addBuyOneGet.jsp" method="post">
            <table  align="center" style="margin-top: 3%;" border="0px">
            <tr>
                <td colspan="6" style="text-align: center;">
                    Select Offer Code:<select name="ocode">
                        <option>BOF1</option>
                        <option>BOF2</option>
                        <option>BOF3</option>
                        <option>BOF4</option>
                        <option>BOF5</option>
                        <option>BOF6</option>
                        <option>BOF7</option>
                        <option>BOF8</option>
                        <option>BOF9</option>
                        <option>BOF10</option>
                        <option>BOF11</option>
                        <option>BOF12</option>
                        <option>BOF13</option>
                        <option>BOF14</option>
                        <option>BOF15</option>
                    </select>
                    offer name:<input type="text" name="offer_name" />
                </td>
            </tr>
            <tr>
                <td>Select Product one</td>
                <td><div id="x"></div></td>
                <td><input type="text" name="prod_code" id="prod_code" placeholder="product Code" /></td>
                <td>Select Offer Product code</td>
                <td><div id="y"></div></td>
                <td><input type="text" name="prod_code1" id="prod_code1" placeholder="Offer product code" /></td>
            </tr>
            <tr style="text-align: right;">
                <td>Price</td>
                <td><input type="text" name="price"/></td>
                <td>Quantity</td>
                <td><input type="number" name="quantity"/></td>
                <td>Hour</td>
                <td><input type="text" name="hour"/></td>
            </tr>
            <tr align="center">
                <td colspan="6" ><input type="submit" class="w3-button w3-green" value="Add" /></td>
            </tr>
        </table>
    
        <table width="100%">
            <tr>
            <thead>
            <th class="w3-purple" style="text-align: center;" colspan="2">ALL BUY ONE GET ONE OFFER DATA</th>
            </thead> 
            <tr>
                <td valign="top">
                    <table width="100%">
                            <tr>
                                <th class="w3-red" colspan="7" >
                                    BUY-ONE GET-ONE OFFER IN SERVER
                                </th>
                            </tr>
                            <tr style="font-size: 12px;" class="w3-purple">
                                <th>OFFER CODE</th>
                                <th>PRODUCT NAME</th>
                                <th>PRODUCT CODE</th>
                                <th>QUANTITY</th>
                                <th>PRICE</th>
                                <th>STATUS(&#10004;)/(&#x2716;)</th>
                            </tr>
                            <%
                                for(Product p : buyOneGetOneList)
                                {
                                    String pid = p.getProduct_code();
                                    String pid1 = p.getProduct_code2();
                                    String status = p.getRes();
                                  %>
                                  <tr><td><%=p.getOff_code()%></td>
                                  <td><%=Admin_Data.getProductName(pid)%></td>
                                  <td><%=Admin_Data.getProductName(pid1)%></td>
                                  <td><%=p.getQuantity()%></td>
                                  <td><%=p.getMrp()%></td>
                                  
                                  <%
                                      if(status.equals("no"))
                                      {
                                          %>
                                          <td><a href="updateBto1Status.jsp?offcode=<%=p.getOff_code()%>">&#x2716;</a></td></tr>
                                          <%
                                      }
                                        else
                                        {
                                         %>
                                         <td>&#10004;</td></tr>
                                         <%
                                        }

                                } 
                            %>
                    </table>
                </td>
                <td valign="top">
                    <table width="100%">
                            <tr>
                                <th class="w3-green" colspan="7" >
                                    BUY-ONE GET-ONE OFFER IN CLIENT
                                </th>
                            </tr>
                            <tr style="font-size: 12px;" class="w3-purple">
                                <th>OFFER CODE</th>
                                <th>PRODUCT NAME</th>
                                <th>PRODUCT CODE</th>
                                <th>QUANTITY</th>
                                <th>PRICE</th>
                                <th>STATUS(&#10004;)/(&#x2716;)</th>
                            </tr>
                            <%
                                for(Product p : nonOneGetOneList)
                                {
                                    String pid = p.getProduct_code();
                                    String pid1 = p.getProduct_code2();
                                    String status = p.getRes();
                                  %>
                                  <tr><td><%=p.getOff_code()%></td>
                                  <td><%=Admin_Data.getProductName(pid)%></td>
                                  <td><%=Admin_Data.getProductName(pid1)%></td>
                                  <td><%=p.getQuantity()%></td>
                                  <td><%=p.getMrp()%></td>
                                   <td>&#10004;</td></tr>
                                  <%
                                } 
                            %>
                    </table>
                </td>
            </tr>
            </tr>
        </table>
                    </form>
        <br/>
    </body>
</html>