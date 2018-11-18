package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import HsyModel.Offer;
import HsyData.Admin_Data;
import HsyModel.Customer;
import java.util.*;
import HsyModel.Product;
import HsyData.HsyDbAccess;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

   ArrayList<Product> products = Admin_Data.getAprovOfferData();
   ArrayList<Product> salesProducts = Admin_Data.viewSalesData();
   ArrayList<String> pros = HsyDbAccess.groupByTypes();
   Offer o = Admin_Data.getLastComboOffer();
    int count = 0;
    String cname = "";
    String cid =  ""; 
    session = request.getSession();
   if(session == null)
    {
        session.setAttribute("count",count); 
        session.setAttribute("cname", cname);
        session.setAttribute("cid", cid);
    }
   cname = (String)session.getAttribute("cname");
   cid = (String)session.getAttribute("cid");

      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <title>Home page</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" /> \n");
      out.write("        <script type=\"text/javascript\" src=\"jquery-3.1.1.min.js\"></script>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"logo/logo.jpg\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"w3css/w3css.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"SwapJustCss/homePage.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap-3.3.7\\dist\\css\\bootstrap.min.css\" />\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"icons/font-awesome-4.7.0/css/font-awesome.min.css\" />\n");
      out.write("        <link href=\"jquery.bxslider.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"o/docs/assets/css/docs.theme.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"o/docs/assets/owlcarousel/assets/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"o/docs/assets/owlcarousel/assets/owl.theme.default.min.css\">\n");
      out.write("        <script src=\"o/docs/assets/vendors/jquery.min.js\"></script>\n");
      out.write("        <script src=\"o/docs/assets/owlcarousel/owl.carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"bootstrap-3.3.7\\dist\\js\\bootstrap.min.js\" ></script>\n");
      out.write("        <script type=\"text/javascript\" lang=\"javascript\"></script>\n");
      out.write("<script lang=\"javascript\">\n");
      out.write("     $(function(){\n");
      out.write("              $(\"#getOtp\").click(showOtp); \n");
      out.write("           });\n");
      out.write("           function showOtp()\n");
      out.write("           {\n");
      out.write("               var param = {mbno:$(\"#mno\").val()};\n");
      out.write("               $.ajax({\n");
      out.write("                  url:\"JSP/getOtp.jsp\",\n");
      out.write("                  data:param,\n");
      out.write("                  success:showOtpdata,\n");
      out.write("                  catch:false\n");
      out.write("               });\n");
      out.write("           }\n");
      out.write("           function showOtpdata(data)\n");
      out.write("           {\n");
      out.write("               document.getElementById(\"otpdata\").value = data;\n");
      out.write("           }\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"50\" style=\"background-color:#F7F7F7;\">\n");
      out.write("<div class=\"container-fluid\" style=\" background-image:url(banners/fb.jpg); background-repeat:no-repeat; background-size:100% 100%; color:#fff;height:150px; margin-top:1px;\">\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse vs \" data-spy=\"affix\" data-offset-top=\"147\">\n");
      out.write("  <ul class=\"w3-navbar w3-deep-orange w3-border\" style=\"height: 55px;\">\n");
      out.write("\n");
      out.write("  <li><a href=\"#\"  class=\"w3-hover-deep-orange\"><img src=\"logo/logo10-12.png\" width=\"80px;\" height=\"35px\" /></a></li>\n");
      out.write("   <li class=\"w3-dropdown-click\" style=\"margin-top:.5%\" >\n");
      out.write("  <li style=\"width:40%; margin-top:.5%;margin-left: 3%;\">   <input type=\"text\" class=\"w3-input w3-orange w3-padding-6 w3-hide-small\" placeholder=\"Search..\"  style=\"width:100%;\"></li>\n");
      out.write("    <li style=\"margin-top:.5%;\"><button class=\"w3-btn w3-black w3-padding-6 w3-hover-orange w3-hide-small\" style=\"color:#fff; height:37px;\">Search</button></li>\n");
      out.write("    <li style=\"margin-top:.2%;\"><a href=\"JSP/cart.jsp\"  style=\"position:relative; z-index:3;\" class=\"w3-text-white w3-hover-deep-orange w3-hide-small\">bascket<img src=\"trolly/bs.png\" class=\"\" width=\"35px\"/><span class=\"w3-badge w3-small w3-orange\" style=\"z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;\">");
      out.print(session.getAttribute("count"));
      out.write("</span></a></li>\n");
      out.write("\t <li id=\"mr\" style=\"margin-top:.3%;\">\n");
      out.write("             ");
      out.write("\n");
      out.write("                <div class=\"w3-container\">\n");
      out.write("        <div class=\"w3-dropdown-hover w3-deep-orange\">\n");
      out.write("            <div class=\"w3-deep-orange\" style=\"margin-top:3px;\"><i class=\"material-icons\" style=\"font-size: 40px;\">account_circle</i></div>\n");
      out.write("            <div class=\"w3-dropdown-content w3-bar-block w3-border w3-black\" style=\"margin-top:-1px;\">\n");
      out.write("               \n");
      out.write("                ");

                if(cname!=null)
                {
                
      out.write("\n");
      out.write("                \n");
      out.write("                <a href=\"JSP/user_profile.jsp?cid=");
      out.print(cid);
      out.write("\" class=\"w3-bar-item w3-button w3-hover-deep-orange\" style=\"color:white\">");
      out.print(cname);
      out.write("</a>\n");
      out.write("                 <a href=\"JSP/cust_order.jsp?cid=");
      out.print(cid);
      out.write("\" class=\"w3-bar-item w3-button w3-hover-deep-orange\" style=\"color:white\">My Order</a>\n");
      out.write("                <a href=\"JSP/track_Product.jsp\" class=\"w3-bar-item w3-button w3-hover-deep-orange\" style=\"color:white\">Track Order</a>\n");
      out.write("                <a href=\"/HygoShoppingMart/logoutservlet?cid=");
      out.print(cid);
      out.write("\" class=\"w3-bar-item w3-button w3-hover-deep-orange\" style=\"color:white\">Logout </a>\n");
      out.write("                ");

                }
                else
                {
                    
      out.write("\n");
      out.write("                 <a href=\"#\" onclick=\"document.getElementById('log').style.display='block'\" class=\"w3-bar-item w3-button w3-hover-deep-orange\" style=\"color:white\"><i><img src=\"icons/log.png\" width=\"20px\" weight=\"20px\" /></i> Login</a>    \n");
      out.write("                    ");

                }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("       </li>\n");
      out.write("\t<!--login or sinup form-->\n");
      out.write("  <div id=\"log\" class=\"w3-modal\" >\n");
      out.write("    <div class=\"w3-modal-content w3-card-8 w3-animate-top\" style=\"max-width:550px\">\n");
      out.write("\t        <span onclick=\"document.getElementById('log').style.display='none'\" class=\"w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright\" title=\"Close Modal\">&times;</span>\n");
      out.write("\t <form class=\"w3-container\" action=\"\" method=\"POST\">\n");
      out.write("        <div class=\"w3-section\">\n");
      out.write("          <label style=\"color:#000;\"><b>Phone Number</b></label>\n");
      out.write("          <input class=\"w3-input  w3-margin-bottom\" type=\"text\" placeholder=\"Enter Phone Number\" pattern=\"[0-9]{10}\" style=\"color:#666666;\" name=\"usrname\" id=\"mno\" required />\n");
      out.write("          <button onclick=\"\" class=\"w3-deep-orange w3-border-0  w3-padding w3-margin-bottom\" id=\"getOtp\" onclick=\"showOtp();\">Get O T P</button><br />\n");
      out.write("          <label style=\"color:#000;\"><b>Verify OT P</b></label>\n");
      out.write("          <input class=\"w3-input\" type=\"text\" placeholder=\"Enter O T P\" name=\"psw\" style=\"color:#666666;\" pattern=\"[0-9]{5}\" id=\"otpdata\" required>\n");
      out.write("          <input class=\"w3-check\" type=\"checkbox\" checked=\"checked\" ><label style=\"color:#000000\"> Agreed Terms & Condition</label>\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("<form class=\"w3-container\" action=\"/HygoShoppingMart/loginServlet\" method=\"POST\">\n");
      out.write("\t  <input type=\"text\" class=\"w3-input\" placeholder=\"Enter Phone Number or email\" style=\"color:#000;\" name=\"uid\" required /><br>\n");
      out.write("\t  <input type=\"password\" class=\"w3-input w3-margin-bottom\" placeholder=\"Enter Password\" style=\"color:#000;\" name=\"pass\" required />\n");
      out.write("          <input class=\"w3-btn-block w3-deep-orange w3-section w3-padding\" type=\"submit\" name=\"login\" value=\"login\" />\n");
      out.write("</form>\n");
      out.write("\t   <div class=\"w3-container w3-border-top w3-padding-16 w3-light-grey\">\n");
      out.write("        <button onclick=\"document.getElementById('log').style.display='none'\" type=\"button\" class=\"w3-btn w3-red\">Cancel</button>\n");
      out.write("        <span class=\"w3-right w3-padding w3-hide-small\">Forgot <a href=\"#\" style=\"color:#000000;\">password</a></span>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div><!---->\n");
      out.write("        <li>\n");
      out.write("    \n");
      out.write("  </li>\n");
      out.write("\t\n");
      out.write("\t   <li id=\"mr\" style=\"margin-top:-.1%;\"><a href=\"#\" class=\"w3-hide-small w3-hover-deep-orange\"><div class=\"material-icons w3-hide-small\" style=\"font-size:24px;color:#ffffff; margin-top:4%;\">call</div><span style=\"font-size:1.5em; color:#fff;\">+91 9861766666</span></a></li>\n");
      out.write("\t   </li>\n");
      out.write("</ul>\n");
      out.write("<div id=\"demo\" class=\"w3-hide w3-hide-large w3-hide-medium\">\n");
      out.write("  <ul class=\"w3-navbar w3-left-align w3-large w3-black\">\n");
      out.write("    <li><a href=\"#items\">Link 1</a></li>\n");
      out.write("    <li><a href=\"#lang\">Link 2</a></li>\n");
      out.write("    <li><a href=\"#bas\">Link 3</a></li>\n");
      out.write("    <li><a href=\"#\">Link 1</a></li>\n");
      out.write("    <li><a href=\"#\">Link 2</a></li>\n");
      out.write("    <li><a href=\"#\">Link 3</a></li>\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("</nav> \n");
      out.write("    <div>\n");
      out.write("<!-- Wrapper for slides -->\n");
      out.write("<div style=\"position: relative;margin-top:2%;\">\n");
      out.write("    <div>\n");
      out.write("            <div class=\"\" style=\"max-height:230px; height:0px; margin-left:15%; width:80%; position: static; margin-top: 0\">\n");
      out.write("                <a href=\"#\"><img class=\"mySlides\" src=\"banners/FLOWER - Copy.jpg\" style=\"width:100%;\"></a>\n");
      out.write("                <a href=\"#\"> <img class=\"mySlides\" src=\"banners/hygo2.jpg\" style=\"width:100%\"></a>\n");
      out.write("                <a href=\"#\"><img class=\"mySlides\" src=\"banners/HTGO3.jpg\" style=\"width:100%\"></a>\n");
      out.write("            </div>\n");
      out.write("   </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--<div class=\"w3-sidenav w3-white\" style=\"width:5%; height:24%; margin-left: -1.08%;\">\n");
      out.write("  <a class=\"w3-padding-12 w3-blue w3-hover-white w3-hover-text-blue\" href=\"#\"><i class=\"fa fa-facebook\" style=\"font-size:22px\"></i></a>\n");
      out.write("  <a class=\"w3-padding-12 w3-green w3-hover-white w3-hover-text-green\" href=\"#\"><i class=\"fa fa-whatsapp\" style=\"font-size:22px\"></i></a>\n");
      out.write("  <a class=\"w3-padding-12 w3-blue w3-hover-white w3-hover-text-blue\" href=\"#\"><i class=\"fa fa-twitter\" style=\"font-size:22px\"></i></a>\n");
      out.write("</div>-->\n");
      out.write("\n");
      out.write("<!--side navi-->\n");
      out.write("<div class=\"col-md-3\" style=\"width:13%; float:left;margin-top: -2%; text-decoration:none;\" >\n");
      out.write("    <ul class=\"nav nav-pills nav-stacked\" style=\"margin-top: 20%;\">\n");
      out.write("     <li><a href=\"JSP/productCat.jsp\"><img src=\"items/sp.jpg\" width=\"100%\" class=\"w3-round-xlarge\" style=\"cursor:pointer;box-shadow:2px 1px 4px 0px #ff6600;\" /></a></li>\n");
      out.write("        <li><a href=\"#\"><img src=\"items/vg.png\" class=\"w3-round-xlarge\" width=\"100%\" style=\"cursor:pointer; box-shadow:2px 1px 4px 0px #ff6600;\" /></a></li>\n");
      out.write("        <li><a href=\"#\"><img src=\"items/fl.jpg\" class=\"w3-round-xlarge\" width=\"100%\" style=\"cursor:pointer;box-shadow:2px 1px 4px 0px #ff6600;\"/></a></li>\n");
      out.write("        <li><a href=\"#\"><img src=\"items/gr.jpg\" class=\"w3-round-xlarge\" width=\"100%\" style=\"cursor:pointer;box-shadow:2px 1px 4px 0px #ff6600;\" /></a></li>\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("<!--ITEM BOX-->\n");
      out.write("\n");
      out.write("<div  style=\"width:100%; height:0%; margin-top: 27%; margin-left: 4%;  \"><img src=\"banners/dm2.jpg\"></div>\n");
      out.write("<section id=\"demos\" style=\"background-color:red;width: 100%; \" >\n");
      out.write("      <div class=\"row\" style=\" margin-left:4%; float:left;\">\n");
      out.write("          <div class=\"large-12 columns\" >\n");
      out.write("                <div class=\"owl-carousel owl-theme\" >\n");
      out.write("        ");

        for(Product pro: products)
        {
            String pid = pro.getProduct_code();
            float mrp = Admin_Data.getProductMrp(pro.getProduct_code());
           
      out.write("\n");
      out.write("<div class=\"\"  style=\"width:100%;\" >\n");
      out.write("    <div class=\"w3-border-0\" style=\"margin-left: 0%; width:100%;\">\n");
      out.write("      <div class=\"w3-third w3-margin-bottom w3-hover-shadow w3-border-0\" style=\" margin-left:0%; width:100%;\">\n");
      out.write("          <a href=\"JSP/offrIndividualPage.jsp?pid=");
      out.print(pro.getProduct_code());
      out.write("&action=disOff\" style=\"text-decoration: none;\">\n");
      out.write("              <div class=\"w3-card-4\">\n");
      out.write("                  <img src=\"Gallery/");
      out.print(HsyDbAccess.getImage(pid));
      out.write("\" alt=\"Jane\" style=\"width:200px;height: 150px;\"  />\n");
      out.write("            <div class=\"w3-container\">\n");
      out.write("                    <div>\n");
      out.write("                        <span class=\"w3-text-deep-orange\" style=\"font-size: 10px;\">");
      out.print(Admin_Data.getProductName(pro.getProduct_code()) );
      out.write("</span><br/>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000;\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\"></i>\n");
      out.write("                         <span class=\"w3-opacity w3-small\"><span  style=\"text-decoration:line-through;color:black;\">MRP ");
      out.print(mrp);
      out.write("/-<br/>Discount ");
      out.print(pro.getDiscount());
      out.write("%</span><br/>\n");
      out.write("\t\t     <p style=\"font-size: 12px;\" class=\"w3-text-deep-orange\">Price: ");
      out.print(mrp-(mrp *(pro.getDiscount()/100)));
      out.write("/-</p>\n");
      out.write("                     <input type=\"hidden\" name=\"pid\" value=\"");
      out.print(pro.getProduct_code());
      out.write("\"  />\n");
      out.write("                     </div>\n");
      out.write("                     \n");
      out.write("                     <!--<input type=\"submit\" class=\"viewmore\"  name=\"individual\" value=\"View\"/>-->\n");
      out.write("            </div>\n");
      out.write("              </a>\n");
      out.write("        </div>\n");
      out.write("      </div>            \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("           ");

           }
        
      out.write("\n");
      out.write("        </div>\n");
      out.write("                  <script>\n");
      out.write("            $(document).ready(function() {\n");
      out.write("              var owl = $('.owl-carousel');\n");
      out.write("              owl.owlCarousel({\n");
      out.write("                margin: 10,\n");
      out.write("                nav: true,\n");
      out.write("                loop: true,\n");
      out.write("                responsive: {\n");
      out.write("                  0: {\n");
      out.write("                    items: 1\n");
      out.write("                  },\n");
      out.write("                  600: {\n");
      out.write("                    items: 3\n");
      out.write("                  },\n");
      out.write("                  1000: {\n");
      out.write("                    items: 6\n");
      out.write("                  }\n");
      out.write("                }\n");
      out.write("              })\n");
      out.write("            })\n");
      out.write("          </script>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("                <div id=\"itembox\" class=\"w3-modal\" >\n");
      out.write("    <div class=\"w3-modal-content w3-card-24 w3-animate-zoom\" style=\"max-width:1024px\">\n");
      out.write("\t        <span onclick=\"document.getElementById('itembox').style.display='none'\" class=\"w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright\" title=\"Close Modal\">&times;</span>\n");
      out.write("\t <form class=\"w3-container\" action=\"\">\n");
      out.write("             <div style=\"height: 70%; width: 40%; background-color: red;\"><img src=\"items/Katrinaa.jpg\">\n");
      out.write("             </div>\n");
      out.write("      </form>\n");
      out.write("                <div>\n");
      out.write("\t  <form class=\"w3-container\" action=\"\"  style=\"float:right; width: 55%; margin-top: -30%\">\n");
      out.write("\t  <input type=\"text\" class=\"w3-input\" placeholder=\"Enter Phone Number or email\" style=\"color:#000;\" required /><br>\n");
      out.write("\t  <input type=\"password\" class=\"w3-input w3-margin-bottom\" placeholder=\"Enter Password\" style=\"color:#000;\" required />\n");
      out.write("\t       <button class=\"w3-btn-block w3-deep-orange w3-section w3-padding\" type=\"submit\">Login</button>\n");
      out.write("\t  </form>\n");
      out.write("\t   <div class=\"w3-container w3-border-top w3-padding-16 w3-light-grey\">\n");
      out.write("        <button onclick=\"document.getElementById('itembox').style.display='none'\" type=\"button\" class=\"w3-btn w3-red\">Cancel</button>\n");
      out.write("        <span class=\"w3-right w3-padding w3-hide-small\">Forgot <a href=\"#\" style=\"color:#000000;\">password</a></span>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("                </div>\n");
      out.write("        <!---->\n");
      out.write("</section>\n");
      out.write("            <!--timer image-->\n");
      out.write("        <div class=\"container-fluid w3-row\">\n");
      out.write("        <div class=\" w3-container w3-quarter \" style=\" cursor: pointer;\">\n");
      out.write("            <a href=\"JSP/offrIndividualPage.jsp?pid=");
      out.print(o.getCombo_id());
      out.write("&action=comboOff\" > \n");
      out.write("                <img class=\"w3-padding w3-hover-sepia\" src=\"Gallery/");
      out.print(Admin_Data.getOfferImage(o.getCombo_id()));
      out.write("\" width=\"100%\" style=\"max-height: 350px;\" />\n");
      out.write("            </a>\n");
      out.write("    </div>\n");
      out.write("            <div class=\"w3-quarter w3-container \" style=\" cursor: pointer;\">\n");
      out.write("                <img class=\"w3-padding w3-opacity w3-hover-opacity-off\" src=\"items/SP/SP11.jpg\" width=\"100%\" style=\"max-height: 350px;\" />\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("<div class=\" w3-quarter w3-container\" style=\" cursor: pointer;\">\n");
      out.write("    <img  class=\"w3-padding w3-opacity w3-hover-opacity-off\" src=\"items/BN/BN2.png\" width=\"100%\" style=\"max-height: 350px;\"/>\n");
      out.write("</div>\n");
      out.write("            <div class=\" w3-container w3-quarter \" style=\" cursor: pointer;\">\n");
      out.write("                <img class=\"w3-padding w3-hover-sepia\" src=\"items/BN/BN5.png\" width=\"100%\" style=\"max-height: 350px;\" />\n");
      out.write("    </div>\n");
      out.write("        </div>\n");
      out.write("        <!--end-->\n");
      out.write("<div  style=\"width:100%; height:0%; margin-top: 3%; margin-left: 4%;\"><img src=\"banners/ls1.jpg\"></div> \n");
      out.write("<div>\n");
      out.write("<section id=\"demos\" style=\"background-color:red;width: 100%; \" >\n");
      out.write("      <div class=\"row\" style=\" margin-left:4%; float:left;\">\n");
      out.write("          <div class=\"large-12 columns\" >\n");
      out.write("                <div class=\"owl-carousel owl-theme\" >\n");
      out.write("        ");

        for(Product pro: salesProducts)
        {
            String pid = pro.getProduct_code();
            
           
      out.write("\n");
      out.write("<div class=\"\"  style=\"width:100%;\" >\n");
      out.write("    <div class=\"w3-border-0\" style=\"margin-left: 0%; width:100%;\">\n");
      out.write("      <div class=\"w3-third w3-margin-bottom w3-hover-shadow w3-border-0\" style=\" margin-left:0%; width:100%;\">\n");
      out.write("          <a href=\"JSP/individualProduct.jsp?pid=");
      out.print(pro.getProduct_code());
      out.write("\" style=\"text-decoration: none;\">\n");
      out.write("              <div class=\"w3-card-4\">\n");
      out.write("                  <img src=\"Gallery/");
      out.print(HsyDbAccess.getImage(pid));
      out.write("\" alt=\"Jane\" style=\"width:200px;height: 150px;\"  />\n");
      out.write("            <div class=\"w3-container\">\n");
      out.write("                    <div>\n");
      out.write("                        <span class=\"w3-text-deep-white\" style=\"font-size: 10px;\">");
      out.print(Admin_Data.getProductName(pid) );
      out.write("</span><br/>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000;\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\" style=\"color:#FF0000\"></i>\n");
      out.write("                         <i class=\"fa fa-heart\"></i>\n");
      out.write("                         <span class=\"w3-opacity w3-small\"><span  style=\"text-decoration:line-through;color:black;\">MRP ");
      out.print(pro.getMrp());
      out.write("/-<br/>Discount ");
      out.print(pro.getDiscount());
      out.write("%</span><br/>\n");
      out.write("\t\t     <p style=\"font-size: 12px;\" class=\"w3-text-deep-white\">Price: ");
      out.print(pro.getMrp()-(pro.getMrp() *(pro.getDiscount()/100)));
      out.write("/-</p>\n");
      out.write("                     <input type=\"hidden\" name=\"pid\" value=\"");
      out.print(pro.getProduct_code());
      out.write("\"  />\n");
      out.write("                     </div>\n");
      out.write("                     \n");
      out.write("                     <!--<input type=\"submit\" class=\"viewmore\"  name=\"individual\" value=\"View\"/>-->\n");
      out.write("            </div>\n");
      out.write("              </a>\n");
      out.write("        </div>\n");
      out.write("      </div>            \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("           ");

           }
        
      out.write("\n");
      out.write("        </div>\n");
      out.write("                  <script>\n");
      out.write("            $(document).ready(function() {\n");
      out.write("              var owl = $('.owl-carousel');\n");
      out.write("              owl.owlCarousel({\n");
      out.write("                margin: 10,\n");
      out.write("                nav: true,\n");
      out.write("                loop: true,\n");
      out.write("                responsive: {\n");
      out.write("                  0: {\n");
      out.write("                    items: 1\n");
      out.write("                  },\n");
      out.write("                  600: {\n");
      out.write("                    items: 3\n");
      out.write("                  },\n");
      out.write("                  1000: {\n");
      out.write("                    items: 6\n");
      out.write("                  }\n");
      out.write("                }\n");
      out.write("              })\n");
      out.write("            })\n");
      out.write("          </script>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("</section>\n");
      out.write("</div>\n");
      out.write("    <br/>\n");
      out.write("\n");
      out.write("        <div>\n");
      out.write("        <table style=\"width: 100%; height: 150px; border:none;\">\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"w3-xxlarge w3-allerta w3-centered\" style=\"background-color: #e8efe8;\">Help</td>\n");
      out.write("                <td class=\"w3-xxlarge w3-allerta w3-centered\" style=\"background-color: #e8efe8;\">Track Order</td>\n");
      out.write("                <td class=\"w3-xxlarge w3-allerta w3-centered\" style=\"background-color: #e8efe8;\">Sell On ShopJust</td>\n");
      out.write("                <td class=\"w3-xxlarge w3-allerta w3-centered\" style=\"background-color: #e8efe8;\">Privacy</td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("            <div class=\"w3-deep-orange\">\n");
      out.write("            <span style=\"margin-left: 1%;\">Payment Methods</span>\n");
      out.write("            <ol class=\"breadcrumbs\" style=\"background-color: transparent; border:none;\">\n");
      out.write("                <li><a><img style=\"width:40px;\" src=\"footerimg/visa.png\"/></a></li>\n");
      out.write("                <li><a><img style=\"width:40px;\" src=\"footerimg/ms.png\"/></a></li>\n");
      out.write("                <li><a><img style=\"width:40px;\" src=\"footerimg/msc.png\"/></a></li>\n");
      out.write("                <li><a><img style=\"width:40px;\" src=\"footerimg/rp.png\"/></a></li>\n");
      out.write("                <li><a><img style=\"width:40px;\" src=\"footerimg/nb.png\"/></a></li>\n");
      out.write("                <li><a><img style=\"width:40px;\" src=\"footerimg/cod.png\"/></a></li>\n");
      out.write("                <li><a><img style=\"width:40px;\" src=\"footerimg/sj.png\"/></a></li>\n");
      out.write("                \n");
      out.write("            </ol>\n");
      out.write("            <span style=\"margin-left: 1%;\">Products</span>\n");
      out.write("            <ol class=\"breadcrumbs\" style=\"background-color: transparent; border:none;\">\n");
      out.write("                 ");

        for(String pro: pros)
        {
            
            
      out.write("\n");
      out.write("            <li><a href=\"\" style=\"color: white;\">");
      out.print(pro);
      out.write("</a></li>\n");
      out.write("            ");

        } 
           
      out.write("\n");
      out.write("                \n");
      out.write("            </ol>\n");
      out.write("            <span style=\"margin-left: 1%;\">&#169 Reserved 2017 - 2022 (Swapjust.com)</span>\n");
      out.write("            <table class=\" w3-centered\"  style=\"border:none; width:70%; background-color: transparent;\">\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"50%\">\n");
      out.write("                        <div class=\"w3-large\" style=\"color: white;\">\n");
      out.write("                            Mail us<hr style=\"margin-top: -.1%;\">\n");
      out.write("                        </div>\n");
      out.write("                            <span style=\"color:white;\">At: Jaganatha Bihar</span>\n");
      out.write("                            <div style=\"color:white;\">\n");
      out.write("                                Sri Ram Nagar\n");
      out.write("                            </div>\n");
      out.write("                            <div style=\"color:white;\">\n");
      out.write("                                Pin code: 760001\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                            <div class=\"w3-large\" style=\"color: white;\">\n");
      out.write("                            Registered office<hr style=\"margin-top: -.1%;\">\n");
      out.write("                        </div>\n");
      out.write("                            <span style=\"color:white;\">At: Jaganatha Bihar</span>\n");
      out.write("                            <div style=\"color:white;\">\n");
      out.write("                                Sri Ram Nagar\n");
      out.write("                            </div>\n");
      out.write("                            <div style=\"color:white;\">\n");
      out.write("                                Pin code: 760001\n");
      out.write("                            </div>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <div class=\"w3-center w3-xlarge\" style=\"background-color: transparent;\">About Us<hr style=\"margin-top: -.1%;\"></div>\n");
      out.write("            <div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("<script>\n");
      out.write("function myFunction() {\n");
      out.write("    var x = document.getElementById(\"demo\");\n");
      out.write("    if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        x.className += \" w3-show\";\n");
      out.write("    } else { \n");
      out.write("        x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<!--banner slide-->\n");
      out.write("<script>\n");
      out.write("var myIndex = 0;\n");
      out.write("carousel();\n");
      out.write("function carousel() {\n");
      out.write("    var i;\n");
      out.write("    var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("    for (i = 0; i < x.length; i++) {\n");
      out.write("       x[i].style.display = \"none\";  \n");
      out.write("    }\n");
      out.write("    myIndex++;\n");
      out.write("    if (myIndex > x.length) {myIndex = 1}    \n");
      out.write("    x[myIndex-1].style.display = \"block\";  \n");
      out.write("    setTimeout(carousel, 2000); // Change image every 2 seconds\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("        \n");
      out.write("</html>\n");
      out.write("       \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
