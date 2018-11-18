/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyModel;

/**
 *
 * @author mantu
 */
import java.util.ArrayList;
 
 
public class CartBean {
 private ArrayList alCartItems = new ArrayList();
 private double dblOrderTotal ;
 //private int count=0; 
 public int getLineItemCount() {
  return alCartItems.size();
 }
  
 public void deleteCartItem(String strItemIndex) {
  int iItemIndex = 0;
  try {
   iItemIndex = Integer.parseInt(strItemIndex);
   alCartItems.remove(iItemIndex - 1);
   //count--;
   calculateOrderTotal();
  } catch(NumberFormatException nfe) {
   System.out.println("Error while deleting cart item: "+nfe.getMessage());
   nfe.printStackTrace();
  }
 }
  
 public void updateCartItem(String strItemIndex, String strQuantity) {
  double dblTotalCost = 0.0;
  double dblUnitCost = 0.0;
  int iQuantity = 0;
  int iItemIndex = 0;
  CartItemBean cartItem = null;
  try {
   iItemIndex = Integer.parseInt(strItemIndex);
   iQuantity = Integer.parseInt(strQuantity);
   if(iQuantity>0) {
    cartItem = (CartItemBean)alCartItems.get(iItemIndex-1);
    dblUnitCost = cartItem.getMrp();
    dblTotalCost = dblUnitCost*iQuantity;
    cartItem.setQuantity(iQuantity);
    cartItem.setTotalCost(dblTotalCost);
    calculateOrderTotal();
   }
  } catch (NumberFormatException nfe) {
   System.out.println("Error while updating cart: "+nfe.getMessage());
   nfe.printStackTrace();
  }
   
 }
  
 public void addCartItem(String strProductCode, String strDescription,String strUnitCost, String strQuantity,String strDiscount,String strName,String strImg) {
  double dblTotalCost = 0.0;
  double dblUnitCost = 0.0;
  int iQuantity = 0;
  CartItemBean cartItem = new CartItemBean();
  try {
   dblUnitCost = Double.parseDouble(strUnitCost);
   iQuantity = Integer.parseInt(strQuantity);
   if(iQuantity>0) {
    dblTotalCost = dblUnitCost*iQuantity;
    cartItem.setProduct_code(strProductCode);
    cartItem.setDescription(strDescription);
    cartItem.setMrp(dblUnitCost);
    cartItem.setQuantity(iQuantity);
    cartItem.setDiscount(Double.parseDouble(strDiscount));
    cartItem.setProduct_name(strName);
    cartItem.setTotalCost(dblTotalCost);
    cartItem.setImg(strImg);
    alCartItems.add(cartItem);
    //count++;
    calculateOrderTotal();
   }
    
  } catch (NumberFormatException nfe) {
   System.out.println("Error while parsing from String to primitive types: "+nfe.getMessage());
   nfe.printStackTrace();
  }
 }
  
 public void addCartItem(CartItemBean cartItem) {
  alCartItems.add(cartItem);
 }
  
 public CartItemBean getCartItem(int iItemIndex) {
  CartItemBean cartItem = null;
  if(alCartItems.size()>iItemIndex) {
   cartItem = (CartItemBean) alCartItems.get(iItemIndex);
  }
  return cartItem;
 }
  
 public ArrayList getCartItems() {
  return alCartItems;
 }
 public void setCartItems(ArrayList alCartItems) {
  this.alCartItems = alCartItems;
 }
 public double getOrderTotal() {
  return dblOrderTotal;
 }
 public void setOrderTotal(double dblOrderTotal) {
  this.dblOrderTotal = dblOrderTotal;
 }
  
 protected void calculateOrderTotal() {
  double dblTotal = 0;
  double dis = 0;
  for(int counter=0;counter<alCartItems.size();counter++) {
   CartItemBean cartItem = (CartItemBean) alCartItems.get(counter);
   dis = cartItem.getDiscount();
   dblTotal+=cartItem.getTotalCost();
 }
  setOrderTotal(dblTotal);
 }
 
}
