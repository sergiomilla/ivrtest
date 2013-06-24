package com.isb.test;

public class Alumno {

	//idaferv - 24062013 - Nombre del alumno
	public String nombre;

	//idafereyes - 24062013 - Apellido del alumno
	public String apellido;
	
	//Getter del nombre - prueba
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
	
	public String getNombreCompleto() {
		return nombre + " " + apellido;
	}
	
	
}
