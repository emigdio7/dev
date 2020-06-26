package com.music.admin.proy.vo;

import java.io.Serializable;

public class CatCategoriaProveedor implements Serializable{

	private Integer categoriaProveedorId;
	private String descripcion;
	private Integer activo;
	private String usuarioAlta;
	private String classLabel;
	
	public CatCategoriaProveedor() {
		
	}
	
	
	
	public Integer getCategoriaProveedorId() {
		return categoriaProveedorId;
	}



	public void setCategoriaProveedorId(Integer categoriaProveedorId) {
		this.categoriaProveedorId = categoriaProveedorId;
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
		return "CatCategoriaProveedor [categoriaProveedorId=" + categoriaProveedorId + ", descripcion=" + descripcion
				+ ", activo=" + activo + ", usuarioAlta=" + usuarioAlta + ", classLabel=" + classLabel + "]";
	}



	/**
	 * 
	 */
	private static final long serialVersionUID = 4532960717301105394L;

}
