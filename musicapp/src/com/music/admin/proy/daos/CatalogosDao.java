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
public interface CatalogosDao {
	
    //CAT PUESTOS
	List<Rol> findAllRol();
	
	Rol findId(Integer rolId);
	
	int save(Rol  rol);
	
	int deleteRol(Integer idRol);
	
	
	//CAT TIPO EVENTO
	int save(TipoEvento evento);

	int saveCatalogoEvento(TipoEvento tipoEvento);

	int deleteEventoById(Integer id);

	List<TipoEvento> findAllEvento();

	TipoEvento findEventoId(Integer eventoId);
	
	
	//CAT CATEGORIA CLIENTES
	
	List<CatCategoriaCliente> FindAllCategoriaCliente ();
	
	void saveCategoriaCliente(CatCategoriaCliente categoria);
	
	int deleteCategoriaCliente(Integer idCategoriaCliente);
	
	
	//CAT CATEGORIA PROVEEDORES
	
		List<CatCategoriaProveedor> findAllCategoriasProvedor();
		
		void saveCategoriaProveedor(CatCategoriaProveedor categoria);
		
		int deleteCategoriaProveedor(Integer idCategoriaProveedor);
		
		

		//CAT GENERO GRUPOS
		
		List<CatGeneroGrupos> findAllGeneroGrupos();
			
		void saveGeneroGrupo(CatGeneroGrupos genero);
			
		int deleteGeneroGrupo(Integer idGeneroGrupo);
	
}