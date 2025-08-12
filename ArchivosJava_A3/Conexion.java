/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pkg2025_2_actividad2;


import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author User
 */
public class Conexion {
    
    public Connection getConnection (){
    Connection con = null;
    String base = "cajerobd";
     String url = "jbdc:mysql://locashost3306:/"+base;    
     String user = "root";
     String password = "";
     
     try {
         Class.forName("com.mysql.jdbc.Driver");
         con = (Connection) DriverManager.getConnection(url, user, password);
     }catch (Exception e){
     System.err.print(e);
     
     
     }
    return con;
    
}
    
    
}
