<%-- 
    Document   : RegisterClient
    Created on : May 27, 2017, 2:13:32 PM
    Author     : Handshakeyou
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
        <link rel="shortcut icon" href="../logo/logo.jpg" />
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <link rel="stylesheet" href="../bootstrap-3.3.7\dist\css\bootstrap.min.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="../o/docs/assets/css/docs.theme.min.css">
        <link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
        <script src="../o/docs/assets/vendors/jquery.min.js"></script>
        <script src="../o/docs/assets/owlcarousel/owl.carousel.js"></script>
        <script type="text/javascript" src="../bxslider/jquery.bxslider.js"></script>
        <script type="text/javascript" src="../bootstrap-3.3.7/dist/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="../js/valid.js"></script>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:#F7F7F7;">

<nav class="navbar navbar-inverse vs w3-top " data-spy="affix" >
            <ul class="w3-navbar w3-deep-orange w3-border" style="height: 55px;">
                <li><a href="../index.jsp"  class="w3-hover-deep-orange"><img src="../logo/logo10-12.png" width="80px;" height="35px" /></a></li>
                <li style="width:40%; margin-top:.5%;margin-left: 3%;">   <input type="text" class="w3-input w3-orange w3-padding-6 w3-hide-small" placeholder="Search.."  style="width:100%;"></li>
                <li style="margin-top:.5%;"><button class="w3-btn w3-black w3-padding-6 w3-hover-orange w3-hide-small" style="color:#fff; height:37px;">Search</button></li>
                <li style="margin-top:.2%;"><a href="../JSP/cart.jsp"  style="position:relative; z-index:3;" class="w3-text-white w3-hover-deep-orange w3-hide-small">bascket<img src="../trolly/bs.png" class="" width="35px"/><span class="w3-badge w3-small w3-orange" style="z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;">null</span></a></li>
                <li id="mr" style="margin-top:.3%;">
                <!--<a class="w3-hide-small w3-hover-deep-orange" style="cursor:pointer;">
                <!-- <i class="material-icons w3-padding-6 w3-hide-small" style="color:#000; font-size:15px;"  onclick="document.getElementById('log').style.display='block'" ><img src="icons/log.png" width="20px" weight="20px" />null</i></a>--!>
                    <div class="w3-container">
                        <div class="w3-dropdown-hover w3-deep-orange">
                            <div class="w3-deep-orange" style="margin-top:3px;"><i class="material-icons" style="font-size: 40px;">account_circle</i></div>
                        </div>
                    </div>
                </li>
                <!--login or sinup form-->
                <div id="log" class="w3-modal" >
                <div class="w3-modal-content w3-card-8 w3-animate-top" style="max-width:550px">
                <span onclick="document.getElementById('log').style.display='none'" class="w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright" title="Close Modal">&times;</span>
                <form class="w3-container" action="">
                <div class="w3-section">
                <label style="color:#000;"><b>Phone Number</b></label>
                <input class="w3-input  w3-margin-bottom" type="text" placeholder="Enter Phone Number" pattern="[0-9]{10}" style="color:#666666;" name="usrname" required>
		<button onclick="" class="w3-deep-orange w3-border-0  w3-padding w3-margin-bottom">Get O T P</button><br />
                <label style="color:#000;"><b>Verify OT P</b></label>
                <input class="w3-input" type="text" placeholder="Enter O T P" name="psw" style="color:#666666;" pattern="[0-9]{5}" required>
                <input class="w3-check" type="checkbox" checked="checked" ><label style="color:#000000"> Agreed Terms & Condition</label>
                </div>
                </form>
                <form class="w3-container" action="">
                <input type="text" class="w3-input" placeholder="Enter Phone Number or email" style="color:#000;" required /><br>
                <input type="password" class="w3-input w3-margin-bottom" placeholder="Enter Password" style="color:#000;" required />
                <button class="w3-btn-block w3-deep-orange w3-section w3-padding" type="submit">Login</button>
                </form>
                <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                <button onclick="document.getElementById('log').style.display='none'" type="button" class="w3-btn w3-red">Cancel</button>
                <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#" style="color:#000000;">password</a></span>
                </div>
                </div>
                </div>
                <li id="mr" style="margin-top:-.1%;"><a href="#" class="w3-hide-small w3-hover-deep-orange"><div class="material-icons w3-hide-small" style="font-size:24px;color:#ffffff; margin-top:4%;">call</div><span style="font-size:1.5em; color:#fff;">+91 9861766666</span></a></li>
            </ul>
        </nav>
        <div class="w3-row" style="margin-top: 5%;">
            <div class="w3-col" style="width: 70%;">
                <form action="regClient.jsp" method="post">
        <table border="0px" style="border:none; background-color: transparent; margin-top: 3%; margin-left: 4%;" >
                                
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
                                        <input type="text" name="pin"/>
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
                                    <td>House No</td>
                                    <td><input type="text" name="hno" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        Locality/Landmark
                                    </td>
                                    <td>
                                        <input type="text" name="loc"/>
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
                                    <td>Gender</td>
                                    <td>Male<input type="radio" name="gen" value="M" />&nbsp;Female<input type="radio" name="gen" value="F"/></td>
                                </tr>
                                <tr>
                                <tr>
                                    <td>
                                        Mobile Number
                                    </td>
                                    <td>
                                        <input type="text" name="mob" id="mob"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input class="w3-check" id="ckb" type="checkbox" value="ck"  onChange="if(this.checked){chkBox()}else{document.getElementById('altmb').value=''}">
                                        <label style="color:#000000"> Same as alternate number</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Alternate Number
                                    </td>
                                    <td>
                                        <input type="text" name="altmb" id="altmb"/>
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
                                        <input type="password" name="pass" id="pass1" onblur="return passM(document.getElementById('pass1'));"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Confirm Password
                                    </td>
                                    <td>
                                        <input type="password" name="conpass"/>
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
            <div class="w3-col"style="width: 30%; ">
                <div><img src="../items/Katrinaa.jpg"/></div><br/>
                <div><img src="../items/Katrinaa.jpg"/></div><br/>
                <div><img src="../items/Katrinaa.jpg"/></div><br/>
        </div>
            </div>
    </body>
</html>
