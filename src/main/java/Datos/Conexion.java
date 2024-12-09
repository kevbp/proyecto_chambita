/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

/**
 *
 * @author Eduardo
 */
abstract class Conexion {
    static String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    static String url="jdbc:sqlserver://localhost:1433;databaseName=APPBD;encrypt=false;";
    static String user="sa";
    //static String pass="Ch@mb@.com";
    static String pass="Sql2019";
    Connection conn=null;

    public Conexion() {
        try{
            Class.forName(driver); 
            //Class.forName(driver);
            conn = DriverManager.getConnection(url,user,pass);
            if(conn!=null){
                System.out.println("Conexión realizada..." + conn);
                //JOptionPane.showMessageDialog(null,"Conectado");
            }
        }catch(SQLException ex){
            System.out.println("Conexión fallida..."+ex.getMessage());
        }catch (ClassNotFoundException ex) {
            System.out.println("Falta Driver " + ex.getMessage());
        }       
    }
    public Connection Connected(){
        return conn;
    }
    public Connection Discconet(){    
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Error de desconexión.. "+ex.getMessage());
        }
        return null;
    }
}
