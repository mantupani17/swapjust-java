/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swapjust.special.processorder;

import HsyData.Admin_Data;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import hsy.date.DateBean;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Handshakeyou
 */
@WebServlet(name = "ProcessOrder", urlPatterns = {"/orderprocess"})
public class ProcessOrder extends HttpServlet {
String result ;
String cust_id;
int quan = 0; 
float mrp=0;
String ord_date;
String pid = null;
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
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            if(session != null)
            {
                result = request.getParameter("action");
                if(result.contains("buynow"))
                {
                cust_id = (String)session.getAttribute("cid");
                mrp = Float.parseFloat(request.getParameter("price"));
                quan = Integer.parseInt(request.getParameter("quantity"));
                ord_date = DateBean.getCurrentDateTime();
                pid = request.getParameter("pid");
                //RequestDispatcher rd = request.getRequestDispatcher("/JSP/checkOut.jsp");
                //out.print("<h1>"+cust_id+"<br>"+result+"<br>"+mrp+"<br>"+quan+"<br>"+ord_date+"<br>"+pid+"</h1>");
                Order ord = new Order(cust_id, pid, mrp, quan, ord_date);
                int res = Admin_Data.addOrder(ord);
                if(res>0)
                {
                  //rd.include(request, response);
                    response.sendRedirect("/JSP/checkOut.jsp");
                }
                else
                {
                  // rd.include(request, response); 
                    response.sendRedirect("/JSP/checkOut.jsp");
                }
                }
            }
        } finally {
            out.close();
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
