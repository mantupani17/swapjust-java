/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import HsyModel.Product;
import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;

import org.w3c.dom.*;
import org.xml.sax.*;

/**
 *
 * @author mantu
 */
@WebServlet(name = "ProductServlet", urlPatterns = {"/displayproduct"})
public class ProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false);

        RequestDispatcher rd = request.getRequestDispatcher("index.html");
        if (session == null) {
            rd.forward(request, response);
        }

        ArrayList<Product> products = (ArrayList<Product>) session.getAttribute("ProductData");

        Iterator<Product> i = products.iterator();
        /*for(Product p:products)
         {
         out.println(p.getProduct_code());
         }*/

        Product p = null;

        String pcode = request.getParameter("pcode");
        //PrintWriter out=response.getWriter();
        while (i.hasNext()) {
            p = (Product) i.next();
            if (pcode.equals(p.getProduct_code())) {
                //out.println(p.getProduct_code()+" "+p.getProduct_name());
                session.setAttribute("productToAdd", p);
                break;
            }
            // out.println(p.getProduct_code());
        }

        if (p == null) {
            rd.forward(request, response);
        }
        
       /* try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.newDocument();

            Element productElement = p.getXmlData(doc);
            doc.appendChild(productElement);

            response.setContentType("text/html");

            PrintWriter out = response.getWriter();

            InputStream in = getServletContext().getResourceAsStream("Producs.xsl");
            transform(doc, in, out);

            out.flush();
            out.close();
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        }*/
    }

    public void transform(Document doc, InputStream is, PrintWriter out) {
        try {
            DOMSource xmlSource = new DOMSource(doc);
            
            StreamSource xslsource = new StreamSource(is);
            
            StreamResult result = new StreamResult(out);
            //out.print(xmlSource.getClass());
            //out.print(xslsource.getClass());
            //out.print(result);
            
            
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
           
            Transformer transformer = transformerFactory.newTransformer(xslsource);
            
            transformer.transform(xmlSource, result);
            //out.print("mantu");

        } catch (Exception e) {
            //out.print("<b>"+e.getLocalizedMessage()+" AND "+e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
