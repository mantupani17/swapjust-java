<%-- 
    Document   : user_profile
    Created on : Apr 23, 2017, 7:08:57 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyModel.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session = request.getSession();
if(session == null)
{
    session.setAttribute("customer", "");
}
Customer cust = (Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
<link rel="stylesheet" href="../bootstrap-3.3.7\dist\css\bootstrap.min.css" />
<!--<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />-->
<link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
<link href="jquery.bxslider.css"/>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <script type="text/javascript" src="../bxslider/jquery.bxslider.js"></script>
 <script type="text/javascript" src="../bootstrap-3.3.7\dist\js\bootstrap.min.js" >
</script>
<title>Homepage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<script type="text/javascript" lang="javascript">
    function alterNumber(x)
    {
        if(x=="alternumber")
        {
            alert("checked");
        }
        else
        {
            alert("unchecked");
        }
    }
</script>

    </head>
    <body>
        <div class="w3-container">
<div class="w3-card-4" style="width:70%">
    <header class="w3-container w3-light-grey">
      <h3><%=cust.getCust_first_name()%></h3>
    </header>
    <br/>
    <div class="w3-container">
        <img src="../logo/logo.jpg" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
      <p>CEO at Mighty Schools. Marketing and Advertising.<br/> Seeking a new job and new opportunities.</p><br>
    </div>
    <button class="w3-button w3-block w3-deep-orange" onclick="myFunction('add')">Edit</button>
  </div>
</div>
                 <div class="w3-card-1"  style=" ">
                           
                            <div id="add" class="w3-hide w3-container ">
                                <table border="0px" style="border:none; background-color: transparent;" >
                                <tr style="height:2px;">
                                    <td style="padding: 0; margin: 0;">
                                        Pincode
                                    </td>
                                    <td  style="padding: 1; margin: 2;">
                                        <input type="text" name="pcode" value="<%=cust.getArea_code()%>"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Address
                                    </td>
                                    <td>
                                        <textarea rows="5" cols="35" name="cadd" >
                                        <%=cust.getAddress()%>
                                        </textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Locality/Landmark
                                    </td>
                                    <td>
                                        <input type="text" cname="lname" value="<%=cust.getLand_mark()%>"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        City
                                    </td>
                                    <td>
                                        <input type="text" name="ccity" value="<%=cust.getCity()%>"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        State
                                    </td>
                                    <td>
                                        <input type="text" name="cstate" value="<%=cust.getState()%>"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Mobile Number
                                    </td>
                                    <td>
                                        <input type="text" name="cno" value="<%=cust.getCust_mob_no()%>"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input class="w3-check" type="checkbox" id="a" value="alternumber" onchange="alterNumber(document.getElementById('a').value)" unchecked />
                                        <label style="color:#000000"> Same as alternate number</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Alternate Number
                                    </td>
                                    <td>
                                        <input type="text" name="acno" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="w3-center">
                                        <input type="submit" value="Save and Continue" align="center" class="w3-button w3-xlarge w3-green" />
                                    </td>
                                </tr>
                            </table> 
                            </div>
                        </div>
               
                 <script type="text/javascript">
            function myFunction(id) {
                 var x = document.getElementById(id);
                    if (x.className.indexOf("w3-show") == -1) {
                    x.className += " w3-show";
                    x.previousElementSibling.className += " w3-deep-orange";
                }
                else { 
                  
                     x.className = x.className.replace(" w3-show", "");
                     x.previousElementSibling.className = 
                     x.previousElementSibling.className.replace(" w3-green", "");
                }
                }
</script>
    </body>
</html>