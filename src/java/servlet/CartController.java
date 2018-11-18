/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

/**
 *
 * @author mantu
 */
import HsyData.HsyDbAccess;
import HsyModel.CartBean;
//import cart.Cart;
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
public class CartController extends HttpServlet {
private int count = 0;  
 //public static final String addToCart
  
 public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
 String strAction = request.getParameter("action");
 //HttpSession session = request.getSession();
  
  
  if(strAction!=null && !strAction.equals("")) {
   if(strAction.equals("add")) {
    addToCart(request);
   } else if (strAction.equals("Update")) {
    updateCart(request);
   } else if (strAction.equals("Delete")) {
    deleteCart(request);
   }
   }
  response.sendRedirect("index.jsp");
  
 }
  
 protected void deleteCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strItemIndex = request.getParameter("itemIndex");
  CartBean cartBean = null;
  //count = Integer.parseInt(strItemIndex);
  Object objCartBean = session.getAttribute("cart");
  if(objCartBean!=null) {
   cartBean = (CartBean) objCartBean ;
  // count--;
  } else {
   cartBean = new CartBean();
  }
   count--;
   session.setAttribute("count", count);
  cartBean.deleteCartItem(strItemIndex);
 }
  
 protected void updateCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strQuantity = request.getParameter("quantity");
  String strItemIndex = request.getParameter("itemIndex");
  //count = Integer.parseInt(strItemIndex);
  CartBean cartBean = null;
   
  Object objCartBean = session.getAttribute("cart");
  if(objCartBean!=null) {
   cartBean = (CartBean) objCartBean ;
  } else {
   cartBean = new CartBean();
   count = 0;
  }
  cartBean.updateCartItem(strItemIndex, strQuantity);
 }
  
 protected void addToCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String prodId = request.getParameter("pid");
  String prodName = request.getParameter("pname");
  String prodDescription = request.getParameter("description");
  String prodPrice = request.getParameter("price");
  String prodQuantity = request.getParameter("quantity");
  String prodDiscount = request.getParameter("discount");
  String strImg = request.getParameter("img1");
  CartBean cartBean = null;
  //Cart cart = null;
  Object objCartBean = session.getAttribute("cart");
  
  if(objCartBean!=null) {
   cartBean = (CartBean) objCartBean ;
   
  } else {
   cartBean = new CartBean();
   count = 0;
   session.setAttribute("cart", cartBean);
  }
  count++; 
   session.setAttribute("count", count);
  cartBean.addCartItem(prodId, prodDescription, prodPrice, prodQuantity ,prodDiscount,prodName,strImg);
 
 }
 
}

