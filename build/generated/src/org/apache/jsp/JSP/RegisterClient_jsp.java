package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegisterClient_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>register</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script type=\"text/javascript\" src=\"../jquery-3.1.1.min.js\"></script>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../logo/logo.jpg\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"../w3css/w3css.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"../bootstrap-3.3.7\\dist\\css\\bootstrap.min.css\" />\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"../icons/font-awesome-4.7.0/css/font-awesome.min.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"../o/docs/assets/css/docs.theme.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../o/docs/assets/owlcarousel/assets/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../o/docs/assets/owlcarousel/assets/owl.theme.default.min.css\">\n");
      out.write("        <script src=\"../o/docs/assets/vendors/jquery.min.js\"></script>\n");
      out.write("        <script src=\"../o/docs/assets/owlcarousel/owl.carousel.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"../bxslider/jquery.bxslider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"../bootstrap-3.3.7/dist/js/bootstrap.min.js\" ></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"../js/valid.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"50\" style=\"background-color:#F7F7F7;\">\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse vs w3-top \" data-spy=\"affix\" >\n");
      out.write("            <ul class=\"w3-navbar w3-deep-orange w3-border\" style=\"height: 55px;\">\n");
      out.write("                <li><a href=\"../index.jsp\"  class=\"w3-hover-deep-orange\"><img src=\"../logo/logo10-12.png\" width=\"80px;\" height=\"35px\" /></a></li>\n");
      out.write("                <li style=\"width:40%; margin-top:.5%;margin-left: 3%;\">   <input type=\"text\" class=\"w3-input w3-orange w3-padding-6 w3-hide-small\" placeholder=\"Search..\"  style=\"width:100%;\"></li>\n");
      out.write("                <li style=\"margin-top:.5%;\"><button class=\"w3-btn w3-black w3-padding-6 w3-hover-orange w3-hide-small\" style=\"color:#fff; height:37px;\">Search</button></li>\n");
      out.write("                <li style=\"margin-top:.2%;\"><a href=\"../JSP/cart.jsp\"  style=\"position:relative; z-index:3;\" class=\"w3-text-white w3-hover-deep-orange w3-hide-small\">bascket<img src=\"../trolly/bs.png\" class=\"\" width=\"35px\"/><span class=\"w3-badge w3-small w3-orange\" style=\"z-index:2; position:absolute; margin-left:-18%; margin-top:.2%;\">null</span></a></li>\n");
      out.write("                <li id=\"mr\" style=\"margin-top:.3%;\">\n");
      out.write("                <!--<a class=\"w3-hide-small w3-hover-deep-orange\" style=\"cursor:pointer;\">\n");
      out.write("                <!-- <i class=\"material-icons w3-padding-6 w3-hide-small\" style=\"color:#000; font-size:15px;\"  onclick=\"document.getElementById('log').style.display='block'\" ><img src=\"icons/log.png\" width=\"20px\" weight=\"20px\" />null</i></a>--!>\n");
      out.write("                    <div class=\"w3-container\">\n");
      out.write("                        <div class=\"w3-dropdown-hover w3-deep-orange\">\n");
      out.write("                            <div class=\"w3-deep-orange\" style=\"margin-top:3px;\"><i class=\"material-icons\" style=\"font-size: 40px;\">account_circle</i></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <!--login or sinup form-->\n");
      out.write("                <div id=\"log\" class=\"w3-modal\" >\n");
      out.write("                <div class=\"w3-modal-content w3-card-8 w3-animate-top\" style=\"max-width:550px\">\n");
      out.write("                <span onclick=\"document.getElementById('log').style.display='none'\" class=\"w3-closebtn w3-hover-red w3-container w3-padding-8 w3-display-topright\" title=\"Close Modal\">&times;</span>\n");
      out.write("                <form class=\"w3-container\" action=\"\">\n");
      out.write("                <div class=\"w3-section\">\n");
      out.write("                <label style=\"color:#000;\"><b>Phone Number</b></label>\n");
      out.write("                <input class=\"w3-input  w3-margin-bottom\" type=\"text\" placeholder=\"Enter Phone Number\" pattern=\"[0-9]{10}\" style=\"color:#666666;\" name=\"usrname\" required>\n");
      out.write("\t\t<button onclick=\"\" class=\"w3-deep-orange w3-border-0  w3-padding w3-margin-bottom\">Get O T P</button><br />\n");
      out.write("                <label style=\"color:#000;\"><b>Verify OT P</b></label>\n");
      out.write("                <input class=\"w3-input\" type=\"text\" placeholder=\"Enter O T P\" name=\"psw\" style=\"color:#666666;\" pattern=\"[0-9]{5}\" required>\n");
      out.write("                <input class=\"w3-check\" type=\"checkbox\" checked=\"checked\" ><label style=\"color:#000000\"> Agreed Terms & Condition</label>\n");
      out.write("                </div>\n");
      out.write("                </form>\n");
      out.write("                <form class=\"w3-container\" action=\"\">\n");
      out.write("                <input type=\"text\" class=\"w3-input\" placeholder=\"Enter Phone Number or email\" style=\"color:#000;\" required /><br>\n");
      out.write("                <input type=\"password\" class=\"w3-input w3-margin-bottom\" placeholder=\"Enter Password\" style=\"color:#000;\" required />\n");
      out.write("                <button class=\"w3-btn-block w3-deep-orange w3-section w3-padding\" type=\"submit\">Login</button>\n");
      out.write("                </form>\n");
      out.write("                <div class=\"w3-container w3-border-top w3-padding-16 w3-light-grey\">\n");
      out.write("                <button onclick=\"document.getElementById('log').style.display='none'\" type=\"button\" class=\"w3-btn w3-red\">Cancel</button>\n");
      out.write("                <span class=\"w3-right w3-padding w3-hide-small\">Forgot <a href=\"#\" style=\"color:#000000;\">password</a></span>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                <li id=\"mr\" style=\"margin-top:-.1%;\"><a href=\"#\" class=\"w3-hide-small w3-hover-deep-orange\"><div class=\"material-icons w3-hide-small\" style=\"font-size:24px;color:#ffffff; margin-top:4%;\">call</div><span style=\"font-size:1.5em; color:#fff;\">+91 9861766666</span></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"w3-row\" style=\"margin-top: 5%;\">\n");
      out.write("            <div class=\"w3-col\" style=\"width: 70%;\">\n");
      out.write("                <form action=\"regClient.jsp\" method=\"post\">\n");
      out.write("        <table border=\"0px\" style=\"border:none; background-color: transparent; margin-top: 3%; margin-left: 4%;\" >\n");
      out.write("                                \n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Name\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"nam\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Pin code\n");
      out.write("                                    </td>\n");
      out.write("                                    <td >\n");
      out.write("                                        <input type=\"text\" name=\"pin\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Street\n");
      out.write("                                    </td>\n");
      out.write("                                    <td >\n");
      out.write("                                        <input type=\"text\" name=\"strt\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                               \n");
      out.write("                                <tr>\n");
      out.write("                                    <td>House No</td>\n");
      out.write("                                    <td><input type=\"text\" name=\"hno\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Locality/Landmark\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"loc\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        City\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"cit\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        District\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"dist\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                               \n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        State\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"st\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Country\n");
      out.write("                                    </td>\n");
      out.write("                                    <td >\n");
      out.write("                                        <input type=\"text\" name=\"count\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Gender</td>\n");
      out.write("                                    <td>Male<input type=\"radio\" name=\"gen\" value=\"M\" />&nbsp;Female<input type=\"radio\" name=\"gen\" value=\"F\"/></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Mobile Number\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"mob\" id=\"mob\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        <input class=\"w3-check\" id=\"ckb\" type=\"checkbox\" value=\"ck\"  onChange=\"if(this.checked){chkBox()}else{document.getElementById('altmb').value=''}\">\n");
      out.write("                                        <label style=\"color:#000000\"> Same as alternate number</label>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Alternate Number\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"altmb\" id=\"altmb\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Email\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" name=\"mail\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Password\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"password\" name=\"pass\" id=\"pass1\" onblur=\"return passM(document.getElementById('pass1'));\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        Confirm Password\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"password\" name=\"conpass\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td colspan=\"2\" class=\"w3-center\">\n");
      out.write("                                        <input type=\"submit\" value=\"Save\" align=\"center\" class=\"w3-button w3-xlarge w3-green\" />\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table> \n");
      out.write("                </form>\n");
      out.write("        </div>\n");
      out.write("            <div class=\"w3-col\"style=\"width: 30%; \">\n");
      out.write("                <div><img src=\"../items/Katrinaa.jpg\"/></div><br/>\n");
      out.write("                <div><img src=\"../items/Katrinaa.jpg\"/></div><br/>\n");
      out.write("                <div><img src=\"../items/Katrinaa.jpg\"/></div><br/>\n");
      out.write("        </div>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
