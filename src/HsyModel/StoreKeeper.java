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
public class StoreKeeper {
    private String storeName;
    private String area_code;
    private String mob_no;
    private String alt_no;
    private String edate;
    private String city;
    private String street;
    private String country;
    private String district;
    private String state;
    private String email;
    private String password;
    private String own_name;

    public StoreKeeper(String storeName, String area_code, String mob_no, String alt_no, String edate, String city, String street, String country, String district, String state, String email, String password, String own_name) {
        this.storeName = storeName;
        this.area_code = area_code;
        this.mob_no = mob_no;
        this.alt_no = alt_no;
        this.edate = edate;
        this.city = city;
        this.street = street;
        this.country = country;
        this.district = district;
        this.state = state;
        this.email = email;
        this.password = password;
        this.own_name = own_name;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getArea_code() {
        return area_code;
    }

    public void setArea_code(String area_code) {
        this.area_code = area_code;
    }

    public String getMob_no() {
        return mob_no;
    }

    public void setMob_no(String mob_no) {
        this.mob_no = mob_no;
    }

    public String getAlt_no() {
        return alt_no;
    }

    public void setAlt_no(String alt_no) {
        this.alt_no = alt_no;
    }

    public String getEdate() {
        return edate;
    }

    public void setEdate(String edate) {
        this.edate = edate;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getOwn_name() {
        return own_name;
    }

    public void setOwn_name(String own_name) {
        this.own_name = own_name;
    }
    
            
    
}
