  /**
 *  UserDetailsDaoImp.java
 * Fecha de creación: 30 dic. 2018 13:31:50 
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
package com.music.admin.proy.daos;


import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.Usuario;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Component("userDetailsDao")
@Transactional
public class UserDetailsDaoImp  extends GenericHibernateDAOImpl implements UserDetailsDao {
	
	  @Override
	  public Usuario findUserByUsername(String username) {
	    return getCurrentSession().get(Usuario.class, username);
	  }
}
