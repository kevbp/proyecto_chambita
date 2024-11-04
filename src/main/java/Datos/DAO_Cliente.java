/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import Entidades.Solicitud;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Usuario local
 */
public class DAO_Cliente extends Conexion{
    public boolean registrarSolicitud(HttpServletRequest request, int id, String titulo, String desc, String fecha, String reg,
                 String prov, String dist, float precio) {
        
        Connection conn = Connected(); 
        try{
            CallableStatement cs = conn.prepareCall("{CALL sp_Registrar_Solicitud(?,?,?,?,?,?,?,?)}");
            cs.setInt(1, id);
            cs.setString(2, titulo);
            cs.setString(3, desc);
            cs.setString(4, fecha);
            cs.setString(5, reg);
            cs.setString(6, prov);
            cs.setString(7, dist);
            cs.setFloat(8, precio);
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
    
    public ArrayList<Solicitud> listarMisSolicitudes(HttpServletRequest request, int id) {
        
        Connection conn = Connected(); 
        ArrayList<Solicitud> arrayList = new ArrayList<Solicitud>();
        try{
            CallableStatement cs = conn.prepareCall("{CALL sp_Listar_MisSolicitudes(?)}");
            cs.setInt(1, id);
            ResultSet rs = cs.executeQuery();            
            if(rs.next()){
                Solicitud solicitud = new Solicitud(Integer.parseInt(rs.getString("IdSolicitud")),
                                                    rs.getString("Titulo"), 
                                                    rs.getString("Descripcion"), 
                                                    rs.getString("FechaNecesidad"), 
                                                    rs.getString("Region"), 
                                                    rs.getString("Provincia"), 
                                                    rs.getString("Distrito"), 
                                                    Float.parseFloat(rs.getString("Precio")),
                                                    rs.getString("Estado"));
                arrayList.add(solicitud);
            }
        }catch(SQLException ex){
            ex.getMessage();
        }finally{
            Discconet();
        }
        return arrayList;
    }
}
