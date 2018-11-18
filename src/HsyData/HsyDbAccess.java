/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyData;
import HsyModel.Customer;
import HsyModel.Otp;
import HsyModel.Product;
//import cart.Cart;
import db.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.*;
import org.w3c.dom.*;
import java.text.*;
import java.io.*;
/**
 *
 * @author mantu
 */
public class HsyDbAccess implements Serializable{
    public void addProduct(Product p)
    {
        String sql="insert into hsy_product(product_code,product_name,batch_no,quantity,product_for,category,specification,mfd_company,country,type_of_product,veg_or_nonveg,mrp,discount,description,ingredient_used,weight,size,color,flavor,volume,quality,reliability,doe,exd,mfd) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement pst=DBUtils.getPreparedStatement(sql);
            //int x=pst.getUpdateCount();
            //pst.setInt(1, 2);
            pst.setString(1, p.getProduct_code());
            pst.setString(2, p.getProduct_name());
            pst.setString(3, p.getBatch_no());
            pst.setInt(4, p.getQuantity());
            pst.setString(5, p.getProduct_for());
            pst.setString(6, p.getCategory());
            pst.setString(7, p.getSpecification());
            pst.setString(8, p.getManufacturer());
            pst.setString(9, p.getCountry());
            pst.setString(10, p.getType_of_product());
            pst.setString(11, p.getVeg_or_nonveg());
            pst.setFloat(12, p.getMrp());
            pst.setFloat(13, p.getDiscount());
            pst.setString(14, p.getDescription());
            pst.setString(15, p.getIngredient_used());
            pst.setString(16, p.getWeight());
            pst.setString(17, p.getSize());
            pst.setString(18, p.getColor());
            pst.setString(19, p.getFlavor());
            pst.setString(20, p.getVolume());
            pst.setString(21, p.getQuality());
            pst.setString(22, p.getReliability());
            pst.setString(23, p.getDate_of_entry());
            pst.setString(24, p.getExp_date());
            pst.setString(25, p.getMfd_date());
            //pst.setString(23, p.getWeight());
            pst.executeUpdate();
        }catch(Exception e){
           System.out.print(e.toString());
        }
    }
    public static int addCustomer(Customer c){
        String sql="INSERT INTO hsy_customer(cust_name,cust_mob_no,alt_no,street,district,state,area_code,house_no,country,city,land_mark,mail_id,gender,doe,password) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int x = 0;
        try{
            PreparedStatement pst=DBUtils.getPreparedStatement(sql);
            //pst.setString(1, c.getCust_id());
            pst.setString(1, c.getCust_first_name());
            //pst.setString(3, c.getCust_last_name());
            pst.setString(2, c.getCust_mob_no());
            pst.setString(3, c.getTel_no());
            pst.setString(4, c.getAddress());
            pst.setString(5, c.getDistrict());
            pst.setString(6, c.getState());
            pst.setString(7, c.getArea_code());
            pst.setString(8, c.getHouse_no());
            pst.setString(9, c.getCountry());
            pst.setString(10, c.getCity());
            pst.setString(11, c.getLand_mark());
            pst.setString(12, c.getMail_id());
            pst.setString(13, c.getGender());
            pst.setString(14, c.getDoe());
            pst.setString(15, c.getPassword());
            x = pst.executeUpdate();
            
        }catch(Exception e){e.printStackTrace();}
        return x;
    }

    //get customer Data
    public static Customer getCustomer(String cust_id,String password)
    {
        Customer customer = null;
        String sql = null;
        //ResultSet res ;
        try{
            sql = "SELECT * FROM hsy_customer WHERE (mail_id LIKE '"+cust_id+"' OR cust_mob_no LIKE '"+cust_id+"' )AND password LIKE '"+password+"'";
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            if(res.next())
            {
                customer = new Customer(res.getString("cust_name"),
                        res.getString("cust_mob_no"), res.getString("alt_no"), 
                        res.getString("street"), res.getString("district"), 
                        res.getString("state"), res.getString("area_code"), 
                        res.getString("house_no"), res.getString("country"),
                        res.getString("land_mark"),res.getString("city"), 
                        res.getString("mail_id"), res.getString("gender"), 
                        res.getString("doe"), res.getString("password")
                );
            }
        }catch(Exception e){e.printStackTrace();}
        return customer;
    }
    //add otp into the database
    public static void addOtp(Otp o){
        String sql="INSERT INTO hsy_otp values(?,?)";
        try{
            PreparedStatement pst=DBUtils.getPreparedStatement(sql);
            pst.setString(1, o.getMob_no());
            pst.setString(2, o.getOtp());
            pst.executeUpdate();
        }catch(Exception e){
            
        }
    }
    //this method returns the list of products
    public static List<Product> viewCombo(){
        List <Product> list=new LinkedList<Product>();
        try{
            String sql="SELECT product_code,product_name FROM hsy_product";
            ResultSet res=DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next()){
                Product p=new Product(res.getString("product_code"), res.getString("product_name"));
               list.add(p);
            }
        }catch(Exception e){}
        return list;
    } 
    //retrive data like names 
    public static List<Product> viewDataByName(String cname){
        List <Product> list=new LinkedList<Product>();
        try{
            String sql="SELECT * FROM hsy_product WHERE product_name LIKE '"+cname+"'";
            ResultSet res=DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next()){
               Product p=new Product(res.getString("product_code"),res.getString("product_name") , res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"), res.getString("category"), res.getString("specification"), res.getString("mfd_company"), res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
               list.add(p);
            }
        }catch(Exception e){}
        return list;
    } 
    //retrive no of  fields data
    public static ArrayList<Product> viewAll()
    {
        ArrayList<Product> arraylist=new ArrayList<Product>();
        try{
            String sql="SELECT product_code,product_name,quantity,mrp,discount,description FROM hsy_product order by category";
            ResultSet res=DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next()){
                //System.out.println(res.getString("product_code")+" "+res.getString("product_name"));
                Product p=new Product(res.getString("product_code"),res.getString("product_name"),res.getInt("quantity"),res.getFloat("mrp"),res.getFloat("discount"),res.getString("description"));
                arraylist.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return arraylist;
    }
    //view all data 
    public static ArrayList<Product> viewAllItem()
    {
         ArrayList<Product> arraylist=new ArrayList<Product>();
        try{
            String sql="SELECT * FROM hsy_product order by category";
            ResultSet res=DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next()){
                //System.out.println(res.getString("product_code")+" "+res.getString("product_name"));
                Product p=new Product(res.getString("product_code"),res.getString("product_name") , res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"), res.getString("category"), res.getString("specification"), res.getString("mfd_company"), res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
                arraylist.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return arraylist;
    }
    // retrive data like product code
    public static Product viewIndividual(String pid){
        Product p = null;
        try{
            String sql = "SELECT * FROM hsy_product WHERE product_code LIKE '"+pid+"'";
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            if(res.next())
            {
                p = new Product(res.getString("product_code"),res.getString("product_name") , res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"), res.getString("category"), res.getString("specification"), res.getString("mfd_company"), res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
            }
        }catch(Exception e){}
        return p;
    }
    
    //return a String of cartr Items with a particular product
    
    public static Product getItem(String product_code)
    {
      
        Product p = null;
        try{
            String sql = "SELECT product_code,product_name,quantity,mrp,discount FROM hsy_product WHERE product_code LIKE '"+product_code+"'";
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            if(res.next())
            {
                p = new Product(res.getString("product_code"),res.getString("product_name"),res.getInt("quantity"),res.getFloat("mrp"),res.getFloat("discount"),res.getString("description"));
             }
        }catch(Exception e){
            e.printStackTrace();
        }
        return  p;
    }
    
    
    
    //retrive the pin code and check availability
    public static String checkPinCode(String pin)
    {
        String result = "Not possible delivery on this Location";
        try{
            String sql = "SELECT * FROM hsy_area_code WHERE area_code LIKE '"+pin+"'";
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            if(res.next())
            {
                result = "100% delivery available";
                return result;
            }
        }catch(Exception e){}
        return result;
    }
    
    //select product name group by type
    public static ArrayList<String> groupByTypes()
    {
        ArrayList<String> typeList = new ArrayList<String>();
        String sql = "SELECT product_name FROM hsy_product group by product_name";
        try{
            ResultSet result = DBUtils.getPreparedStatement(sql).executeQuery();
            while(result.next())
            {
                typeList.add(result.getString("product_name"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    
    //select product brand names 
    public static ArrayList<String> groupByBrands()
    {
        ArrayList<String> typeList = new ArrayList<String>();
        String sql = "SELECT mfd_company FROM hsy_product group by mfd_company";
        try{
            ResultSet result = DBUtils.getPreparedStatement(sql).executeQuery();
            while(result.next())
            {
                typeList.add(result.getString("mfd_company"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    
    //select product group by color
    public static ArrayList<String> groupByFlavors()
    {
        ArrayList<String> typeList = new ArrayList<String>();
        String sql = "SELECT flavor FROM hsy_product group by flavor";
        try{
            ResultSet result = DBUtils.getPreparedStatement(sql).executeQuery();
            while(result.next())
            {
                typeList.add(result.getString("flavor"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    
    //select product group by Size and weight
    public static ArrayList<String> groupBySizes()
    {
        ArrayList<String> typeList = new ArrayList<String>();
        String sql = "SELECT size FROM hsy_product group by size";
        try{
            ResultSet result = DBUtils.getPreparedStatement(sql).executeQuery();
            while(result.next())
            {
                typeList.add(result.getString("size"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    
    //view all data by their product brand names
    public static ArrayList<Product> viewByBrandNames(String bname)
    {
        ArrayList<Product> typeList = new ArrayList<Product>();
        String sql = "SELECT * FROM hsy_product WHERE mfd_company LIKE '"+bname+"'" ;
        try{
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next())
            {
               Product p = new Product(res.getString("product_code"),res.getString("product_name") , res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"), res.getString("category"), res.getString("specification"), res.getString("mfd_company"), res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
                typeList.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    
    //view all data by their product weigh 
    
    public static ArrayList<Product> viewBySizes(String size)
    {
        ArrayList<Product> typeList = new ArrayList<Product>();
        String sql = "SELECT * FROM hsy_product WHERE size LIKE '"+size+"'" ;
        try{
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next())
            {
               Product p = new Product(res.getString("product_code"),res.getString("product_name") , res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"), res.getString("category"), res.getString("specification"), res.getString("mfd_company"), res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
                typeList.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    
    // view all the product not like a product name
    public static List<Product> viewDataByNotName(String cname){
        List <Product> list=new LinkedList<Product>();
        try{
            String sql="SELECT * FROM hsy_product WHERE product_name NOT LIKE '"+cname+"'";
            ResultSet res=DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next()){
               Product p=new Product(res.getString("product_code"),res.getString("product_name") , res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"), res.getString("category"), res.getString("specification"), res.getString("mfd_company"), res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
               list.add(p);
            }
        }catch(Exception e){}
        return list;
    } 
    
    //view all the product not like a brand name
    public static ArrayList<Product> viewNotLikeBrandNames(String bname)
    {
        ArrayList<Product> typeList = new ArrayList<Product>();
        String sql = "SELECT * FROM hsy_product WHERE mfd_company NOT LIKE '"+bname+"'" ;
        try{
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next())
            {
               Product p = new Product(res.getString("product_code"),res.getString("product_name") ,
                       res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"),
                       res.getString("category"), res.getString("specification"), res.getString("mfd_company"), 
                       res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), 
                       res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), 
                       res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"), 
                       res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),
                       res.getString("doe"),res.getString("exd"), res.getString("mfd"),
                       res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
                typeList.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    //view all the product not like a sizes 
     public static ArrayList<Product> viewNotLikeSize(String size)
    {
        ArrayList<Product> typeList = new ArrayList<Product>();
        String sql = "SELECT * FROM hsy_product WHERE size NOT LIKE '"+size+"'" ;
        try{
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next())
            {
               Product p = new Product(res.getString("product_code"),res.getString("product_name") ,
                       res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"),
                       res.getString("category"), res.getString("specification"), res.getString("mfd_company"), 
                       res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"),
                       res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"),
                       res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"), 
                       res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),
                       res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
                typeList.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
     // view all the product by their flavor 
     public static ArrayList<Product> viewProductLikeFlavor(String flavor)
    {
        ArrayList<Product> typeList = new ArrayList<Product>();
        String sql = "SELECT * FROM hsy_product WHERE flavor  LIKE '"+flavor+"'" ;
        try{
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next())
            {
               Product p = new Product(res.getString("product_code"),res.getString("product_name") ,
                       res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"),
                       res.getString("category"), res.getString("specification"), res.getString("mfd_company"), 
                       res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), 
                       res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), 
                       res.getString("weight"), res.getString("size"), res.getString("color"), res.getString("ingredient_used"),
                       res.getString("volume"), res.getString("flavor"),res.getString("quality"),res.getString("reliability"),
                       res.getString("doe"),res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),
                       res.getString("need"),res.getString("return_type"));
                typeList.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
     //view all the product not like flavor
      public static ArrayList<Product> viewProductNotLikeFlavor(String flavor)
    {
        ArrayList<Product> typeList = new ArrayList<Product>();
        String sql = "SELECT * FROM hsy_product WHERE flavor NOT LIKE '"+flavor+"'" ;
        try{
            ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
            while(res.next())
            {
               Product p = new Product(res.getString("product_code"),res.getString("product_name") , 
                       res.getString("batch_no"), res.getInt("quantity"), res.getString("product_for"), 
                       res.getString("category"), res.getString("specification"), res.getString("mfd_company"),
                       res.getString("country"),res.getString("type_of_product"), res.getString("veg_or_nonveg"), 
                       res.getFloat("mrp"),res.getFloat("discount"), res.getString("description"), res.getString("weight"),
                       res.getString("size"), res.getString("color"), res.getString("ingredient_used"), res.getString("volume"),
                       res.getString("flavor"),res.getString("quality"),res.getString("reliability"),res.getString("doe"),
                       res.getString("exd"), res.getString("mfd"),res.getString("shop_name"),res.getString("need"),res.getString("return_type"));
                typeList.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return typeList; 
    }
    //view all the products within a price range
      
      
 /*public static void main(String[] args) {
       ArrayList<Product> products = viewByBrandNames("SIXPACK");
       for(Product pro: products)
        {
            System.out.println(pro.getProduct_name()+" "+pro.getProduct_code());
        }
    }*/
      
      //cart
      //******** cart ********//
      //add data to cart
      /*public static void addToCart(Cart cart)
      {
          try{
              String sql = "INSERT INTO hsy_cart(cust_id,prod_id,quantity,discount,doe) values(?,?,?,?,?)";
              PreparedStatement pst = DBUtils.getPreparedStatement(sql);
              java.sql.Date d = new java.sql.Date(new java.util.Date().getTime());
              pst.setString(1, cart.getCust_id());
              pst.setString(2, cart.getProd_id());
              pst.setInt(3, cart.getQuantity());
              pst.setDouble(4, cart.getDiscount());
              pst.setDate(5, d);
              pst.executeUpdate();
          }catch(Exception e){
              e.printStackTrace();
          }
      }
      
      //remove from cart
      public static void removeFromCart(int cart_id)
      {
          try{
              String sql = "DELETE FROM hsy_cart WHERE cart_id = ?";
              PreparedStatement pst = DBUtils.getPreparedStatement(sql);
              pst.setInt(1, cart_id);
              pst.executeUpdate();
          }catch(Exception e){
              e.printStackTrace();
          }
      }
      //view cart items 
      public static ArrayList<Cart> viewCartItems(String cust_id)
      {
          ArrayList<Cart> cartItems = new ArrayList<Cart>();
          try{
              String sql = "SELECT * FROM hsy_cart WHERE cust_id = '"+cust_id+"'";
              ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
              while(res.next())
              {
                  cartItems.add(new Cart(res.getInt("cart_id"), res.getString("prod_id"), res.getInt("quantity"), res.getDouble("discount")));
              }
          }catch(Exception e){}
          return cartItems;
      }
      /*public static void main(String[] args) {
          addToCart(new Cart("7873160006","BFMG1",1,33));
    }*/
      //insert images into database
      /*public static String insertImages(ArrayList<String> list,String prod_id)
      {
          try{
              String sql = "INSERT INTO hsy_images (product_code,image_1,image_2,image_3,image_4) VALUES(?,?,?,?,?)";
              PreparedStatement pst = DBUtils.getPreparedStatement(sql);
              pst.setString(1, prod_id);
              pst.setString(2, list.get(0));
              pst.setString(3, list.get(1));
              pst.setString(4, list.get(2));
              pst.setString(5, list.get(3));
              int x = pst.executeUpdate();
              if(x>0)
              {
                  return "Inserted";
              }
              
          }catch(Exception e){
              e.printStackTrace();
          }
          return "unsuccess";
      }*/
      //get images from database
      public static ArrayList<String> getImages(String prod_id)
      {
          ArrayList<String> listOfImages = new ArrayList<String>();
          try{
              int i =0 ;
              String sql = "select * from offer_images where product_code LIKE '"+prod_id+"'";
              ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
              while(res.next())
              {
                listOfImages.add(i++, res.getString("image"));
                /*listOfImages.add(1, res.getString("image_2"));
                listOfImages.add(2, res.getString("image_3"));
                listOfImages.add(3, res.getString("image_4"));*/
              }
          }catch(Exception e){
              e.printStackTrace();
          }
          return listOfImages;
      }
      //retrive single image
      public static String getImage(String prod_id)
      {
          String img = null;
          try{
              String sql = "select image from offer_images where product_code LIKE '"+prod_id+"'";
              ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
              if(res.last())
              {
                  img = res.getString("image");
              }
          }catch(Exception e){
              e.printStackTrace();
          }
          return img;
      }
      
      //public static ArrayList<>
       /*public static void main(String[] args) {
         //ArrayList<String> lists = new ArrayList<String>();
         String lists = getImage("BFMG1");
        //System.out.println(insertImages(lists, "PRO12"));
        /*System.out.println(lists.get(0));
         System.out.println(lists.get(1));
         System.out.println(lists.get(2));
         System.out.println(lists.get(3));
        for(String imge : lists)
         {
             System.out.print(imge);
         }
        System.out.println(lists);
    }*/
}
