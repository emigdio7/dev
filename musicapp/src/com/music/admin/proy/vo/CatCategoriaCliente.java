package com.music.admin.proy.vo;

import java.io.Serializable;

public class CatCategoriaCliente implements Serializable {
	
	
	private Integer catClienteId;
	private String descripcion;
	private Integer activo;
	private String usuarioAlta;
	private String classLabel;
	
	public CatCategoriaCliente() {
		
	}

	public Integer getCatClienteId() {
		return catClienteId;
	}


	public void setCatClienteId(Integer catClienteId) {
		this.catClienteId = catClienteId;
	}


	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public Integer getActivo() {
		return activo;
	}


	public void setActivo(Integer activo) {
		this.activo = activo;
	}


	public String getUsuarioAlta() {
		return usuarioAlta;
	}


	public void setUsuarioAlta(String usuarioAlta) {
		this.usuarioAlta = usuarioAlta;
	}


	public String getClassLabel() {
		return classLabel;
	}


	public void setClassLabel(String classLabel) {
		this.classLabel = classLabel;
	}
	

	@Override
	public String toString() {
		return "CatCategoriaCliente [catClienteId=" + catClienteId + ", descripcion=" + descripcion + ", activo="
				+ activo + ", usuarioAlta=" + usuarioAlta + ", classLabel=" + classLabel + "]";
	}


	/**
	 * 
	 */
	private static final long serialVersionUID = -1942056324357041285L;

}
