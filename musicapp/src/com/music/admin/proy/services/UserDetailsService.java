  /**
 *  UserDetailsService.java
 * Fecha de creación: 30 dic. 2018 13:39:55 
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
package com.music.admin.proy.services;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Usuario;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public interface UserDetailsService {
	
	UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;
	
	Empleados loadIdUserByUsername(String claveEmpleado);
	
}
