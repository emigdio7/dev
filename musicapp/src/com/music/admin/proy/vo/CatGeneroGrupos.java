package com.music.admin.proy.vo;

import java.io.Serializable;

public class CatGeneroGrupos implements  Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8145923050199987717L;
	
	private Integer generoGrupoId;
	private String genero;
	private Integer activo;
	private String usuarioAlta;
	private String classLabel;
	
	public CatGeneroGrupos() {
		
	}

	public Integer getGeneroGrupoId() {
		return generoGrupoId;
	}

	public void setGeneroGrupoId(Integer generoGrupoId) {
		this.generoGrupoId = generoGrupoId;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
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
		return "CatGeneroGrupos [generoGrupoId=" + generoGrupoId + ", genero=" + genero + ", activo=" + activo
				+ ", usuarioAlta=" + usuarioAlta + ", classLabel=" + classLabel + "]";
	}
	
	
	

}
