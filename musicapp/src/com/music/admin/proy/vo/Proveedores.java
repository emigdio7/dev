package com.music.admin.proy.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Proveedores implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4617561825603782213L;
	
	
	private Integer provedorId;
	private Direccion direccion;
	private String nombre;
	private String telefono;
	private String correo;
	private String categoria;
	private String observaciones;
	private String imagenMobiliario;
	
	
	
	public Integer getProvedorId() {
		return provedorId;
	}
	public void setProvedorId(Integer provedorId) {
		this.provedorId = provedorId;
	}
	
	public Direccion getDireccion() {
		return direccion;
	}
	public void setDireccion(Direccion direccion) {
		this.direccion = direccion;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	/*
	@Override
	public String toString() {
		return "Proveedores [provedorId=" + provedorId + ", nombre=" + nombre
				+ ", telefono=" + telefono + ", correo=" + correo + ", categoria=" + categoria + ", observaciones="
				+ observaciones + ", imagenMobiliario=" + imagenMobiliario + "]";
	}
	
	*/
	
	

}
