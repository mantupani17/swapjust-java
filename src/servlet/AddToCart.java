/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import HsyModel.CartItemBean;
import HsyModel.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mantu
 */
@WebServlet(name = "AddToCart", urlPatterns = {"/cartservlet"})
public class AddToCart extends HttpServlet {
static CartItemBean cartItemBean ;
ArrayList <CartItemBean> cartItemBeans ;
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
        /*HttpSession session = request.getSession(false);
        PrintWriter out = response.getWriter();
        Product p = (Product)session.getAttribute("ProductToAdd");
        //CartItemBean cartitem = (CartItemBean)cart.get(p.getProduct_code());
        HashMap cart = (HashMap) session.getAttribute("cart");
        if(cart == null)
            cart = new HashMap();
        out.println(p.getProduct_name());*/
        
       HttpSession session = request.getSession(false);
        RequestDispatcher requestDispatcher;
        PrintWriter out = response.getWriter();
       if(session == null)
        {
            requestDispatcher = request.getRequestDispatcher("/ViewAll");
            requestDispatcher.forward(request, response);
        }
        //HashMap cart = (HashMap) session.getAttribute("cart");
        Product p = (Product)session.getAttribute("ProductToAdd");
        int qty = Integer.parseInt(request.getParameter("qty"));
        cartItemBeans = (ArrayList<CartItemBean>)session.getAttribute("cartitem");
        if(cartItemBeans == null)
        {
          cartItemBeans = new ArrayList <CartItemBean>();
          session.setAttribute("cartitem", cartItemBeans);
        }
       // cartItemBean = new CartItemBean(p, qty);
        synchronized(cartItemBeans)
        {
            if(cartItemBean != null)
            {
                cartItemBeans.add(cartItemBean);
            }
            if(cartItemBeans.size() == 0)
            {
                out.print("No items in Cart !!!");
            }
            else
            {
              session.setAttribute("cartitem", cartItemBeans);  
            }
        }
        
        //cartItemBeans.add(cartItemBean);
        
        requestDispatcher = request.getRequestDispatcher("/JSP/viewcart.jsp");
        requestDispatcher.forward(request, response);
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
