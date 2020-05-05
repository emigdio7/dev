/**
 * EmailService.java
 * Fecha de creación: 25 nov 2018 11:23:18
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
package com.music.admin.proy.services;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since RECICLA 1.0
 */
public interface EmailService {
	 
	public void sendSimpleMessage(String to, String subject, String text);
	 
}
