/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;
import java.util.Scanner;
import java.util.ArrayList;
/**
 *
 * @author Handshakeyou
 */
public class DynamicArray {
    private ArrayList<String> al;
 
    /** constructor **/
    public DynamicArray()
    {
        al = new ArrayList<String>();        
    }    
    /** function to clear **/
    public void clear()
    {
        al.clear();
    }
    /** function to get size **/
    public int size()
    {
        return al.size();
    }   
    /** function to insert element **/
    public void insert(String key)
    {
        al.add(key);
    }    
    /** function to get element at index **/
    public String get(int index)
    {
        if (index >= al.size())
            return "";
        return al.get(index);
    }
    /** function to remove element at index **/
    public void remove(int index)
    {
        if (index >= al.size())
            return ;
        al.remove(index);
    }   
    /** function to remove element **/
    public void remove(String key)
    {
        al.remove(key);
    } 
    /** function to display array **/
    public void display()
    {
        System.out.println("\nDynamic Array : "+ al);
        System.out.println();
    }              
}
