package com.music.admin.proy.vo;

import java.io.Serializable;

public class Inventario implements Serializable {

	private Integer articuloId;
	private String nombre;
	private String descripcion;
	private Integer valor;
	private String numeroSerie;
	private String codigoBarras;
	private String observaciones;
	private String categoria;
	private String usuarioAlta;
	private String fotoArticulo;

	








	public Integer getArticuloId() {
		return articuloId;
	}








	public void setArticuloId(Integer articuloId) {
		this.articuloId = articuloId;
	}








	public String getNombre() {
		return nombre;
	}








	public void setNombre(String nombre) {
		this.nombre = nombre;
	}








	public String getDescripcion() {
		return descripcion;
	}








	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}





	public Integer getValor() {
		return valor;
	}








	public void setValor(Integer valor) {
		this.valor = valor;
	}








	public String getNumeroSerie() {
		return numeroSerie;
	}








	public void setNumeroSerie(String numeroSerie) {
		this.numeroSerie = numeroSerie;
	}








	public String getCodigoBarras() {
		return codigoBarras;
	}








	public void setCodigoBarras(String codigoBarras) {
		this.codigoBarras = codigoBarras;
	}








	public String getObservaciones() {
		return observaciones;
	}








	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}








	public String getCategoria() {
		return categoria;
	}








	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}








	public String getUsuarioAlta() {
		return usuarioAlta;
	}








	public void setUsuarioAlta(String usuarioAlta) {
		this.usuarioAlta = usuarioAlta;
	}








	public String getFotoArticulo() {
		return fotoArticulo;
	}








	public void setFotoArticulo(String fotoArticulo) {
		this.fotoArticulo = fotoArticulo;
	}








	/**
	 * 
	 */
	private static final long serialVersionUID = -2463836910984468918L;

}
