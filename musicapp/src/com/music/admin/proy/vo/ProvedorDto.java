package com.music.admin.proy.vo;

import java.io.Serializable;

public class ProvedorDto implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = -2343300442335831080L;
	
	private Integer provedorId;
	private String nombre;
	private String apellidos;
	private String telefono;
	private String correo;
	private String categoria;
	private String observaciones;
	private String imagenMobiliario;
	
	private Integer direccionId;
	private String calle;
	private String colonia;
	private String ciudad;
	private String estado;
	private Integer cp;
	
	
	
	
	
	public Integer getDireccionId() {
		return direccionId;
	}
	public void setDireccionId(Integer direccionId) {
		this.direccionId = direccionId;
	}
	public Integer getProvedorId() {
		return provedorId;
	}
	public void setProvedorId(Integer provedorId) {
		this.provedorId = provedorId;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
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
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public String getImagenMobiliario() {
		return imagenMobiliario;
	}
	public void setImagenMobiliario(String imagenMobiliario) {
		this.imagenMobiliario = imagenMobiliario;
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
	public Integer getCp() {
		return cp;
	}
	public void setCp(Integer cp) {
		this.cp = cp;
	}
	@Override
	public String toString() {
		return "ProvedorDto [nombre=" + nombre + ", telefono=" + telefono + ", correo=" + correo + ", categoria="
				+ categoria + ", observaciones=" + observaciones + ", imagenMobiliario=" + imagenMobiliario + ", calle="
				+ calle + ", colonia=" + colonia + ", ciudad=" + ciudad + ", estado=" + estado + ", cp=" + cp + "]";
	}

}
