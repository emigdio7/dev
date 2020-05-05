  /**
 *  UserDetailsServiceImp.java
 * Fecha de creación: 30 dic. 2018 13:40:19 
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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.daos.EmpleadosDao;
import com.music.admin.proy.daos.UserDetailsDao;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Usuario;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Service("userDetailsService")
public class UserDetailsServiceImp implements UserDetailsService {

  @Autowired
  private UserDetailsDao userDetailsDao;

  @Autowired
  private EmpleadosDao empleadosDao;
  
  @Transactional(readOnly = true)
  @Override
  public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

    Usuario user = userDetailsDao.findUserByUsername(email);
    UserBuilder builder = null;
    System.out.println("Usuario : " + user);
    
    if (user != null) {
    	System.out.println(" ------------------------------- " );
      builder = org.springframework.security.core.userdetails.User.withUsername(email);
      System.out.println(" ------------------------------- " );
      builder.disabled(!user.isEnabled());
      builder.password(user.getPasswordd());  
      
      String[] authorities = user.getAuthorities()
          .stream().map(a -> a.getAuthority()).toArray(String[]::new);

      builder.authorities(authorities);
      
    } else {
      System.out.println("Usuario no encontrado");
      throw new UsernameNotFoundException("Usuario no Encontrado.");
    }
    
    return builder.build();
  }
  
  
  @Transactional(readOnly = true)
  @Override
  public Empleados loadIdUserByUsername(String claveEmpleado)  {

    Empleados emp = empleadosDao.findEmpleado(claveEmpleado);
    System.out.println("Empleado : " + emp);
    
    return emp;
  }
  
}
