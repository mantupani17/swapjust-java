<%-- 
    Document   : ShopkprEnt
    Created on : May 26, 2017, 11:09:59 AM
    Author     : Win7
--%>

<%@page import="HsyData.Admin_Data"%>
<%@page import="HsyModel.StoreKeeper"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<StoreKeeper> storekeepers = Admin_Data.getAllStoreKeepers();
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop Keeper Registration</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="logo/logo.jpg" />
        <link rel="stylesheet" href="w3css/w3css.css" />
        <link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css" />
        <link rel="stylesheet" href="icons/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="bootstrap-3.3.7\dist\js\bootstrap.min.js" ></script>
        <script type="text/javascript" src="../HtmlPages/valid.js"></script>
    </head>
    <body>
         <div class="w3-bar w3-black">
            <div class="w3-bar-item w3-allerta w3-xlarge">Shopkeeper Registration</div>
        </div>  
        <div class="w3-row" style="margin-top: 0%;">
            <div class="w3-col" style="width: 30%;">
                <form action="regShopKpr.jsp" method="post">
        <table border="0px" style="border:none; background-color: transparent; margin-top: 3%; margin-left: 4%;" align="center" >
                                
                                <tr>
                                    <td>
                                        Name
                                    </td>
                                    <td>
                                        <input type="text" name="nam"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pin code
                                    </td>
                                    <td >
                                        <input type="text" name="pin" id="pnc" onblur="return Pincod(document.getElementById('pnc'))"/>
                                    </td>
                                </tr>
                                <tr>
                                    <tr>
                                    <td>
                                        Street
                                    </td>
                                    <td >
                                        <input type="text" name="strt"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Shop Name
                                    </td>
                                    <td>
                                        <input type="text" name="sp_name"/>
                                    </td>
                                </tr>
                               <tr>
                                    <td>
                                        City
                                    </td>
                                    <td>
                                        <input type="text" name="cit"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        District
                                    </td>
                                    <td>
                                        <input type="text" name="dist"/>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td>
                                        State
                                    </td>
                                    <td>
                                        <input type="text" name="st"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Country
                                    </td>
                                    <td >
                                        <input type="text" name="count"/>
                                    </td>
                                </tr>
                                <tr>
                                <tr>
                                    <td>
                                        Mobile Number
                                    </td>
                                    <td>
                                        <input type="text" name="mob"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input class="w3-check" type="checkbox" checked="checked" >
                                        <label style="color:#000000"> Same as alternate number</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Alternate Number
                                    </td>
                                    <td>
                                        <input type="text" name="altmb"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Email
                                    </td>
                                    <td>
                                        <input type="text" name="mail"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Password
                                    </td>
                                    <td>
                                        <div> <input type="password" name="pass" id="pas1" onblur="return passM(document.getElementById('pas1'))"/>
                                            <label class="w3-tiny">apha,number,spcl char & 8 to 10 length</label></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Confirm Password
                                    </td>
                                    <td>
                                        <input type="password" name="conpass" id="pas2" onblur="return passMat(document.getElementById('pas2'))"/>
                                    </td>
                                </tr>
                                <tr>
                                <tr>
                                    <td colspan="2" class="w3-center">
                                        <input type="submit" value="Save" align="center" class="w3-button w3-xlarge w3-green" />
                                    </td>
                                </tr>
                            </table>
                </form>
                </div>
            <div class="w3-col"style="width: 70%; ">
                <table style="width: 100%;" >
                    <tr class="w3-green">
                        <td>
                            Shop Keeper Name
                        </td>
                        <td>
                            Shop name
                        </td>
                        <td>
                            Mobile number
                        </td>
                        <td>
                            Pin code
                        </td>
                        <td>
                            city
                        </td>
                        <td>
                            District
                        </td>
                        <td>
                            State
                        </td>
                    </tr>
                    <%
                        for(StoreKeeper storeKeeper:storekeepers)
                        {
                            %>
                            <tr>
                                <td><%=storeKeeper.getOwn_name()%></td>
                                <td><%=storeKeeper.getStoreName()%></td>
                                <td><%=storeKeeper.getMob_no()%></td>
                                <td><%=storeKeeper.getArea_code()%></td>
                                <td><%=storeKeeper.getCity()%></td>
                                <td><%=storeKeeper.getDistrict()%></td>
                                <td><%=storeKeeper.getState()%></td>
                            </tr>
                            <%
                        }
                    %>
                </table>
            </div>
        </div>
    </body>
</html>

