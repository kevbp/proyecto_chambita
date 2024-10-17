/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Eduardo
 */
public class DAO_Acceso {
    public boolean autenticarUsuario(HttpServletRequest request, String user, String pass) {
        Conexion conexiondb = new Conexion();
        Connection conn = conexiondb.Connected(); 
        try{
            PreparedStatement pstm=conn.prepareStatement("SELECT IdUsuario, UserName, Clave FROM Tb_Login WHERE UserName = ? and Clave = ?");
            pstm.setString(1, user);
            pstm.setString(2, pass);
            ResultSet rs=pstm.executeQuery();
            
            if(rs.next()){
                
                String id = rs.getString("IdUsuario");
                String nombre =rs.getString("UserName");
                String clave = rs.getString("Clave");
                
                if(!id.equals("")){                    
                    //Usuario nuser = new Usuario(user, nivelUsuario, nombreUsuario);              
                    HttpSession session = request.getSession();
                    session.invalidate();
                    session = request.getSession(true);
                    session.setAttribute("user", nombre);
                    session.setMaxInactiveInterval(120);
                    return true;
                }
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            conexiondb.Discconet();
        }
        return false;
    }
}
