/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author broncake
 */
public class Servicios {
    private int idServicio;
    private String desServicio;
    private int idFamilia;
    private String desFamilia;

    public Servicios(int idServicio, String desServicio, int idFamilia, String desFamilia) {
        this.idServicio = idServicio;
        this.desServicio = desServicio;
        this.idFamilia = idFamilia;
        this.desFamilia = desFamilia;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public String getDesServicio() {
        return desServicio;
    }

    public int getIdFamilia() {
        return idFamilia;
    }

    public String getDesFamilia() {
        return desFamilia;
    }

}
