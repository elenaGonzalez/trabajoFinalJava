package com.codoacodo.model;

import java.sql.Timestamp;

public class Orador{
    
    //Definimos variables
    private Integer id;
    private String nombre;
    private String apellido;
    private String mail;
    private String tema;
    private Timestamp fecha;
    
    //Constructor
    
    public Orador(){}
    
    //orador con id y timestamp para visualizar registros
    public Orador(Integer id, String n, String a , String m, String t, Timestamp ts) {
        this.id = id;
        this.nombre = n;
        this.apellido = a;
        this.mail = m;
        this.tema = t;
        this.fecha = ts;
    }
    
    public Orador(String n, String a , String m, String t) {
        this.nombre = n;
        this.apellido = a;
        this.mail = m;
        this.tema = t;
    }
    
    public Orador(Integer id,String n, String a , String m, String t) {
        this.id = id;
        this.nombre = n;
        this.apellido = a;
        this.mail = m;
        this.tema = t;
    }
    
    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public Timestamp getFecha() {
        return fecha;
    }

    public void setFechaAlta(Timestamp fecha) {
        this.fecha = fecha;
    }
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
    
    //Métodos
    public void exponerCharla() {
        System.out.println("Hola soy Bill Gates y voy a hablar del nuevo orden mundial.");
    }

    
    public void inscribirseEnLaConferencia() {
        System.out.println("Datos Ingresados y validados.");
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Orador{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", mail=" + mail + ", tema=" + tema + ", fecha=" + fecha + '}';
    }

}
