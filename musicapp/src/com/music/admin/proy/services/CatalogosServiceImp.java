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

import com.music.admin.proy.daos.CatalogosDao;
import com.music.admin.proy.daos.EmpleadosDao;
import com.music.admin.proy.vo.Clientes;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Llamadas;
import com.music.admin.proy.vo.Rol;
import com.music.admin.proy.vo.TipoEvento;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Service("catalogosService")
public class CatalogosServiceImp implements CatalogosService {

	 @Autowired
	    private CatalogosDao catalogosDao;

		@Override
		public List<Rol> findAllRol() {
			return catalogosDao.findAllRol();
		}
		
		@Override
		public Rol findId(Integer rolId) {
			return catalogosDao.findId(rolId);
		}

		@Override
		public int save(Rol rol) {
			return catalogosDao.save(rol);
		}

		/*******************************************/
		@Override
		public List<TipoEvento> findAllEvento() {
			return catalogosDao.findAllEvento();
		}

		@Override
		public TipoEvento findEventoId(Integer eventoId) {
			return catalogosDao.findEventoId(eventoId);
		}

		@Override
		public int save(TipoEvento evento) {
			return catalogosDao.save(evento);
		}

		
}
