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

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.utils.Utils;
import com.music.admin.proy.vo.Eventos;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Component("eventosDao")
@Transactional
public class EventosDaoImp  extends GenericHibernateDAOImpl implements EventosDao {

	@Override
	public List<Eventos> findAllEventos() {
		
		List<Eventos> lst = findAll(Eventos.class);
		System.out.println(lst);
		return lst;
	}

	@Override
	public Eventos findId(Integer eventoId) {
		//find("select A from Eventos where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		Eventos emp = get(Eventos.class, eventoId);
		System.out.println(emp);
		return emp;
	}
	
	@Override
	public int save(Eventos evento) {
		saveOrUpdate(evento);
		return evento.getEventoId();
	}
	
	@Override
	public int actualizaEvento(Eventos evento) {
		saveOrUpdate(evento);
		return evento.getEventoId();
	}

	@Override
	public List<Eventos> consultaCriterios(String fechaInicio, String fechaFinal) {
//		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
//		Calendar c = Calendar.getInstance();
//		Calendar c1 = Calendar.getInstance();
//		SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
		List<Eventos> lstResult =  null;
		
		
		StringBuilder query = new StringBuilder("from Eventos ");
		try {
//			c.setTime(sdf.parse(fechaInicio));
//			c1.setTime(sdf.parse(fechaFinal));
			
			query.append(" where fechaEvento >= '" + fechaInicio +"'");
			query.append(" and fechaEvento <= '" + fechaFinal + "'");
			query.append(" order by fechaEvento");
			Query result =  getCurrentSession().createQuery(query.toString());
			
			lstResult = result.list();
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return lstResult;
	}
	
	@Override
	public List<Eventos> consultaEventos() {
//		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
//		Calendar c = Calendar.getInstance();
//		Calendar c1 = Calendar.getInstance();
//		SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
		List<Eventos> lstResult =  null;
		
		
		StringBuilder query = new StringBuilder("from Eventos ");
		try {
//			c.setTime(sdf.parse(fechaInicio));
//			c1.setTime(sdf.parse(fechaFinal));
//			query.append(" where fechaEvento >= '" + fechaInicio +"'");
//			query.append(" and fechaEvento <= '" + fechaFinal + "'");
//			query.append(" order by fechaEvento");
			Query result =  getCurrentSession().createQuery(query.toString());
			
			lstResult = result.list();
			for ( Eventos eve :lstResult) {
				Map<String, String> map = Utils.calculaFechaEventoCalendario(eve.getFechaEvento(), eve.getHoraInicio());
				
				eve.setFechaCalendar(map.get("fechaInicio"));
				eve.setFechaCalendarFin(map.get("fechaFin"));
				
			}
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return lstResult;
	}
	
	public List<Eventos> consultaEventosPorClienteId(Integer clienteId) {
		List<Eventos> lstResult =  null;
		
		StringBuilder query = new StringBuilder("from Eventos where clienteId = "+ clienteId);
		try {

			Query result =  getCurrentSession().createQuery(query.toString());
			
			lstResult = result.list();
			for ( Eventos eve :lstResult) {
				Map<String, String> map = Utils.calculaFechaEventoCalendario(eve.getFechaEvento(), eve.getHoraInicio());
				
				eve.setFechaCalendar(map.get("fechaInicio"));
				eve.setFechaCalendarFin(map.get("fechaFin"));
				
			}
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return lstResult;
	}
	
}
