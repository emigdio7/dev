/**
 * ClienteView.java
 * Fecha de creación: 08:10:50 08:10:50
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
package com.music.admin.proy.forms;

import java.io.Serializable;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since RECICLA 1.0
 */
public class ClienteView implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6309437767445556578L;
	
	
	private Integer clienteId;
	private String informacion;
	
	/**
	 * @return the clienteId
	 */
	public Integer getClienteId() {
		return clienteId;
	}
	/**
	 * @param clienteId the clienteId to set
	 */
	public void setClienteId(Integer clienteId) {
		this.clienteId = clienteId;
	}
	/**
	 * @return the informacion
	 */
	public String getInformacion() {
		return informacion;
	}
	/**
	 * @param informacion the informacion to set
	 */
	public void setInformacion(String informacion) {
		this.informacion = informacion;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ClienteView [clienteId=" + clienteId + ", informacion=" + informacion + "]";
	}
	
	
}
