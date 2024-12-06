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

/**
 *
 * @author Usuario local
 */
public class DAO_Proveedor extends Conexion{
    public ArrayList<Solicitud> listarSolicitudes(int id) {
        
        Connection conn = Connected(); 
        ArrayList<Solicitud> arrayList = new ArrayList<Solicitud>();
        try{
            CallableStatement cs = conn.prepareCall("{CALL sp_Listar_Chambitas(?)}");
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
}
