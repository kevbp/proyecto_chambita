/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author Usuario local
 */
public class Solicitud {
    private int idSolicitud;
    private String titulo;
    private String descripcion;
    private String fechaNecesidad;
    private String region;
    private String provincia;
    private String distrito;
    private float precio;
    private String estado;
    
    public Solicitud(int id, String tit, String desc, String fecha, String reg, String prov, String dist, float prec, String est){
        idSolicitud = id;
        titulo = tit;
        descripcion = desc;
        fechaNecesidad = fecha;
        region = reg;
        provincia = prov;
        distrito = dist;
        precio = prec;
        estado = est;
    }

    public int getIdSolicitud() {
        return idSolicitud;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getFechaNecesidad() {
        return fechaNecesidad;
    }

    public String getRegion() {
        return region;
    }

    public String getProvincia() {
        return provincia;
    }

    public String getDistrito() {
        return distrito;
    }

    public float getPrecio() {
        return precio;
    }

    public String getEstado() {
        return estado;
    }
}
