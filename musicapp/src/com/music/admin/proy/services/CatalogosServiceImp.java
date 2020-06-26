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
import com.music.admin.proy.vo.CatCategoriaCliente;
import com.music.admin.proy.vo.CatCategoriaProveedor;
import com.music.admin.proy.vo.CatGeneroGrupos;
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

	 
	      //  CAT PUESTOS
	 
	 
	 
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
		
		@Override
		public int deleteRol(Integer idRol) {
			
			return catalogosDao.deleteRol(idRol);
		}
		

		
		
		//CAT TIPO EVENTO
		
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

		@Override
		public int saveCatalogoEventos(TipoEvento tipoEvento) {
			tipoEvento.setUsuarioAlta("luis");
			return catalogosDao.saveCatalogoEvento(tipoEvento);
		}

		@Override
		public int deleteEventoById(Integer idevento) {
	
			return catalogosDao.deleteEventoById(idevento);
			}
		
		
		// CAT CATEGORIA CLIENTES

		@Override
		public List<CatCategoriaCliente> FindAllCategoriaCliente() {
			// TODO Auto-generated method stub
			return catalogosDao.FindAllCategoriaCliente();
		}

		@Override
		public void saveCategoriaCliente(CatCategoriaCliente categoria) {
			categoria.setUsuarioAlta("luis");
			  catalogosDao.saveCategoriaCliente(categoria);
			
		}

		@Override
		public int deleteCategoriaCliente(Integer idCategoriaCliente) {
			// TODO Auto-generated method stub
			return catalogosDao.deleteCategoriaCliente(idCategoriaCliente);
		}
		
		
		// CAT CATEGORIA PROVEEDROES

		@Override
		public List<CatCategoriaProveedor> findAllCategoriasProvedor() {
			// TODO Auto-generated method stub
			return catalogosDao.findAllCategoriasProvedor();
		}

		@Override
		public void saveCategoriaProveedor(CatCategoriaProveedor categoria) {
			// TODO Auto-generated method stub
			categoria.setUsuarioAlta("luis");
			catalogosDao.saveCategoriaProveedor(categoria);
			
		}

		@Override
		public int deleteCategoriaProveedor(Integer idCategoriaProveedor) {
			// TODO Auto-generated method stub
			return catalogosDao.deleteCategoriaProveedor(idCategoriaProveedor);
		}
		
		
		// CAT GENERO GRUPOS

		@Override
		public List<CatGeneroGrupos> findAllGeneroGrupos() {
			
			return catalogosDao.findAllGeneroGrupos();
		}

		@Override
		public void saveGeneroGrupo(CatGeneroGrupos genero) {
			genero.setUsuarioAlta("luis");
			catalogosDao.saveGeneroGrupo(genero);	
		}

		@Override
		public int deleteGeneroGrupo(Integer idGeneroGrupo) {
			return catalogosDao.deleteGeneroGrupo(idGeneroGrupo);
		}

		
		
}
