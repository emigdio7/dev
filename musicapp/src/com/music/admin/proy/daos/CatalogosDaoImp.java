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
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.Clientes;
import com.music.admin.proy.vo.Rol;
import com.music.admin.proy.vo.TipoEvento;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Repository("catalogosDao")
@Transactional
public class CatalogosDaoImp  extends GenericHibernateDAOImpl implements CatalogosDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Rol> findAllRol() {
		
		List<Rol> lst = findAll(Rol.class);
		System.out.println(lst);
		return lst;
	}

	@Override
	public Rol findId(Integer empleadoId) {
		//find("select A from Rol where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		Rol emp = get(Rol.class, empleadoId);
		System.out.println(emp);
		return emp;
	}
	
	@Override
	public int save(Rol rol) {
		//find("select A from Rol where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		saveOrUpdate(rol);
		return 1;
	}

	
	@Override
	public List<TipoEvento> findAllEvento() {
		
		List<TipoEvento> lst = findAll(TipoEvento.class);
		System.out.println(lst);
		return lst;
	}

	@Override
	public TipoEvento findEventoId(Integer eventoId) {
		//find("select A from Rol where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		TipoEvento evento = get(TipoEvento.class, eventoId);
		System.out.println(evento);
		return evento;
	}
	
	@Override
	public int save(TipoEvento evento) {
		//find("select A from Rol where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		saveOrUpdate(evento);
		return 1;
	}
	
	/*
	public List<ConsultaUno> consultaX(TipoEvento evento) {
		
		
		 String sql = "SELECT NAME, APP FROM EMPLOYEE WHERE ID = ?";
		 
	        
		 Map<String, Object> mapa = jdbcTemplate.queryForMap(sql, 1);
	      List<ConsultaUno> lst 
		 for (Map m : results){
			 Consulta uno = new ConsultaUno();
			 uno.setNom((String)m.get('NAME'));
			 uno.setApp((String)m.get('APP'));
			 lst.add(uno);
			} 
		return lst;
	}
*/
}
