/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swapjust.special.processorder;

/**
 *
 * @author Handshakeyou
 */
public class Order {
    private String order_id;
    private String cust_id;
    private String prod_id;
    private float mrp;
    private int quantity; 
    private String ord_date;

    public Order(String cust_id, String prod_id, float mrp,int quantity,String ord_date) {
       this.cust_id = cust_id;
        this.prod_id = prod_id;
        this.mrp = mrp;
        this.quantity = quantity;
        this.ord_date = ord_date;
    }

    public String getOrd_date() {
        return ord_date;
    }

    public void setOrd_date(String ord_date) {
        this.ord_date = ord_date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getCust_id() {
        return cust_id;
    }

    public void setCust_id(String cust_id) {
        this.cust_id = cust_id;
    }

    public String getProd_id() {
        return prod_id;
    }

    public void setProd_id(String prod_id) {
        this.prod_id = prod_id;
    }

    public float getMrp() {
        return mrp;
    }

    public void setMrp(float mrp) {
        this.mrp = mrp;
    }
    
    
}
