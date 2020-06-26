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
public class Clientes implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8812594448369134166L;
	
	
	private Integer clienteId;
	private Direccion direccion;
	private String nombre;
	private String apellidos;
	private String telefono;
	private String correo;
	private String categoria;
	private Integer activo;
	private String observaciones;
	private String usuarioAlta;
	private Set<Llamadas> llamadases = new HashSet<Llamadas>(0);
	private Set<Eventos> eventoses = new HashSet<Eventos>(0);

	public Clientes() {
	}

	public Clientes(Direccion direccion, String nombre, String apellidos, String telefono, String correo,
			String observaciones) {
		this.direccion = direccion;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.correo = correo;
		this.observaciones = observaciones;
	}

	public Clientes(Direccion direccion, String nombre, String apellidos, String telefono, String correo,
			String observaciones, String usuarioAlta, Set<Llamadas> llamadases) {
		this.direccion = direccion;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.correo = correo;
		this.observaciones = observaciones;
		this.usuarioAlta = usuarioAlta;
		this.llamadases = llamadases;
	}
	
	

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public Integer getActivo() {
		return activo;
	}

	public void setActivo(Integer activo) {
		this.activo = activo;
	}

	/**
	 * @return the eventoses
	 */
	public Set<Eventos> getEventoses() {
		return eventoses;
	}

	/**
	 * @param eventoses the eventoses to set
	 */
	public void setEventoses(Set<Eventos> eventoses) {
		this.eventoses = eventoses;
	}

	/**
	 * @return the clienteId
	 */
	public Integer getClienteId() {
		return clienteId;
	}

	/**
	 * @param clienteId the clienteId to set
	 */
	public void setClienteId(Integer clienteId) {
		this.clienteId = clienteId;
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
	 * @return the apellidos
	 */
	public String getApellidos() {
		return apellidos;
	}

	/**
	 * @param apellidos the apellidos to set
	 */
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
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
	 * @return the observaciones
	 */
	public String getObservaciones() {
		return observaciones;
	}

	/**
	 * @param observaciones the observaciones to set
	 */
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	/**
	 * @return the usuarioAlta
	 */
	public String getUsuarioAlta() {
		return usuarioAlta;
	}

	/**
	 * @param usuarioAlta the usuarioAlta to set
	 */
	public void setUsuarioAlta(String usuarioAlta) {
		this.usuarioAlta = usuarioAlta;
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
	 * @see java.lang.Object#toString()
	 */
	/*
	@Override
	public String toString() {
		return "Clientes [clienteId=" + clienteId + ", nombre=" + nombre + ", apellidos="
				+ apellidos + ", telefono=" + telefono + ", correo=" + correo + ", observaciones=" + observaciones
				+ ", usuarioAlta=" + usuarioAlta + "]";
	}

*/
	


}
