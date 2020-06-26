package com.music.admin.proy.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class TipoEventoDto implements Serializable{
	


	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	
	
	private String descripcion;
	private Integer activo;
	private String usuarioAlta;
	private String classLabel;
	private Integer action;
	private Set<Eventos> eventoses = new HashSet<Eventos>(0);
	
	
	public TipoEventoDto() {
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


	public Set<Eventos> getEventoses() {
		return eventoses;
	}


	public void setEventoses(Set<Eventos> eventoses) {
		this.eventoses = eventoses;
	}


	public Integer getAction() {
		return action;
	}


	public void setAction(Integer action) {
		this.action = action;
	}


	@Override
	public String toString() {
		return "TipoEventoDto [descripcion=" + descripcion + ", activo=" + activo + ", usuarioAlta=" + usuarioAlta
				+ ", classLabel=" + classLabel + ", action=" + action + ", eventoses=" + eventoses + "]";
	}
	
	

	
}
