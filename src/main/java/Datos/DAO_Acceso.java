/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import Entidades.*;
import Utilitarios.Encriptacion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Eduardo
 */
public class DAO_Acceso extends Conexion{
    public boolean autenticarUsuario(HttpServletRequest request, String correo, String pass) {
        
        Encriptacion e = new Encriptacion();
        
        Connection conn = Connected(); 
        try{            
            CallableStatement cs = conn.prepareCall("{CALL sp_Login(?)}");
            cs.setString(1, correo);
            ResultSet rs = cs.executeQuery();
            
            if(rs.next()){
                
                Usuario usuario = new Usuario(Integer.parseInt(rs.getString("IdUsuario")), 
                                        rs.getString("Nombres"), 
                                        rs.getString("Apellidos"), 
                                        Integer.parseInt(rs.getString("Perfil")),
                                        rs.getString("Correo"),
                                        rs.getString("Clave"));
                
                if (e.decript(usuario.getClave()).equals(pass)) {                
                    if(!String.valueOf(usuario.getIdUsuario()).equals("")){                   
                        HttpSession session = request.getSession();
                        session.invalidate();
                        session = request.getSession(true);
                        session.setAttribute("id", usuario.getIdUsuario());
                        session.setAttribute("perfil", usuario.getPerfil());
                        //session.setMaxInactiveInterval(120);
                        return true;
                    }
                }
            }
        }catch(SQLException ex){
            ex.getMessage();
        }finally{
            Discconet();
        }
        return false;
    }
    public boolean registrarUsuario(HttpServletRequest request, String nombre, String apellido, String correo, String clave) {
        Encriptacion e = new Encriptacion();  
        
        Connection conn = Connected(); 
        try{
            String encriptado = e.encode(clave);
            CallableStatement cs = conn.prepareCall("{CALL sp_Registrar_Usuario(?,?,?,?)}");
            cs.setString(1, nombre);
            cs.setString(2, apellido);
            cs.setString(3, correo);
            cs.setString(4, encriptado);
            cs.execute();
            return true;
            /*ResultSet rs = cs.executeQuery();
            
            if(rs.next()){
                
                String id = rs.getString("IdUsuario");
                String nombre = rs.getString("Correo");
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
            }*/
        }catch(SQLException ex){
            ex.getMessage();
        }finally{
            Discconet();
        }
        return false;
    }
}
