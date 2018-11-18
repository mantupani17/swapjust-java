/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hsy.date;

import java.util.*;
import java.text.*;

/**
 *
 * @author mantu
 */
public class DateBean {
        
        public static String getCurrentDateTime()
        {
            String  date = null;
            try{
        SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	Date now = new Date();
	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	date = strDate + " " + strTime;   
            }catch(Exception e)
            {
                System.out.println(e.toString());
            }
            return date;
        }
}
