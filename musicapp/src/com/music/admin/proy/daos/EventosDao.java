  /**
 *  EmpleadosDao.java
 * Fecha de creación: 30 dic. 2018 13:30:45 
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

import com.music.admin.proy.vo.Eventos;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public interface EventosDao {
	

	List<Eventos> findAllEventos();
	
	Eventos findId(Integer eventoId);
	
	int actualizaEvento(Eventos evento);
	
	int save(Eventos eventos);
	
	List<Eventos> consultaCriterios(String fechaInicio, String fechaFinal);
	
	List<Eventos> consultaEventos();
	
	List<Eventos> consultaEventosPorClienteId(Integer ClienteId);
	
	
}