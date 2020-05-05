  /**
 *  Clientes.java
 * Fecha de creación: 16 dic 2018 21:51:04 
 *
 * Copyright (c) 2018 American Music  S.A. de C.V. 
 * Jiutepec Morelos.
 * Todos los derechos reservados.
 *
 * Este software es información confidencial, propiedad de
 * American Music S.A. de C.V. Esta información confidencial
 * no deberá ser divulgada y solo se podrá utilizar de acuerdo
 * a los términos que determine la propia empresa.
 */
package com.music.admin.proy.vo;
// Generated 28-dic-2018 19:14:12 by Hibernate Tools 5.3.6.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class Empleados implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8812594448369134166L;
	
	
	private Integer empleadoId;
	private Direccion direccion;
	private String nombre;
	private String apellidoPat;
	private String apellidoMat;
	private String telefono;
	private String correo;
	private Rol rol;
	private String claveEmpleado;
	private String claveSecreta;
	private String fechaNac;
	private String genero;
	private int activo;
	private String imagenPath;
	
	private int salario;
	private Set<Llamadas> llamadases = new HashSet<Llamadas>(0);
	
	
	
	
	/**
	 * @return the salario
	 */
	public int getSalario() {
		return salario;
	}
	
	/**
	 * @param salario the salario to set
	 */
	public void setSalario(int salario) {
		this.salario = salario;
	}
	/**
	 * @return the genero
	 */
	public String getGenero() {
		return genero;
	}
	/**
	 * @param genero the genero to set
	 */
	public void setGenero(String genero) {
		this.genero = genero;
	}
	/**
	 * @return the fechaNac
	 */
	public String getFechaNac() {
		return fechaNac;
	}
	/**
	 * @param fechaNac the fechaNac to set
	 */
	public void setFechaNac(String fechaNac) {
		this.fechaNac = fechaNac;
	}
	/**
	 * @return the imagenPath
	 */
	public String getImagenPath() {
		return imagenPath;
	}
	/**
	 * @param imagenPath the imagenPath to set
	 */
	public void setImagenPath(String imagenPath) {
		this.imagenPath = imagenPath;
	}
	/**
	 * @return the empleadoId
	 */
	public Integer getEmpleadoId() {
		return empleadoId;
	}
	/**
	 * @param empleadoId the empleadoId to set
	 */
	public void setEmpleadoId(Integer empleadoId) {
		this.empleadoId = empleadoId;
	}
	/**
	 * @return the direccion
	 */
	public Direccion getDireccion() {
		return direccion;
	}
	/**
	 * @param direccion the direccion to set
	 */
	public void setDireccion(Direccion direccion) {
		this.direccion = direccion;
	}
	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	/**
	 * @return the apellidoPat
	 */
	public String getApellidoPat() {
		return apellidoPat;
	}
	/**
	 * @param apellidoPat the apellidoPat to set
	 */
	public void setApellidoPat(String apellidoPat) {
		this.apellidoPat = apellidoPat;
	}
	/**
	 * @return the apellidoMat
	 */
	public String getApellidoMat() {
		return apellidoMat;
	}
	/**
	 * @param apellidoMat the apellidoMat to set
	 */
	public void setApellidoMat(String apellidoMat) {
		this.apellidoMat = apellidoMat;
	}
	/**
	 * @return the telefono
	 */
	public String getTelefono() {
		return telefono;
	}
	/**
	 * @param telefono the telefono to set
	 */
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	/**
	 * @return the correo
	 */
	public String getCorreo() {
		return correo;
	}
	/**
	 * @param correo the correo to set
	 */
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	/**
	 * @return the roles
	 */
	public Rol getRol() {
		return rol;
	}
	/**
	 * @param roles the roles to set
	 */
	public void setRol(Rol rol) {
		this.rol = rol;
	}
	/**
	 * @return the claveEmpleado
	 */
	public String getClaveEmpleado() {
		return claveEmpleado;
	}
	/**
	 * @param claveEmpleado the claveEmpleado to set
	 */
	public void setClaveEmpleado(String claveEmpleado) {
		this.claveEmpleado = claveEmpleado;
	}
	/**
	 * @return the claveSecreta
	 */
	public String getClaveSecreta() {
		return claveSecreta;
	}
	/**
	 * @param claveSecreta the claveSecreta to set
	 */
	public void setClaveSecreta(String claveSecreta) {
		this.claveSecreta = claveSecreta;
	}
	/**
	 * @return the activo
	 */
	public int getActivo() {
		return activo;
	}
	/**
	 * @param activo the activo to set
	 */
	public void setActivo(int activo) {
		this.activo = activo;
	}
	/**
	 * @return the llamadases
	 */
	public Set<Llamadas> getLlamadases() {
		return llamadases;
	}
	/**
	 * @param llamadases the llamadases to set
	 */
	public void setLlamadases(Set<Llamadas> llamadases) {
		this.llamadases = llamadases;
	}
	
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((empleadoId == null) ? 0 : empleadoId.hashCode());
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Empleados other = (Empleados) obj;
		if (empleadoId == null) {
			if (other.empleadoId != null)
				return false;
		} else if (!empleadoId.equals(other.empleadoId))
			return false;
		return true;
	}
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	
	/*
	@Override
	public String toString() {
		return "Empleados [empleadoId=" + empleadoId + ", direccion=" + direccion + ", nombre=" + nombre
				+ ", apellidoPat=" + apellidoPat + ", apellidoMat=" + apellidoMat + ", telefono=" + telefono
				+ ", correo=" + correo + ", roles=" + rol + ", claveEmpleado=" + claveEmpleado + ", claveSecreta="
				+ claveSecreta + ", activo=" + activo + ", llamadases=" + llamadases + ", imagenPath="+ imagenPath +"]";
	}
*/
	


}
