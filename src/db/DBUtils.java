/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mysql.jdbc.Driver;

/**
 *
 * @author mantu
 */
public class DBUtils {
    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException
    {
        PreparedStatement pes=null;
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/hsy";
        String user="root";
        String pass="";
        Connection con=DriverManager.getConnection(url, user, pass);
        pes=con.prepareStatement(sql);
        return pes;
    }
   
}
