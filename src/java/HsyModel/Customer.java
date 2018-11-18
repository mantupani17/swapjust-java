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
public class Customer {
   private    int ref_id;
   private String cust_first_name;
   private String cust_mob_no;
   private String address;
   private String district;
   private String state;
   private String area_code;
   private String house_no;
   private String country;
   private String mail_id;
   private String gender;
   private String doe;
   private String password;
   private String tel_no;
   private String city;
   private String land_mark;

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getLand_mark() {
        return land_mark;
    }

    public void setLand_mark(String land_mark) {
        this.land_mark = land_mark;
    }
    
    public Customer( String cust_name, String cust_mob_no,String tel_no, String address, String district, String state, String area_code, String house_no, String country,String city,String lmark, String mail_id, String gender, String doe, String password) {
        //this.cust_id = cust_id;
        this.cust_first_name = cust_name;
        //this.cust_last_name = cust_last_name;
        this.cust_mob_no = cust_mob_no;
        this.address = address;
        this.district = district;
        this.state = state;
        this.area_code = area_code;
        this.house_no = house_no;
        this.country = country;
        this.mail_id = mail_id;
        this.gender = gender;
        this.doe = doe;
        this.password = password;
        this.tel_no = tel_no;
        this.city = city;
        this.land_mark = lmark;
    }

    public String getTel_no() {
        return tel_no;
    }

    public void setTel_no(String tel_no) {
        this.tel_no = tel_no;
    }

    public int getRef_id() {
        return ref_id;
    }

    public void setRef_id(int ref_id) {
        this.ref_id = ref_id;
    }

    /*public String getCust_id() {
        return cust_id;
    }

    public void setCust_id(String cust_id) {
        this.cust_id = cust_id;
    }*/

    public String getCust_first_name() {
        return cust_first_name;
    }

    public void setCust_first_name(String cust_first_name) {
        this.cust_first_name = cust_first_name;
    }

    /*public String getCust_last_name() {
        return cust_last_name;
    }

    public void setCust_last_name(String cust_last_name) {
        this.cust_last_name = cust_last_name;
    }*/

    public String getCust_mob_no() {
        return cust_mob_no;
    }

    public void setCust_mob_no(String cust_mob_no) {
        this.cust_mob_no = cust_mob_no;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getArea_code() {
        return area_code;
    }

    public void setArea_code(String area_code) {
        this.area_code = area_code;
    }

    public String getHouse_no() {
        return house_no;
    }

    public void setHouse_no(String house_no) {
        this.house_no = house_no;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getMail_id() {
        return mail_id;
    }

    public void setMail_id(String mail_id) {
        this.mail_id = mail_id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDoe() {
        return doe;
    }

    public void setDoe(String doe) {
        this.doe = doe;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
   
}
