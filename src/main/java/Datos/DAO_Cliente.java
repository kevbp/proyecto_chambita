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
    public boolean registrarSolicitud(int id, Solicitud s) {
        
        Connection conn = Connected(); 
        try{
            CallableStatement cs = conn.prepareCall("{CALL sp_Registrar_Solicitud(?,?,?,?,?,?,?,?)}");
            cs.setInt(1, id);
            cs.setString(2, s.getTitulo());
            cs.setString(3, s.getDescripcion());
            cs.setString(4, s.getFechaNecesidad());
            cs.setString(5, s.getRegion());
            cs.setString(6, s.getProvincia());
            cs.setString(7, s.getDistrito());
            cs.setFloat(8, s.getPrecio());
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
    
    public ArrayList<Solicitud> listarMisSolicitudes(int id) {
        
        Connection conn = Connected(); 
        ArrayList<Solicitud> arrayList = new ArrayList<Solicitud>();
        try{
            CallableStatement cs = conn.prepareCall("{CALL sp_Listar_MisSolicitudes(?)}");
            cs.setInt(1, id);
            ResultSet rs = cs.executeQuery();            
            while(rs.next()){
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
    
    public Solicitud mostrarDetalleSolicitud(int id) {        
        Connection conn = Connected(); 
        Solicitud solicitud = null;
        try{
            CallableStatement cs = conn.prepareCall("{CALL sp_Detalle_Solicitud(?)}");
            cs.setInt(1, id);
            ResultSet rs = cs.executeQuery();            
            if(rs.next()){
                solicitud = new Solicitud(Integer.parseInt(rs.getString("IdSolicitud")),
                                                    rs.getString("Titulo"), 
                                                    rs.getString("Descripcion"), 
                                                    rs.getString("FechaNecesidad"),
                                                    rs.getString("FechaPublicacion"),
                                                    rs.getString("Region"), 
                                                    rs.getString("Provincia"), 
                                                    rs.getString("Distrito"), 
                                                    Float.parseFloat(rs.getString("Precio")),
                                                    rs.getString("Estado"));
            }
        }catch(SQLException ex){
            ex.getMessage();
        }finally{
            Discconet();
        }
        System.out.println(solicitud);
        return solicitud;
    }
}
