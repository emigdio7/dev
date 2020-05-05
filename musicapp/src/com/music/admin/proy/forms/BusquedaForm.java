package com.music.admin.proy.forms;
import java.io.Serializable;

/**
 * BusquedaForm.java
 * Fecha de creación: 15:07:36 15:07:36
 *
 * Copyright (c) 2016 Empresa S.A. de C.V. 
 * Jiutepec Morelos.
 * Todos los derechos reservados.
 *
 * Este software es información confidencial, propiedad de
 * Empresa S.A. de C.V. Esta información confidencial
 * no deberá ser divulgada y solo se podrá utilizar de acuerdo
 * a los términos que determine la propia empresa.
 */

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since RECICLA 1.0
 */
public class BusquedaForm implements Serializable{
	
 	/**
	 * 
	 */
	private static final long serialVersionUID = 5052876353504956138L;
	private String fechaInicial;
 	private String fechaFinal;
 	private String action;
 	
 	
 	
	/**
	 * @return the action
	 */
	public String getAction() {
		return action;
	}
	/**
	 * @param action the action to set
	 */
	public void setAction(String action) {
		this.action = action;
	}
	/**
	 * @return the fechaInicial
	 */
	public String getFechaInicial() {
		return fechaInicial;
	}
	/**
	 * @param fechaInicial the fechaInicial to set
	 */
	public void setFechaInicial(String fechaInicial) {
		this.fechaInicial = fechaInicial;
	}
	/**
	 * @return the fechaFinal
	 */
	public String getFechaFinal() {
		return fechaFinal;
	}
	/**
	 * @param fechaFinal the fechaFinal to set
	 */
	public void setFechaFinal(String fechaFinal) {
		this.fechaFinal = fechaFinal;
	}
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BusquedaForm [fechaInicial=" + fechaInicial + ", fechaFinal=" + fechaFinal + ", action=" + action + "]";
	}
 	
 	
 	
}
