/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 *  
 */
public class DBUtils {
    private static final String DB_NAME="zoomanagement";
    private static final String DB_USER_NAME="sa";// hoa thuong deu dc
    private static final String DB_PASSWORD="123456";
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection conn=null;
       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
       String url="jdbc:sqlserver://localhost:1433;databaseName="+DB_NAME;
       conn= DriverManager.getConnection(url,DB_USER_NAME,DB_PASSWORD);
       return conn;
    }
}
