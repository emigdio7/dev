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
public class EmpleadoDto implements java.io.Serializable {

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3600907609530655342L;
	
	
	
	private Integer empleadoId;
	private Integer clienteId;
	private String nombre;
	private String apellidoPat;
	private String apellidoMat;
	private String telefono;
	private String correo;
	private int rol;
	private int activo;
	private String imagenPath;
	private Integer direccionId;
	private String calle;
	private String colonia;
	private String ciudad;
	private String estado;
	private Integer codigop;
	private String fechaNac;
	private String genero;
	private int salario;
	
	
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
	 * @return the rol
	 */
	public int getRol() {
		return rol;
	}
	/**
	 * @param rol the rol to set
	 */
	public void setRol(int rol) {
		this.rol = rol;
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "EmpleadoDto [empleadoId=" + empleadoId + ", nombre=" + nombre + ", apellidoPat=" + apellidoPat
				+ ", apellidoMat=" + apellidoMat + ", telefono=" + telefono + ", correo=" + correo + ", rol=" + rol
				+ ", activo=" + activo + ", imagenPath=" + imagenPath + ", direccionId=" + direccionId + ", calle="
				+ calle + ", colonia=" + colonia + ", ciudad=" + ciudad + ", estado=" + estado + ", codigop=" + codigop
				+ ", fechaNac=" + fechaNac + ", genero=" + genero + "]";
	}	

	
	

	


}
