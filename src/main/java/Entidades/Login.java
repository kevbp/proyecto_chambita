/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author crios
 */
public class Login {
    private String correo;
    private String clave;

    public Login(String correo, String clave) {
        this.correo = correo;
        this.clave = clave;
    }

    public Login() {
    }

    public String getCorreo() {
        return correo;
    }

    public String getClave() {
        return clave;
    }
}
