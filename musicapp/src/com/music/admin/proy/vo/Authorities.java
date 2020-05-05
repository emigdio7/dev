  /**
 *  Authorities.java
 * Fecha de creación: 30 dic. 2018 13:48:09 
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

import java.io.Serializable;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class Authorities  implements Serializable {
		
	/**
	 * 
	 */
	private static final long serialVersionUID = -7492967809424619540L;
	
	private String authority;
	private Usuario usuario;
	
	/**
	 * @return the authority
	 */
	public String getAuthority() {
		return authority;
	}
	/**
	 * @param authority the authority to set
	 */
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	/**
	 * @return the usuario
	 */
	public Usuario getUsuario() {
		return usuario;
	}
	/**
	 * @param usuario the usuario to set
	 */
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	
	/*
	@Override
	public String toString() {
		return "Authorities [authority=" + authority + ", usuario=" + usuario + "]";
	}
	 
	*/
	
}
