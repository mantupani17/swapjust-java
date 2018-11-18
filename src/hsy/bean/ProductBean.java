/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hsy.bean;

import HsyModel.Product;
import java.util.*;

/**
 *
 * @author Handshakeyou
 */
public class ProductBean {
    //private Product p;
    private static ArrayList<Product> allData = new ArrayList<Product>();
    public int itemSize()
    {
        return allData.size();
    }
    public static void deleteItems(Product p)
    {
       allData.remove(p);
    }
    public static void removeAllData(Product pro,String k){
      Map<String,Product> datas = new HashMap<String, Product>();
      datas.put(k, pro);
      Set<String> keys = datas.keySet();
      Iterator<String> itr = keys.iterator();
      while(itr.hasNext())
      {
          String key = itr.next();
          Product p = datas.get(key);
          if(key.equals("data"))
          {
          allData.remove(p);
          }
          System.out.println(key);
          System.out.println(p.getProduct_name());
      }
    }
    public static void addItems(Product p)
    {
        try{
           allData.add(p);
        }catch(Exception e){e.printStackTrace();}
    }
   /* public static void main(String[] args) {
      
        Product product = new Product("p123", "mantu", 1, 100, 10);
        Product product2 = new Product("p123", "mantu", 1, 100, 10);
        Product product1 = new Product("p123", "venky", 1, 100, 10);
        addItems(product);
        addItems(product1);
        addItems(product2);
        ArrayList<Product> prod = new ArrayList<Product>();
        prod.add(product);
        prod.add(product1);
        System.out.println(allData);
        System.out.println("after removing");
       /* for(Product p :allData)
        {
            if("mantu".equals(p.getProduct_name()))
            {
                deleteItems(product);
            }
        }
        System.out.println(allData);
        removeAllData(product,"data");
        removeAllData(product1,"data");
        removeAllData(product2, "ram");
        System.out.println(allData); 
    }*/
}
