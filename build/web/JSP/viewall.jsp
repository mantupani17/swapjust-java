<%-- 
    Document   : viewall
    Created on : Apr 12, 2017, 5:02:08 PM
    Author     : Handshakeyou
--%>

<%@page import="HsyModel.Product"%>
<%@page import="java.util.*"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
//String pname = request.getParameter("pname");
ArrayList<Product> products = (ArrayList<Product>)HsyDbAccess.viewAll();
session.setAttribute("products", products);
%>
<html>
    <head>
       
        <script type="text/javascript" src="../jquery-3.1.1.min.js"></script>
       
        <link rel="stylesheet" href="../w3css/w3css.css" />
        <link rel="stylesheet" href="../bootstrap-3.3.7/dist/css/bootstrap.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
<link rel="stylesheet" href="../icons/font-awesome-4.7.0/css/font-awesome.min.css" />
<link href="jquery.bxslider.css"/>
<link rel="stylesheet" href="../o/docs/assets/css/docs.theme.min.css">
<link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="../o/docs/assets/owlcarousel/assets/owl.theme.default.min.css">
<script src="../o/docs/assets/vendors/jquery.min.js"></script>
<script src="../o/docs/assets/owlcarousel/owl.carousel.js"></script>
<script type="text/javascript" src="../bxslider/jquery.bxslider.js"></script>
<script type="text/javascript" src="../bootstrap-3.3.7\dist\js\bootstrap.min.js" >
</script>
<link href="../JSP/header.css" rel="stylesheet" type="text/css" />
        
    </head>
    <body>
          <table style="width:100%; border:none; margin-left: 4%;"><tr>
           <%
               int i=0;
        for(Product pro: products)
        {
           if(i<4)
           {
           %>
           <td class="l3 m4 s12">
               <div class=""  style="width:100%;" >
                 <div class="w3-border-0" style="margin-left: 0%; width:100%;">
                    <div class="w3-third w3-margin-bottom  w3-border-0" style=" margin-left:0%; width:100%;">
                        <a href="individualProduct.jsp?pid=<%=pro.getProduct_code()%>" style="text-decoration:none;">
    <div class="w3-third w3-margin-bottom w3-hover-shadow w3-border-0" style=" margin-left:3%; width:100%;">
      <div class="w3-card-4">
          <img src="../Gallery/<%=HsyDbAccess.getImage(pro.getProduct_code())%>" alt="Jane" style="width:200px;height:150px;"/>
        <div class="w3-container">
             <div>
                        <span class="w3-text-deep-orange" ><%=pro.getProduct_name() %></span><br/>
                         <i class="fa fa-heart" style="color:#FF0000"></i>
                         <i class="fa fa-heart" style="color:#FF0000"></i>
                         <i class="fa fa-heart" style="color:#FF0000;"></i>
                         <i class="fa fa-heart" style="color:#FF0000"></i>
                         <i class="fa fa-heart"></i>
                         <div class="w3-opacity w3-small"><span  style="text-decoration:line-through;color:black;">MRP <%=pro.getMrp()%>/-<br/>Discount <%=pro.getDiscount()%>%</span></div><br/>
		     <p style="font-size: 12px;" class="w3-text-deep-orange">Price: <%=pro.getMrp()-(pro.getMrp()*(pro.getDiscount()/100))%>/-</p>
                     <input type="hidden" name="pid" value="<%=pro.getProduct_code()%>"  />
             </div>
        </div>
      </div>
    </div>
	</a>
  </div>
        </div>
               </div>
                </td>

           <%
               i++;
               }
            else
                {
%>
            </tr>
<%
                    i=0;
                }

           }
        %>
        </table>
          
    </body>
</html>