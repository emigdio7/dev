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

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class Rol implements java.io.Serializable {

	
	/** 
	 * 
	 */
	private static final long serialVersionUID = -2033982492725785143L;
	
	
	private Integer rolId;
	private String descripcion;
	private Integer activo;
//	private String claveEmpleado;
	//private String classLabel;

	public Rol() {
	}

	
	/*
	
	
	public String getClassLabel() {
		return classLabel;
	}




	
	public void setClassLabel(String classLabel) {
		this.classLabel = classLabel;
	}


*/

	public Rol(Integer rolId) {
		this.rolId= rolId;
	}
	
	/**
	 * @return the rolId
	 */
	public Integer getRolId() {
		return rolId;
	}

	/**
	 * @param rolId the rolId to set
	 */
	public void setRolId(Integer rolId) {
		this.rolId = rolId;
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
	 * @return the claveEmpleado
	 */

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((rolId == null) ? 0 : rolId.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Rol other = (Rol) obj;
		if (rolId == null) {
			if (other.rolId != null)
				return false;
		} else if (!rolId.equals(other.rolId))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Rol [rolId=" + rolId + ", descripcion=" + descripcion + ", activo=" + activo + "]";
	}




	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	
	

	



}
