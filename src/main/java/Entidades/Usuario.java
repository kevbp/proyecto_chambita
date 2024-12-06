/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author Usuario local
 */
public class Usuario {
    
    private int idUsuario;
    private String nombre;
    private String apellido;
    private int perfil;

    public Usuario(int idUsuario, String nombre, String apellido, int perfil) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.perfil = perfil;
    }
    
    public Usuario(){     
    }
    
    public int getIdUsuario() {
        return idUsuario;
    }

    public String getNombre() {
        return nombre;
    }    

    public String getApellido() {
        return apellido;
    }

    public int getPerfil() {
        return perfil;
    }
}
