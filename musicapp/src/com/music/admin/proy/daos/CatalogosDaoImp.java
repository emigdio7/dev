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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.CatCategoriaCliente;
import com.music.admin.proy.vo.CatCategoriaProveedor;
import com.music.admin.proy.vo.CatGeneroGrupos;
import com.music.admin.proy.vo.Rol;
import com.music.admin.proy.vo.TipoEvento;

/**
 * Descripcion:
 * 
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Repository("catalogosDao")
@Transactional
public class CatalogosDaoImp extends GenericHibernateDAOImpl implements CatalogosDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	// CAT PUESTOS


	@Transactional
	@Override
	public int deleteRol(Integer idRol) {
	String hql = "delete Rol where rolId = :idRol";
		
		return getCurrentSession().createQuery(hql)
				.setInteger("idRol", idRol)
				.executeUpdate();
		
	}

	@Override
	public List<Rol> findAllRol() {

		List<Rol> lst = findAll(Rol.class);
		System.out.println(lst);
		return lst;
	}

	@Override
	public Rol findId(Integer empleadoId) {
		// find("select A from Rol where empleadoId = :empleadoId", new Integer []
		// {empleadoId} ) ;
		Rol emp = get(Rol.class, empleadoId);
		System.out.println(emp);
		return emp;
	}

	@Override
	public int save(Rol rol) {
		// find("select A from Rol where empleadoId = :empleadoId", new Integer []
		// {empleadoId} ) ;
		saveOrUpdate(rol);
		return 1;
	}

      // CAT VEVENTOS
	
	@Transactional(readOnly = true)
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

	@Transactional
	@Override
	public int saveCatalogoEvento(TipoEvento tipoEvento) {
		
		if(tipoEvento.getTipoEventoId()!=null) {
			System.out.println("ENTRO A UPDATE");
			update(tipoEvento);
		}else {
			System.out.println("ENTRO A SAVE");
			save(tipoEvento);
		}
		return 1;
	}

	@Override
	public int deleteEventoById(Integer idEvento) {
		//TipoEvento
		String hql = "delete TipoEvento where TIPO_EVENTO_ID = :idEvento";
		
		return getCurrentSession().createQuery(hql)
				.setInteger("idEvento", idEvento)
				.executeUpdate();
	
	}
	
	
	    // CAT CATEGORIA CLIENTES

	@Transactional(readOnly = true)
	@Override
	public List<CatCategoriaCliente> FindAllCategoriaCliente() {
		return findAll(CatCategoriaCliente.class);
	}

    @Transactional
	@Override
	public void saveCategoriaCliente(CatCategoriaCliente categoriaCliente) {
		
	   saveOrUpdate(categoriaCliente);
	}

    @Transactional
	@Override
	public int deleteCategoriaCliente(Integer idCategoriaCliente) {
        String hql = "delete CatCategoriaCliente  where catClienteId = :idCategoriaCliente";
		
		return getCurrentSession().createQuery(hql)
				.setInteger("idCategoriaCliente", idCategoriaCliente)
				.executeUpdate();
	}
    
    
	//CAT CATEGORIA PROVEEDORES

    @Transactional(readOnly = true)
	@Override
	public List<CatCategoriaProveedor> findAllCategoriasProvedor() {
		
		return findAll(CatCategoriaProveedor.class);
	}

    @Transactional
	@Override
	public void saveCategoriaProveedor(CatCategoriaProveedor categoria) {
		
    	saveOrUpdate(categoria);
		
	}

    @Transactional
	@Override
	public int deleteCategoriaProveedor(Integer idCategoriaProveedor) {
    	 String hql = "delete CatCategoriaProveedor  where categoriaProveedorId = :idCategoriaProveedor";
 		
 		return getCurrentSession().createQuery(hql)
 				.setInteger("idCategoriaProveedor", idCategoriaProveedor)
 				.executeUpdate();
	}
    
    // CAT GENERO GRUPOS

    @Transactional(readOnly = true)
	@Override
	public List<CatGeneroGrupos> findAllGeneroGrupos() {
		
		return findAll(CatGeneroGrupos.class);
	}

	@Transactional
	@Override
	public void saveGeneroGrupo(CatGeneroGrupos genero) {
		// TODO Auto-generated method stub
		saveOrUpdate(genero);
	}

	@Transactional
	@Override
	public int deleteGeneroGrupo(Integer idGeneroGrupo) {
		String hql = "delete CatGeneroGrupos  where generoGrupoId = :idGeneroGrupo";
	 		
	 	return getCurrentSession().createQuery(hql)
	 			.setInteger("idGeneroGrupo", idGeneroGrupo)
	 			.executeUpdate();
	}
	
	
}
