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

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.Direccion;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Llamadas;
import com.music.admin.proy.vo.Rol;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Component("empleadosDao")
@Transactional
public class EmpleadosDaoImp  extends GenericHibernateDAOImpl implements EmpleadosDao {

	@Override
	public List<Empleados> findAllEmpleados() {
		
		List<Empleados> lst = findAll(Empleados.class);
		System.out.println(lst);
		return lst;
	}

	@Override
	public Empleados findId(Integer empleadoId) {
		//find("select A from Empleados where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		Empleados emp = get(Empleados.class, empleadoId);
		System.out.println(emp);
		return emp;
	}
	
	@Override
	public int save(Empleados empleado) {
		//find("select A from Empleados where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		Direccion dir = empleado.getDireccion();
		saveOrUpdate(dir);
		Rol rol = get(Rol.class, empleado.getRol().getRolId());
		empleado.setRol(rol);
		saveOrUpdate(empleado);
		return 1;
	}

	@Override
	public List<Llamadas> findLlamadasEmpleado(Integer empleadoId) {
		List<Llamadas> lst = find("select A from Llamadas A where A.empleado.empleadoId = ? ", new Object [] {empleadoId} );
		System.out.println(lst);
		return lst;
	}

	@Override
	public Empleados findEmpleado(String claveEmpleado) {
		Empleados emp= queryForEntity("select A from Empleados A where A.claveEmpleado = ? ", new Object [] {claveEmpleado} );
		return emp;
	}
}
