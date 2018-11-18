/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyData;

import HsyModel.Offer;
import HsyModel.Product;
import HsyModel.StoreKeeper;
import db.DBUtils;
//import hsy.date.DateBean;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import swapjust.special.processorder.Order;

/**
 *
 * @author mantu
 */
public class Admin_Data {
    //insert data into sales table
private ArrayList<Product> products ;
public static void salesEntry(Product p)
{
    //String res = "unsucess";
    //String grant = "no";
  String sql = "insert into hsy_sales(product_code,quantity,mrp,discount,edate,status) values (?,?,?,?,?,?)";  
  try{
      PreparedStatement pst= DBUtils.getPreparedStatement(sql);
      pst.setString(1, p.getProduct_code());
      pst.setInt(2, p.getQuantity());
      pst.setFloat(3, p.getMrp());
      pst.setFloat(4, p.getDiscount());
      pst.setString(6, p.getRes());
      pst.setString(5, p.getDate_of_entry());
      pst.executeUpdate();
      
}catch(Exception e){
   //e.printStackTrace();
    System.out.println(e.toString());
}
 
//return res;  
} 
//return sales list which are not added to the site
 public static ArrayList<Product> viewSalesEntryData()
  {
      //String re = "no";
      ArrayList<Product> salesList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_sales ";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
              p = new Product(res.getString("product_code"), res.getInt("quantity"), res.getFloat("mrp"), res.getFloat("discount"), res.getTimestamp("edate").toString(), res.getString("status"));
              salesList.add(p);
              //System.out.println(res.getString("product_code"));
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return salesList;
  }
 //get only product name
 public static String getProductName( String pid)
 {
     String pname = null;
     String sql = "select product_name from hsy_product where product_code like '"+pid+"'";
     try{
         ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
         if(res.next())
         {
             pname = res.getString("product_name");
         }
     }catch(Exception e)
     {
         e.printStackTrace();
     }
     return pname;
 }
 
 //this method is used for update the status of the product in sales entry
 public static int updateStatus(String pid)
 {
     String sql = "update hsy_sales set status = ? where product_code LIKE '"+pid+"'";
     int x = 0;
     try{
         PreparedStatement pst = DBUtils.getPreparedStatement(sql);
         pst.setString(1, "yes");
          x = pst.executeUpdate();
         //return x;
     }catch(Exception e){
         e.printStackTrace();
     }
     return x;
 }
 // view all non approval sales
 public static ArrayList<Product> viewNoNSalesEntryData()
  {
      //String re = "no";
      ArrayList<Product> salesList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_sales WHERE status LIKE 'no' ";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
              p = new Product(res.getString("product_code"), res.getInt("quantity"), res.getFloat("mrp"), res.getFloat("discount"), res.getDate("edate").toString(), res.getString("status"));
              salesList.add(p);
              //System.out.println(res.getString("product_code"));
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return salesList;
  }
//view a single product information
  public static Product getSingleSalesData(String pid)
  {
      Product product = null;
      String sql = "select * from hsy_sales where product_code LIKE '"+pid+"'";
      try
      {
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          if(res.next())
          {
           product = new Product(res.getString("product_code"), res.getInt("quantity"), res.getFloat("mrp"), res.getFloat("discount"), res.getDate("edate").toString(), res.getString("status"));    
          }
      }catch(Exception e){
         System.out.println(e.toString());  
      }
      return product;
  }
 //view all the approval data
  public static ArrayList<Product> viewSalesData()
  {
      //String re = "no";
      ArrayList<Product> salesList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_sales WHERE status LIKE 'yes' ";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
              p = new Product(res.getString("product_code"), res.getInt("quantity"), res.getFloat("mrp"), res.getFloat("discount"), res.getDate("edate").toString(), res.getString("status"));
              salesList.add(p);
              System.out.println(res.getString("product_code"));
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return salesList;
  }
  //this method is used to insert offer in offer tab
  public static int insertOffer(Product p)
  {
      String sql = "INSERT INTO hsy_offer(product_code,quantity,discount,edate,hour,status) VALUES(?,?,?,?,?,?);";
      int x = 0;
      try{
          
          PreparedStatement pst = DBUtils.getPreparedStatement(sql);
          pst.setString(1, p.getProduct_code());
          //pst.setString(2, p.getOffer_name());
          pst.setInt(2, p.getQuantity());
          pst.setFloat(3, p.getDiscount());
          pst.setString(4, p.getDate_of_entry());
          pst.setFloat(5, p.getHour());
          pst.setString(6, p.getRes());
          x = pst.executeUpdate();
      }catch(Exception e){
      System.out.println(e.toString());
      }
      return x;
  }
  //view a single product information
  public static Product getSingleOffer(String pid)
  {
      Product product = null;
      String sql = "select * from hsy_offer where product_code LIKE '"+pid+"'";
      try
      {
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          if(res.next())
          {
           product = new Product(res.getString("product_code"), res.getInt("quantity"), res.getFloat("discount"), res.getTimestamp("edate").toString(), res.getString("status"), res.getFloat("hour"));    
          }
      }catch(Exception e){
         System.out.println(e.toString());  
      }
      return product;
  }
  // view all offer data
  public static ArrayList<Product> getOfferData()
  {
      ArrayList<Product> offerList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_offer";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
          p = new Product(res.getString("product_code"), res.getInt("quantity"), res.getFloat("discount"), res.getTimestamp("edate").toString(), res.getString("status"), res.getFloat("hour"));
          offerList.add(p);
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return offerList;
  }
  
  //this method is used to get the MRP
  public static float getProductMrp(String pcode)
  {
      float mrp = 0;
      String sql = "SELECT mrp FROM hsy_product WHERE product_code LIKE '"+pcode+"'";
      try{
      ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
      if(res.next())
      {
          mrp = res.getFloat("mrp");
      }
      }catch(Exception e){
          
      }
      return mrp;
  }
  //this method is used to view all offer data
  public static ArrayList<Product> getAprovOfferData()
  {
      ArrayList<Product> offerList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_offer WHERE status LIKE 'yes'";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
          p = new Product(res.getString("product_code"), res.getInt("quantity"), res.getFloat("discount"), res.getTimestamp("edate").toString(), res.getString("status"), res.getFloat("hour"));
          offerList.add(p);
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return offerList;
  }
  //this method is used to update status of the offer
  public static int updateOfferStatus(String pid)
 {
     String sql = "update hsy_offer set status = ? where product_code LIKE '"+pid+"'";
     int x = 0;
     try{
         PreparedStatement pst = DBUtils.getPreparedStatement(sql);
         pst.setString(1, "yes");
          x = pst.executeUpdate();
         //return x;
     }catch(Exception e){
         e.printStackTrace();
     }
     return x;
 }
  //updates the sales table quantity
  public static void updateSalesQuantity(String pid,int q)
  {
  String sql = "update hsy_sales set quantity = quantity - ? where product_code = '"+pid+"'";    
  try{
      int squantity = getSalesProductQuantity(pid);
      //System.out.println(squantity);
      if(squantity > q)
      {
      PreparedStatement pst = DBUtils.getPreparedStatement(sql);
      pst.setInt(1, q);
      int x = pst.executeUpdate();
      if(x>0)
      {
          System.out.println("Updated");
      }
      }
      else
              {
                  System.out.println("the data having unsuficient amount of quantity");
              }
  }catch(Exception e){
      System.out.println(e.toString());
  }
  }
  //this method is used to get the sales product quantity
  public static int getSalesProductQuantity(String pcode)
  {
      int quantity = 0;
      try{
          String sql = "SELECT quantity FROM hsy_sales WHERE product_code LIKE '"+pcode+"'";
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          if(res.next())
          {
              quantity = res.getInt("quantity");
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return quantity;
  }
      
  
  //add data to buy one get one table
  public static int  addBuyOneGetOneProduct(Product p)
  {
      String sql = "INSERT INTO hsy_buy_one(offer_code,offer_name,first_product_code,second_product_code,price,quantity,edate,hour,status) VALUES(?,?,?,?,?,?,?,?,?) ";
      int res = 0;
      try{
          PreparedStatement pst = DBUtils.getPreparedStatement(sql);
          pst.setString(1, p.getOff_code());
          pst.setString(2,p.getOffer_name());
          pst.setString(3, p.getProduct_code());
          pst.setString(4, p.getProduct_code2());
          pst.setFloat(5, p.getMrp());
          pst.setInt(6, p.getQuantity());
          pst.setString(7, p.getDate_of_entry());
          pst.setFloat(8, p.getHour());
          pst.setString(9, p.getRes());
          res = pst.executeUpdate();
      }catch(Exception e){
          System.out.print(e.toString());
      }
      return res;
  }
  //view all the buy one get one offer
  public static ArrayList<Product> getAprovBuyOneGetOneData()
  {
      ArrayList<Product> offerList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_buy_one WHERE status LIKE 'yes'";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
          p = new Product(res.getString("first_product_code"),res.getString("offer_name"), res.getInt("quantity"), res.getFloat("price"), res.getTimestamp("edate").toString(), res.getString("status"), res.getFloat("hour"),res.getString("second_product_code"),res.getString("offer_code"));
          offerList.add(p);
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return offerList;
  }
  //view all the non approval buy one get one offer
  public static ArrayList<Product> getNonAprovBuyOneGetOneData()
  {
      ArrayList<Product> offerList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_buy_one WHERE status LIKE 'no'";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
          p = new Product(res.getString("first_product_code"),res.getString("offer_name"), res.getInt("quantity"), res.getFloat("price"), res.getTimestamp("edate").toString(), res.getString("status"), res.getFloat("hour"),res.getString("second_product_code"),res.getString("offer_code"));
          offerList.add(p);
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return offerList;
  }
  // view all data of buy one get one offer
  public static ArrayList<Product> getAllBuyOneGetOneData()
  {
      ArrayList<Product> offerList = new ArrayList<Product>();
      String sql = "SELECT * FROM hsy_buy_one ";
      Product p = null;
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
          p = new Product(res.getString("first_product_code"), res.getString("offer_name"),res.getInt("quantity"), res.getFloat("price"), res.getTimestamp("edate").toString(), res.getString("status"), res.getFloat("hour"),res.getString("second_product_code"),res.getString("offer_code"));
          offerList.add(p);
          }
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return offerList;
  }
  //update the status of buy one get one offer
  public static int updateBuyOneGetOneStatus(String pid)
 {
     String sql = "update hsy_buy_one set status = ? where offer_code LIKE '"+pid+"'";
     int x = 0;
     try{
         PreparedStatement pst = DBUtils.getPreparedStatement(sql);
         pst.setString(1, "yes");
          x = pst.executeUpdate();
         //return x;
     }catch(Exception e){
         e.printStackTrace();
     }
     return x;
 }
  //add new combo into table hsy_combo
  public static int addNewCombo(Offer o)
  {
      int res = 0;
      String sql = "INSERT INTO hsy_combo (combo_id,product1,product2,product3,product4,product5,product6,product7,product8,product9,product10,product11,product12,product13,product14,quantity,mrp,hour,return_avail,status,edate,combo_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
      try{
          PreparedStatement pst = DBUtils.getPreparedStatement(sql);
          pst.setString(1, o.getCombo_id());
          pst.setString(2, o.getProduct1());
          pst.setString(3, o.getProduct2());
          pst.setString(4, o.getProduct3());
          pst.setString(5, o.getProduct4());
          pst.setString(6, o.getProduct5());
          pst.setString(7, o.getProduct6());
          pst.setString(8, o.getProduct7());
          pst.setString(9, o.getProduct8());
          pst.setString(10, o.getProduct9());
          pst.setString(11, o.getProduct10());
          pst.setString(12, o.getProduct11());
          pst.setString(13, o.getProduct12());
          pst.setString(14, o.getProduct13());
          pst.setString(15, o.getProduct14());
          pst.setInt(16, o.getQuantity());
          pst.setFloat(17, o.getPrice());
          pst.setFloat(18, o.getHour());
          pst.setString(19, o.getCombo_return_option());
          pst.setString(20, o.getStatus());
          pst.setString(21, o.getEdate());
          pst.setString(22, o.getCombo_name());
          res = pst.executeUpdate();
      }catch(Exception e){
          System.out.println(e.toString());
      }
      return res;
  }
  // view all the combo
  public static ArrayList<Offer> viewAllCombo()
  {
      ArrayList<Offer> comboList = new  ArrayList<Offer>();
      Offer off = null;
      String sql = "SELECT * FROM hsy_combo";
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
              off = new Offer(res.getString("product1"), res.getString("product2"), res.getString("product3"), res.getString("product4"), res.getString("product5"), res.getString("product6"), res.getString("product7"), res.getString("product8"), res.getString("product9"), res.getString("product10"), res.getString("product11"), res.getString("product12"), res.getString("product13"), res.getString("product14"), res.getString("combo_id"), res.getString("status"), res.getString("edate"), res.getString("return_avail"),res.getFloat("hour"), res.getInt("quantity"), res.getFloat("mrp"),res.getString("combo_name"));
              comboList.add(off);
          }
      }catch(Exception e)
      {
          System.out.print(e.toString());
      }
      return comboList;
  }
  //view all the approval combo offers
  public static ArrayList<Offer> viewAllApprovCombo()
  {
      ArrayList<Offer> comboList = new  ArrayList<Offer>();
      Offer off = null;
      String sql = "SELECT * FROM hsy_combo WHERE status = 'yes'";
      try{
          ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
          while(res.next())
          {
              off = new Offer(res.getString("product1"), res.getString("product2"), res.getString("product3"), res.getString("product4"), res.getString("product5"), res.getString("product6"), res.getString("product7"), res.getString("product8"), res.getString("product9"), res.getString("product10"), res.getString("product11"), res.getString("product12"), res.getString("product13"), res.getString("product14"), res.getString("combo_id"), res.getString("status"), res.getString("edate"), res.getString("return_avail"),res.getFloat("hour"), res.getInt("quantity"), res.getFloat("mrp"),res.getString("combo_name"));
              comboList.add(off);
          }
      }catch(Exception e)
      {
          System.out.print(e.toString());
      }
      return comboList;
  }
  //update combo offer status
   public static int updateComboStatus(String pid)
 {
     String sql = "update hsy_combo set status = ? where combo_id LIKE '"+pid+"'";
     int x = 0;
     try{
         PreparedStatement pst = DBUtils.getPreparedStatement(sql);
         pst.setString(1, "yes");
          x = pst.executeUpdate();
         //return x;
     }catch(Exception e){
         e.printStackTrace();
     }
     return x;
 }
 //this method is used to get all the discount offer
   public static ArrayList<Product> getDiscountOfferID()
   {
       ArrayList<Product> discountIds = new ArrayList<Product>();
       Product p =null;
       try{
           String sql = "SELECT * FROM hsy_offer";
           ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
           while(res.next())
           {
               String pcode = res.getString("product_code");
               p = new Product(pcode, Admin_Data.getProductName(pcode));
               discountIds.add(p);
           }
       }catch(Exception e){
           System.out.println(e.toString());
       }
       return discountIds;
   }
   //this method is used to get all the buy one get one offer ids
     public static ArrayList<Product> getBuyOneGetOneOfferID()
   {
       ArrayList<Product> discountIds = new ArrayList<Product>();
       Product p =null;
       try{
           String sql = "SELECT * FROM hsy_buy_one";
           ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
           while(res.next())
           {
               String pcode = res.getString("offer_code");
               p = new Product(pcode, res.getString("offer_name"));
               discountIds.add(p);
           }
       }catch(Exception e){
           System.out.println(e.toString());
       }
       return discountIds;
   }
     //this method is used to get ids of combo offer
     public static ArrayList<Product> getComboOfferID()
   {
       ArrayList<Product> discountIds = new ArrayList<Product>();
       Product p =null;
       try{
           String sql = "SELECT * FROM hsy_combo";
           ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
           while(res.next())
           {
           p = new Product(res.getString("combo_id"), res.getString("combo_name"));
               discountIds.add(p);
           }
       }catch(Exception e){
           System.out.println(e.toString());
       }
       return discountIds;
   }
     //this method is used to add a offer image
     public static int setOfferImage(String pcode,String path)
     {
         int res = 0;
         try{
            String sql = "INSERT INTO offer_images (product_code,image) VALUES(?,?)"; 
            PreparedStatement pst = DBUtils.getPreparedStatement(sql);
            pst.setString(1, pcode);
            pst.setString(2, path);
            res = pst.executeUpdate();
         }catch(Exception e){
             System.out.println(e.toString());
         }
         return res;
     }
     //this method is used to get the offer image
     public static String getOfferImage(String pid)
     {
         String image = null;
         try{
             String sql = "SELECT image FROM offer_images WHERE product_code LIKE '"+pid+"'";
             ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
             if(res.next())
             {
                 image = res.getString("image");
             }
         }catch(Exception e){
             System.out.println(e.toString());
         }
         return image;
     }
     //this method is used to add a new store keeper information
     public static int addStoreKeeper(StoreKeeper sk){
         int x = 0;
         String sql = "INSERT INTO hsy_shopkeeper (shop_name,own_name,street,area_code,city,district,state,country,mob_no,alt_no,email_id,edate,password)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
         try{
             PreparedStatement pst = DBUtils.getPreparedStatement(sql);
             pst.setString(1, sk.getStoreName());
             pst.setString(2, sk.getOwn_name());
             pst.setString(3, sk.getStreet());
             pst.setString(4, sk.getArea_code());
             pst.setString(5, sk.getCity());
             pst.setString(6, sk.getDistrict());
             pst.setString(7, sk.getState());
             pst.setString(8, sk.getCountry());
             pst.setString(9, sk.getMob_no());
             pst.setString(10, sk.getAlt_no());
             pst.setString(11, sk.getEmail());
             pst.setString(12, sk.getEdate());
             pst.setString(13, sk.getPassword());
             x = pst.executeUpdate();
         }catch(Exception e){
             System.out.println(e.toString());
         }
         return x;
     }
     //this method is used to get the storekeeper information
     public static ArrayList<StoreKeeper> getAllStoreKeepers ()
     {
         ArrayList<StoreKeeper> storeKeepers = new ArrayList<StoreKeeper>();
         StoreKeeper storeKeeper = null;
         String sql = "SELECT * FROM hsy_shopkeeper";
         try{
             ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
             while(res.next())
             {
                 //StoreKeeper(shop_name, pincode, mobile, altno, edate, city, street, country, district, state, email, password, name);
                 storeKeeper = new StoreKeeper(res.getString("shop_name"), res.getString("area_code"), res.getString("mob_no"), res.getString("alt_no"), res.getString("edate"), res.getString("city"), res.getString("street"), res.getString("country"), res.getString("district"), res.getString("state"), res.getString("email_id"), res.getString("password"), res.getString("own_name"));
                 storeKeepers.add(storeKeeper);
             }
         }catch(Exception e){
         System.out.println(e.toString());
         }
         return storeKeepers;
     }
     //this method is used to find out the recently added record
     public static void getComboLastRecord()
     {
         try{
             String sql = "select * from hsy_combo";
             ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
             if(res.last())
             {
                 System.out.println(res.getString("combo_name"));
             }
         }catch(Exception e){
              System.out.println(e.toString());
         }
     }
     //this method is uused to view the first dicount offer 
     public static Offer getLastComboOffer()
     {
         Offer p = null;
         String sql = "select * from hsy_combo where status like 'yes'";
         try{
             ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
             if(res.last())
             {
                 p = new Offer(res.getString("combo_id"), res.getString("return_avail"), res.getFloat("hour"), res.getInt("quantity"), res.getFloat("mrp"),  res.getString("combo_name"));
             }
         }catch(Exception e){
             System.out.println(e.toString());
         }
         return p;
     }
     //  this method is used to get the particular combo 
     public static Offer getSingleComboOffer(String combo_id)
     {
         Offer p = null;
         String sql = "select * from hsy_combo where combo_id like '"+combo_id+"'";
         try{
             ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
             if(res.next())
             {
                 p = new Offer(res.getString("combo_id"), res.getString("return_avail"), res.getFloat("hour"), res.getInt("quantity"), res.getFloat("mrp"),  res.getString("combo_name"));
             }
         }catch(Exception e){
             System.out.println(e.toString());
         }
         return p;
     }
     //this method is used to add an order
     public static int addOrder(Order o)
     {
         int res = 0 ;
         try{
             String sql = "insert into js_order(cust_id,product_id,mrp,quantity,order_date) values(?,?,?,?,?)";
             PreparedStatement pst = DBUtils.getPreparedStatement(sql);
             pst.setString(1, o.getCust_id());
             pst.setString(2, o.getProd_id());
             pst.setFloat(3, o.getMrp());
             pst.setInt(4, o.getQuantity());
             pst.setString(5, o.getOrd_date());
             res = pst.executeUpdate();
         }catch(Exception e){
            System.out.println(e.toString()); 
         }
         return res;
     }
   public static void main(String[] args) {
      /* ArrayList<StoreKeeper> storekeepers = Admin_Data.getAllStoreKeepers();
    for(StoreKeeper storeKeeper:storekeepers)
                        {
                           System.out.println(storeKeeper.getOwn_name());
                                
                        }
      //getLastRecord();
      Product p = getSingleOffer("P125");
      System.out.println(p.getDiscount());*/
      //Offer off = getLastComboOffer();
      //System.out.println(off.getCombo_id());
    }
}

