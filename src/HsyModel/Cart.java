/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyModel;

import java.util.Date;

/**
 *
 * @author Handshakeyou
 */
public class Cart {
    private String cust_id ;
    private String prod_id;
    private int quantity;
    private double discount;
    private double total;
    private double mrp;

    public double getMrp() {
        return mrp;
    }

    public Cart(String cust_id, String prod_id, int quantity,double discount,double mrp) {
        this.cust_id = cust_id;
        this.prod_id = prod_id;
        this.quantity = quantity;
        this.discount = discount;
        this.mrp = mrp;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public double getTotal()
    {
        double total;
        double drate = getDiscount();
        total = getQuantity()*(getMrp()*(100/drate));
        return total;
    }
    public static void main(String[] args) {
        Date d = new Date();
        System.out.println(d.toString());
    }
}
