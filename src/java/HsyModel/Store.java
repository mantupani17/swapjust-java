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
public class Store {
    private    int store_ref_no;
    private String store_code;
    private String store_name;
    private String store_location;
    private String store_tel_no;
    private String product_name;
    private String product_code;
    private    int quantity;
    private String category;
    private String password;

    public Store(String store_code, String store_name, String store_location, String store_tel_no, String product_name, String product_code, int quantity, String category, String password) {
        this.store_code = store_code;
        this.store_name = store_name;
        this.store_location = store_location;
        this.store_tel_no = store_tel_no;
        this.product_name = product_name;
        this.product_code = product_code;
        this.quantity = quantity;
        this.category = category;
        this.password = password;
    }

    public int getStore_ref_no() {
        return store_ref_no;
    }

    public void setStore_ref_no(int store_ref_no) {
        this.store_ref_no = store_ref_no;
    }

    public String getStore_code() {
        return store_code;
    }

    public void setStore_code(String store_code) {
        this.store_code = store_code;
    }

    public String getStore_name() {
        return store_name;
    }

    public void setStore_name(String store_name) {
        this.store_name = store_name;
    }

    public String getStore_location() {
        return store_location;
    }

    public void setStore_location(String store_location) {
        this.store_location = store_location;
    }

    public String getStore_tel_no() {
        return store_tel_no;
    }

    public void setStore_tel_no(String store_tel_no) {
        this.store_tel_no = store_tel_no;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_code() {
        return product_code;
    }

    public void setProduct_code(String product_code) {
        this.product_code = product_code;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    
    
}
