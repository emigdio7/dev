/**
 *  Usuarios.java
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

import java.util.HashSet;
import java.util.Set;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class Usuario implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1845758535089416358L;
	
	 
	private String nombreUsuario;
	private Direccion direccion;
	private String nombre;
	private String apellidos;
	private String telefono;
	private String correo;
	private Integer rol;
	private String usuarioAlta;
	private String passwordd;
	private boolean enabled;
	private Set<Llamadas> llamadases = new HashSet<Llamadas>(0);
	//@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
	private Set<Authorities> authorities = new HashSet<>();
	
	public Usuario() {
	}

	public Usuario(String nombre, String apellidos, String telefono, String correo) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.correo = correo;
	}

	public Usuario(Direccion direccion, String nombre, String apellidos, String telefono, String correo, Integer rol,
			String usuarioAlta, Set<Llamadas> llamadases) {
		this.direccion = direccion;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.correo = correo;
		this.rol = rol;
		this.usuarioAlta = usuarioAlta;
		this.llamadases = llamadases;
	}


	
	/**
	 * @return the authorities
	 */
	public Set<Authorities> getAuthorities() {
		return authorities;
	}

	/**
	 * @param authorities the authorities to set
	 */
	public void setAuthorities(Set<Authorities> authorities) {
		this.authorities = authorities;
	}

	/**
	 * @return the enabled
	 */
	public boolean isEnabled() {
		return enabled;
	}

	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	/**
	 * @return the passwordd
	 */
	public String getPasswordd() {
		return passwordd;
	}

	/**
	 * @param passwordd the passwordd to set
	 */
	public void setPasswordd(String passwordd) {
		this.passwordd = passwordd;
	}

	
	/**
	 * @return the usuarioId
	 */
	public String getNombreUsuario() {
		return nombreUsuario;
	}

	/**
	 * @param usuarioId the usuarioId to set
	 */
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
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
	 * @return the rol
	 */
	public Integer getRol() {
		return rol;
	}

	/**
	 * @param rol the rol to set
	 */
	public void setRol(Integer rol) {
		this.rol = rol;
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
		return "Usuarios [nombreUsuario=" + nombreUsuario +", nombre=" + nombre
				+ ", apellidos=" + apellidos + ", telefono=" + telefono + ", correo=" + correo + ", rol=" + rol
				+ ", usuarioAlta=" + usuarioAlta + ", passwordd=" + passwordd + ", enabled=" + enabled + ", llamadases="
				+ llamadases + "]";
	}
*/
}
