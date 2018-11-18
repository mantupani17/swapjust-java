/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyModel;

import java.util.ArrayList;

/**
 *
 * @author mantu
 */
public class CartItemBean {
    private String product_code;
    private String product_name;
    private String description;
    private double mrp;
    private int quantity;
    private double discount; 
    private int srno;
    private double totalCost;
    private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public CartItemBean(){}

    public String getProduct_code() {
        return product_code;
    }

    public void setProduct_code(String product_code) {
        this.product_code = product_code;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getMrp() {
        return mrp;
    }

    public void setMrp(double mrp) {
        this.mrp = mrp;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getSrno() {
        return srno;
    }

    public void setSrno(int srno) {
        this.srno = srno;
    }

   
    public double getTotalCost() {
        double dis = getDiscount();
        double rate = (getMrp()*(dis/100))*getQuantity();
        return totalCost-rate;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
}
