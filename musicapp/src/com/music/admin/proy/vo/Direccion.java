/**
 *  Direccion.java
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
public class Direccion implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4194328259867710468L;
	
	private Integer direccionId;
	private String calle;
	private String colonia;
	private String ciudad;
	private String estado;
	private Integer codigop;
	private String usuarioAlta;
	
	private Set<Usuario> usuarioses = new HashSet<Usuario>(0);
	private Set<Clientes> clienteses = new HashSet<Clientes>(0);
	private Set<Proveedores> provedoreses = new HashSet<Proveedores>(0);
	
	


	public Direccion() {
	}

	public Direccion(String calle, String colonia, String ciudad, String estado) {
		this.calle = calle;
		this.colonia = colonia;
		this.ciudad = ciudad;
		this.estado = estado;
	}

	
	public Direccion(String calle, String colonia, String ciudad, String estado, Integer codigop, String usuarioAlta,
			Set<Usuario> usuarioses, Set<Clientes> clienteses, Set<Proveedores> proveedores) {
		this.calle = calle;
		this.colonia = colonia;
		this.ciudad = ciudad;
		this.estado = estado;
		this.codigop = codigop;
		this.usuarioAlta = usuarioAlta;
		this.usuarioses = usuarioses;
		this.clienteses = clienteses;
		this.provedoreses = proveedores;
	}

	/**
	 * @return the direccionId
	 */
	public Integer getDireccionId() {
		return direccionId;
	}

	/**
	 * @param direccionId the direccionId to set
	 */
	public void setDireccionId(Integer direccionId) {
		this.direccionId = direccionId;
	}

	/**
	 * @return the calle
	 */
	public String getCalle() {
		return calle;
	}

	/**
	 * @param calle the calle to set
	 */
	public void setCalle(String calle) {
		this.calle = calle;
	}

	/**
	 * @return the colonia
	 */
	public String getColonia() {
		return colonia;
	}

	/**
	 * @param colonia the colonia to set
	 */
	public void setColonia(String colonia) {
		this.colonia = colonia;
	}

	/**
	 * @return the ciudad
	 */
	public String getCiudad() {
		return ciudad;
	}

	/**
	 * @param ciudad the ciudad to set
	 */
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	/**
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}

	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}

	/**
	 * @return the codigop
	 */
	public Integer getCodigop() {
		return codigop;
	}

	/**
	 * @param codigop the codigop to set
	 */
	public void setCodigop(Integer codigop) {
		this.codigop = codigop;
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
	 * @return the usuarioses
	 */
	public Set<Usuario> getUsuarioses() {
		return usuarioses;
	}

	/**
	 * @param usuarioses the usuarioses to set
	 */
	public void setUsuarioses(Set<Usuario> usuarioses) {
		this.usuarioses = usuarioses;
	}

	/**
	 * @return the clienteses
	 */
	public Set<Clientes> getClienteses() {
		return clienteses;
	}

	/**
	 * @param clienteses the clienteses to set
	 */
	public void setClienteses(Set<Clientes> clienteses) {
		this.clienteses = clienteses;
	}

	public Set<Proveedores> getProvedoreses() {
		return provedoreses;
	} 

	public void setProvedoreses(Set<Proveedores> provedoreses) {
		this.provedoreses = provedoreses;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */ 
	/*
	@Override
	public String toString() {
		return "Direccion [direccionId=" + direccionId + ", calle=" + calle + ", colonia=" + colonia + ", ciudad="
				+ ciudad + ", estado=" + estado + ", codigop=" + codigop + ", usuarioAlta=" + usuarioAlta;
	}
*/


}
