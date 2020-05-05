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

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.admin.proy.daos.EmpleadosDao;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Llamadas;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Service("empleadosService")
public class EmpleadosServiceImp implements EmpleadosService {

	    @Autowired
	    private EmpleadosDao empleadosDao;

		@Override
		public List<Empleados> findAllEmpleados() {
			return empleadosDao.findAllEmpleados();
		}
		
		@Override
		public Empleados findId(Integer empleadoId) {
			return empleadosDao.findId(empleadoId);
		}

		@Override
		public int save(Empleados empleado) {
			return empleadosDao.save(empleado);
		}

		@Override
		public List<Llamadas> findLlamadasEmpleado(Integer empleadoId) {
			return empleadosDao.findLlamadasEmpleado(empleadoId);
		}
}
