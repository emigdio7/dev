  /**
 *  ClienteDto.java
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

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class ClienteDto implements java.io.Serializable {

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3600907609530655342L;
	
	
	

	private Integer clienteId;
	private String nombre;
	private String apellidos;
	private String telefono;
	private String correo;
	private String categoria;
	private int activo;
	private String observaciones;
	private String imagenPath;
	private String descripcion;
	private Integer direccionId;
	private String calle;
	private String colonia;
	private String ciudad;
	private String estado;
	private Integer codigop;
	
	
	
	
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Integer getClienteId() {
		return clienteId;
	}
	public void setClienteId(Integer clienteId) {
		this.clienteId = clienteId;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public int getActivo() {
		return activo;
	}
	public void setActivo(int activo) {
		this.activo = activo;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public String getImagenPath() {
		return imagenPath;
	}
	public void setImagenPath(String imagenPath) {
		this.imagenPath = imagenPath;
	}
	public Integer getDireccionId() {
		return direccionId;
	}
	public void setDireccionId(Integer direccionId) {
		this.direccionId = direccionId;
	}
	public String getCalle() {
		return calle;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	public String getColonia() {
		return colonia;
	}
	public void setColonia(String colonia) {
		this.colonia = colonia;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public Integer getCodigop() {
		return codigop;
	}
	public void setCodigop(Integer codigop) {
		this.codigop = codigop;
	}
	@Override
	public String toString() {
		return "ClienteDto [clienteId=" + clienteId + ", nombre=" + nombre + ", apellidos=" + apellidos + ", telefono="
				+ telefono + ", correo=" + correo + ", categoria=" + categoria + ", activo=" + activo
				+ ", observaciones=" + observaciones + ", imagenPath=" + imagenPath + ", direccionId=" + direccionId
				+ ", calle=" + calle + ", colonia=" + colonia + ", ciudad=" + ciudad + ", estado=" + estado
				+ ", codigop=" + codigop + "]";
	}
	
	
	
	
	

	
}
