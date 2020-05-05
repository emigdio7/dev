/**
 *  Llamadas.java
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
public class TipoEvento implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7451856248650551153L;
	
	private Integer tipoEventoId;
	private String descripcion;
	private Integer activo;
	private String usuarioAlta;
	private Set<Eventos> eventoses = new HashSet<Eventos>(0);
	private String classLabel;
	
	public TipoEvento() {
	}

	public TipoEvento(String descripcion) {
		this.descripcion = descripcion;
	}

	public TipoEvento(String descripcion, Integer activo, String usuarioAlta, Set<Eventos> eventoses) {
		this.descripcion = descripcion;
		this.activo = activo;
		this.usuarioAlta = usuarioAlta;
		this.eventoses = eventoses;
	}

	
	
	/**
	 * @return the classLabel
	 */
	public String getClassLabel() {
		return classLabel;
	}

	/**
	 * @param classLabel the classLabel to set
	 */
	public void setClassLabel(String classLabel) {
		this.classLabel = classLabel;
	}

	/**
	 * @return the tipoEventoId
	 */
	public Integer getTipoEventoId() {
		return tipoEventoId;
	}

	/**
	 * @param tipoEventoId the tipoEventoId to set
	 */
	public void setTipoEventoId(Integer tipoEventoId) {
		this.tipoEventoId = tipoEventoId;
	}

	/**
	 * @return the descripcion
	 */
	public String getDescripcion() {
		return descripcion;
	}

	/**
	 * @param descripcion the descripcion to set
	 */
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	/**
	 * @return the activo
	 */
	public Integer getActivo() {
		return activo;
	}

	/**
	 * @param activo the activo to set
	 */
	public void setActivo(Integer activo) {
		this.activo = activo;
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
	 * @return the eventoses
	 */
	public Set<Eventos> getEventoses() {
		return eventoses;
	}

	/**
	 * @param eventoses the eventoses to set
	 */
	public void setEventoses(Set<Eventos> eventoses) {
		this.eventoses = eventoses;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TipoEvento [tipoEventoId=" + tipoEventoId + ", descripcion=" + descripcion + ", activo=" + activo
				+ ", usuarioAlta=" + usuarioAlta + ", eventoses=" + eventoses + "]";
	}


}
