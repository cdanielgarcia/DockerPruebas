package com.person.personservice.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Pais {

    private @Id @GeneratedValue int id_pais;

    private String nombre;

    public Pais(String nombre) {
        this.nombre = nombre;
    }

    public int getId_pais() {
        return id_pais;
    }

    public void setId_pais(int id_pais) {
        this.id_pais = id_pais;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "Pais{" +
                "id_pais=" + id_pais +
                ", nombre='" + nombre + '\'' +
                '}';
    }
}
