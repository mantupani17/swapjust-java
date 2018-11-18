/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyModel;

/**
 *
 * @author Handshakeyou
 */
public class Offer {
    private String product1;
    private String product2;
    private String product3;
    private String product4;
    private String product5;
    private String product6; 
    private String product7;
    private String product8;
    private String product9;
    private String product10;
    private String product11;
    private String product12;
    private String product13;
    private String product14;
    private String combo_id;
    private String status;
    private String edate;
    private String combo_return_option;
    private float hour;
    private int quantity;
    private float price;
    private String combo_name;
    //private String imgpath;
    public Offer(String product1, String product2, String product3, String product4, String product5, String product6, String product7, String product8, String product9, String product10, String product11, String product12, String product13, String product14, String combo_id, String status, String edate, String combo_return_option, float hour, int quantity, float price,String combo_name) {
        this.product1 = product1;
        this.product2 = product2;
        this.product3 = product3;
        this.product4 = product4;
        this.product5 = product5;
        this.product6 = product6;
        this.product7 = product7;
        this.product8 = product8;
        this.product9 = product9;
        this.product10 = product10;
        this.product11 = product11;
        this.product12 = product12;
        this.product13 = product13;
        this.product14 = product14;
        this.combo_id = combo_id;
        this.status = status;
        this.edate = edate;
        this.combo_return_option = combo_return_option;
        this.hour = hour;
        this.quantity = quantity;
        this.price = price;
        this.combo_name = combo_name;
    }

    public Offer(String combo_id, String combo_return_option, float hour, int quantity, float price, String combo_name) {
        this.combo_id = combo_id;
        this.combo_return_option = combo_return_option;
        this.hour = hour;
        this.quantity = quantity;
        this.price = price;
        this.combo_name = combo_name;
    }
    
    public String getCombo_name() {
        return combo_name;
    }

    public void setCombo_name(String combo_name) {
        this.combo_name = combo_name;
    }

    public String getProduct1() {
        return product1;
    }

    public void setProduct1(String product1) {
        this.product1 = product1;
    }

    public String getProduct2() {
        return product2;
    }

    public void setProduct2(String product2) {
        this.product2 = product2;
    }

    public String getProduct3() {
        return product3;
    }

    public void setProduct3(String product3) {
        this.product3 = product3;
    }

    public String getProduct4() {
        return product4;
    }

    public void setProduct4(String product4) {
        this.product4 = product4;
    }

    public String getProduct5() {
        return product5;
    }

    public void setProduct5(String product5) {
        this.product5 = product5;
    }

    public String getProduct6() {
        return product6;
    }

    public void setProduct6(String product6) {
        this.product6 = product6;
    }

    public String getProduct7() {
        return product7;
    }

    public void setProduct7(String product7) {
        this.product7 = product7;
    }

    public String getProduct8() {
        return product8;
    }

    public void setProduct8(String product8) {
        this.product8 = product8;
    }

    public String getProduct9() {
        return product9;
    }

    public void setProduct9(String product9) {
        this.product9 = product9;
    }

    public String getProduct10() {
        return product10;
    }

    public void setProduct10(String product10) {
        this.product10 = product10;
    }

    public String getProduct11() {
        return product11;
    }

    public void setProduct11(String product11) {
        this.product11 = product11;
    }

    public String getProduct12() {
        return product12;
    }

    public void setProduct12(String product12) {
        this.product12 = product12;
    }

    public String getProduct13() {
        return product13;
    }

    public void setProduct13(String product13) {
        this.product13 = product13;
    }

    public String getProduct14() {
        return product14;
    }

    public void setProduct14(String product14) {
        this.product14 = product14;
    }

    public String getCombo_id() {
        return combo_id;
    }

    public void setCombo_id(String combo_id) {
        this.combo_id = combo_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getEdate() {
        return edate;
    }

    public void setEdate(String edate) {
        this.edate = edate;
    }

    public String getCombo_return_option() {
        return combo_return_option;
    }

    public void setCombo_return_option(String combo_return_option) {
        this.combo_return_option = combo_return_option;
    }

    public float getHour() {
        return hour;
    }

    public void setHour(float hour) {
        this.hour = hour;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
}
