/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyModel;

import org.w3c.dom.*;
import java.util.*;
import java.io.*;
import java.text.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

/**
 *
 * @author mantu
 */
public class Product implements Serializable{
    private int ref_id;
    private String product_code;
    private String batch_no;
    private String product_name;
    private int quantity;
    private String product_for;
    private String category;
    private String specification;
    private String manufacturer;
    private String country;
    private String type_of_product;
    private String veg_or_nonveg;
    private float mrp;
    private float discount;
    private String description;
    private String weight;
    private String size;
    private String color;
    private String ingredient_used;
    private String volume;
    private String flavor;
    private String quality;
    private String reliability;
    private String date_of_entry;
    private String exp_date;
    private String mfd_date;
    private String res;
    private float hour;
    private String product_code2;
    private String off_code;
    private String offer_name;
    private String shop_name;
    private String return_type;
    private String why_need;
    //private String img;
    //private String auth = "no";

    public String getShop_name() {
        return shop_name;
    }

    public void setShop_name(String shop_name) {
        this.shop_name = shop_name;
    }

    public String getReturn_type() {
        return return_type;
    }

    public void setReturn_type(String return_type) {
        this.return_type = return_type;
    }

    public String getWhy_need() {
        return why_need;
    }

    public void setWhy_need(String why_need) {
        this.why_need = why_need;
    }

    public Product(String product_code,  String product_name, String batch_no, 
            int quantity, String product_for, String category, String specification, 
            String manufacturer, String country,String type_of_product, String veg_or_nonveg, 
            float mrp, float discount, String description, String weight, String size, 
            String color, String ingredient_used, String volume, String flavor, String quality, 
            String reliability, String date_of_entry, String exp_date, String mfd_date,
            String shop_name,String why_need,String return_type) {
        this.product_code = product_code;
        this.batch_no = batch_no;
        this.product_name = product_name;
        this.quantity = quantity;
        this.product_for = product_for;
        this.category = category;
        this.specification = specification;
        this.manufacturer = manufacturer;
        this.type_of_product = type_of_product;
        this.veg_or_nonveg = veg_or_nonveg;
        this.mrp = mrp;
        this.discount = discount;
        this.description = description;
        this.weight = weight;
        this.size = size;
        this.color = color;
        this.ingredient_used = ingredient_used;
        this.volume = volume;
        this.flavor = flavor;
        this.quality = quality;
        this.reliability = reliability;
        this.date_of_entry = date_of_entry;
        this.exp_date = exp_date;
        this.mfd_date = mfd_date;
        this.country=country;
        this.shop_name = shop_name;
        this.why_need = why_need;
        this.return_type = return_type;
        
        //this.img = imgpath;
    }
// this construtor is used for buy one get one product
    public Product(String product_code, String offer_name,int quantity, float mrp, String date_of_entry, String res, float hour, String product_code2,String off_code) {
        this.product_code = product_code;
        this.quantity = quantity;
        this.mrp = mrp;
        this.date_of_entry = date_of_entry;
        this.res = res;
        this.hour = hour;
        this.product_code2 = product_code2;
        this.off_code=off_code;
        this.offer_name = offer_name;
    }

    public String getOffer_name() {
        return offer_name;
    }

    public void setOffer_name(String offer_name) {
        this.offer_name = offer_name;
    }

    public String getOff_code() {
        return off_code;
    }

    public void setOff_code(String off_code) {
        this.off_code = off_code;
    }

    public String getProduct_code2() {
        return product_code2;
    }

    public void setProduct_code2(String product_code2) {
        this.product_code2 = product_code2;
    }

    public float getHour() {
        return hour;
    }

    public void setHour(float hour) {
        this.hour = hour;
    }
//this constructor for offer 
    public Product(String product_code, int quantity, float discount, String date_of_entry, String res, float hour) {
        this.product_code = product_code;
        this.quantity = quantity;
        this.discount = discount;
        this.date_of_entry = date_of_entry;
        this.res = res;
        this.hour = hour;
    }

    public String getRes() {
        return res;
    }

    public void setRes(String res) {
        this.res = res;
    }
//this constructor for sales
    public Product(String product_code, int quantity, float mrp, float discount,String date_of_entry,String res) {
        this.product_code = product_code;
        this.quantity = quantity;
        this.mrp = mrp;
        this.discount = discount;
        this.date_of_entry = date_of_entry;
        this.res = res;
    }

    public Product(String product_code,String product_name){
        this.product_code = product_code;
        this.product_name = product_name;
    }

    public Product(String product_code, String product_name, int quantity, float mrp, float discount) {
        this.product_code = product_code;
        this.product_name = product_name;
        this.quantity = quantity;
        this.mrp = mrp;
        this.discount = discount;
    }

    public Product(String product_code, String product_name, int quantity, float mrp, float discount,String description) {
        this.product_code = product_code;
        this.product_name = product_name;
        this.quantity = quantity;
        this.mrp = mrp;
        this.discount = discount;
        this.description = description;
    }
    
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getRef_id() {
        return ref_id;
    }

    public void setRef_id(int ref_id) {
        this.ref_id = ref_id;
    }

    public String getProduct_code() {
        return product_code;
    }

    public void setProduct_code(String product_code) {
        this.product_code = product_code;
    }

    public String getBatch_no() {
        return batch_no;
    }

    public void setBatch_no(String batch_no) {
        this.batch_no = batch_no;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getProduct_for() {
        return product_for;
    }

    public void setProduct_for(String product_for) {
        this.product_for = product_for;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getType_of_product() {
        return type_of_product;
    }

    public void setType_of_product(String type_of_product) {
        this.type_of_product = type_of_product;
    }

    public String getVeg_or_nonveg() {
        return veg_or_nonveg;
    }

    public void setVeg_or_nonveg(String veg_or_nonveg) {
        this.veg_or_nonveg = veg_or_nonveg;
    }

    public float getMrp() {
        return mrp;
    }

    public void setMrp(float mrp) {
        this.mrp = mrp;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getIngredient_used() {
        return ingredient_used;
    }

    public void setIngredient_used(String ingredient_used) {
        this.ingredient_used = ingredient_used;
    }

    public String getVolume() {
        return volume;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    public String getFlavor() {
        return flavor;
    }

    public void setFlavor(String flavor) {
        this.flavor = flavor;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getReliability() {
        return reliability;
    }

    public void setReliability(String reliability) {
        this.reliability = reliability;
    }

    public String getDate_of_entry() {
        return date_of_entry;
    }

    public void setDate_of_entry(String date_of_entry) {
        this.date_of_entry = date_of_entry;
    }

    public String getExp_date() {
        return exp_date;
    }

    public void setExp_date(String exp_date) {
        this.exp_date = exp_date;
    }

    public String getMfd_date() {
        return mfd_date;
    }

    public void setMfd_date(String mfd_date) {
        this.mfd_date = mfd_date;
    }
    
   /* public  Element getXmlData(Document document)
    {
         Element product=null;
        try{
            
        
        product = document.createElement("product");
        
        Element temp=document.createElement("product_code");
        temp.appendChild(document.createTextNode(getProduct_code()));
        product.appendChild(temp);
        
        temp=document.createElement("product_name");
        temp.appendChild(document.createTextNode(getProduct_name()));
        product.appendChild(temp);
        
        //NumberFormat pformart = NumberFormat.getCurrencyInstance(Locale.US);
        
        temp=document.createElement("Quantity");
        temp.appendChild(document.createTextNode(String.valueOf(getQuantity())));
        product.appendChild(temp);
        
        temp=document.createElement("mrp");
        temp.appendChild(document.createTextNode(String.valueOf(getMrp())));
        product.appendChild(temp);
        
        temp=document.createElement("discount");
        temp.appendChild(document.createTextNode(String.valueOf(getDiscount())));
        product.appendChild(temp);
        }catch(Exception e){
        e.printStackTrace();
        }
        
        return product;
    }*/
    
    
    
    
    
    
    /*public static void main(String[] args) throws ParserConfigurationException {
        Product p=new Product("p123", "mantu", 20, 100, 30);
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder=factory.newDocumentBuilder();
            Document doc = builder.newDocument();
            Element productElement = p.getXmlData(doc);
            doc.appendChild(productElement);
            System.out.println(productElement.getElementsByTagName("product_name"));
    }*/
    
}
