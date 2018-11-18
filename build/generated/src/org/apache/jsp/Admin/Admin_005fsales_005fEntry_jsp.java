package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import HsyModel.Product;
import HsyData.Admin_Data;

public final class Admin_005fsales_005fEntry_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"../jquery-3.1.1.min.js\"></script>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../logo/logo.jpg\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"../w3css/w3css.css\" />\n");
      out.write("        <title>Sales Entry</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"w3-bar w3-black\">\n");
      out.write("            <div class=\"w3-bar-item w3-allerta w3-xlarge\">Product Entry Page</div>\n");
      out.write("        </div><br/>\n");
      out.write("        <div class=\"w3-large w3-black\" style=\"margin-left: 0\">Sales Entry</div>\n");
      out.write("        <form action=\"sales_entry.jsp\" method=\"post\">\n");
      out.write("            <table style=\"width: auto;\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Product code</td><td><input type=\"text\" name=\"pcode\" width=\"100%\" placeholder=\"product code\"/></td>\n");
      out.write("                    <td>Quantity</td><td><input type=\"number\" name=\"quantity\" width=\"100%\" placeholder=\"quantity\"/></td>\n");
      out.write("                    <td>MRP</td><td><input type=\"text\" name=\"mrp\" width=\"100%\" placeholder=\"MRP\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Discount</td><td><input type=\"text\" name=\"discount\" width=\"100%\" placeholder=\"Discount\"/></td>\n");
      out.write("                    <td>Entry Date</td><td><input type=\"date\" name=\"edate\" width=\"100%\" /></td>\n");
      out.write("                    <td colspan=\"2\">\n");
      out.write("                        <input type=\"submit\" class=\"w3-button w3-green\" value=\"Add New\" name=\"salesentry\"/>\n");
      out.write("                        <input type=\"submit\" formaction=\"updatesales.jsp\" class=\"w3-button w3-blue\" value=\"Update\" name=\"update\" />\n");
      out.write("                        <input type=\"submit\" formaction=\"removesales.jsp\" class=\"w3-button w3-red\" value=\"Remove\" name=\"remove\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        <table width=\"100%\">\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"w3-large w3-red\">Product input in Sales Entry (SERVER)</td>\n");
      out.write("                <td class=\"w3-large w3-deep-purple\">Product input in website (CLIENT)</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td valign=\"top\">\n");
      out.write("             <table width=\"100%\">\n");
      out.write("            <tr class=\"w3-green\">\n");
      out.write("                <th>Product Code</th>\n");
      out.write("                <th>Product Name</th>\n");
      out.write("                <th>Quantity</th>\n");
      out.write("                <th>MRP</th>\n");
      out.write("                <th>Discount</th>\n");
      out.write("                <th>Date Of Entry</th>\n");
      out.write("                <th>Site Entry</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

            ArrayList<Product> saleList = Admin_Data.viewSalesData();
            for(Product p : saleList)
            {
                String pcode = p.getProduct_code(); 
                String status = p.getRes();
                
      out.write("\n");
      out.write("                <tr style=\"font-size: 12px;\">\n");
      out.write("                    <td>");
      out.print(pcode);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(Admin_Data.getProductName(pcode));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(p.getQuantity());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(p.getMrp());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(p.getDiscount());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(p.getDate_of_entry());
      out.write("</td>\n");
      out.write("                    ");

                    if(status.equals("no"))
                    {
                    
      out.write("\n");
      out.write("                    <td><a href=\"clientSideSalesAppoval.jsp?pcode=");
      out.print(pcode);
      out.write("\">(&#x2716;)</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                    }
                    else
                    {
                        
      out.write("\n");
      out.write("                    <td>(&#10004;)</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                    }
            }
                    
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("                </td>\n");
      out.write("                <td valign=\"top\">\n");
      out.write("                     <table width=\"100%\">\n");
      out.write("            <tr class=\"w3-green\">\n");
      out.write("                <th>Product Code</th>\n");
      out.write("                <th>Product Name</th>\n");
      out.write("                <th>Quantity</th>\n");
      out.write("                <th>MRP</th>\n");
      out.write("                <th>Discount</th>\n");
      out.write("                <th>Date Of Entry</th>\n");
      out.write("                <th>Site Entry</th>\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("            ");

            ArrayList<Product> saleListdata = Admin_Data.viewSalesData();
            for(Product p : saleListdata)
            {
                String pcode = p.getProduct_code(); 
                String status = p.getRes();
                
      out.write("\n");
      out.write("                <tr style=\"font-size: 12px;\">\n");
      out.write("                     <td >");
      out.print(pcode);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(Admin_Data.getProductName(pcode));
      out.write("</td>\n");
      out.write("                    <td >");
      out.print(p.getQuantity());
      out.write("</td>\n");
      out.write("                    <td >");
      out.print(p.getMrp());
      out.write("</td>\n");
      out.write("                    <td >");
      out.print(p.getDiscount());
      out.write("</td>\n");
      out.write("                    <td >");
      out.print(p.getDate_of_entry());
      out.write("</td>\n");
      out.write("                    ");

                    if(status.equals("no"))
                    {
                    
      out.write("\n");
      out.write("                    <td  >(&#x2716;)</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                    }
                    else
                    {
                        
      out.write("\n");
      out.write("                    <td >(&#10004;)</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                    }
            }
                    
            
      out.write("\n");
      out.write("         \n");
      out.write("        </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("       \n");
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
