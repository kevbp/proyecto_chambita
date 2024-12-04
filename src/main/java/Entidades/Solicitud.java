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
    private String fechaSolicitud;
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
    
    public Solicitud(String tit, String desc, String fecha, String reg, String prov, String dist, float prec){
        titulo = tit;
        descripcion = desc;
        fechaNecesidad = fecha;
        region = reg;
        provincia = prov;
        distrito = dist;
        precio = prec;
    }

    public Solicitud(int idSolicitud, String titulo, String descripcion, String fechaNecesidad, String fechaSolicitud, String region, String provincia, String distrito, float precio, String estado) {
        this.idSolicitud = idSolicitud;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.fechaNecesidad = fechaNecesidad;
        this.fechaSolicitud = fechaSolicitud;
        this.region = region;
        this.provincia = provincia;
        this.distrito = distrito;
        this.precio = precio;
        this.estado = estado;
    }

    public String getFechaSolicitud() {
        return fechaSolicitud;
    }

    public void setFechaSolicitud(String fechaSolicitud) {
        this.fechaSolicitud = fechaSolicitud;
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
