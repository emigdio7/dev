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

import com.music.admin.proy.daos.EventosDao;
import com.music.admin.proy.vo.Eventos;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Service("eventosService")
public class EventosServiceImp implements EventosService {

	 @Autowired
	    private EventosDao eventosDao;

		@Override
		public List<Eventos> findAllEventos() {
			return eventosDao.findAllEventos();
		}
		
		@Override
		public Eventos findId(Integer eventoId) {
			return eventosDao.findId(eventoId);
		}

		@Override
		public int actualizaEvento(Eventos evento) {
			System.out.println("Actualiza Evento " + evento);
			Eventos eve = eventosDao.findId(evento.getEventoId());
			eve.setGrupo(evento.getGrupo());
		//	eve.setCategory(evento.getCategory());
			eve.setActivo(evento.getActivo());
			return eventosDao.actualizaEvento(eve);
		}
		
		@Override
		public int save(Eventos evento) {
			System.out.println(evento.toString());
			return eventosDao.save(evento);
		}
		
		@Override
		public List<Eventos> consultaCriterios(String fechaInicio, String fechaFinal) {
			return eventosDao.consultaCriterios(fechaInicio, fechaFinal);
		}

		@Override
		public List<Eventos> consultaEventos() {
			return eventosDao.consultaEventos();
		}
		
		@Override
		public List<Eventos> consultaEventosPorClienteId(Integer ClienteId) {
			return eventosDao.consultaEventosPorClienteId(ClienteId);
		}
		
}
