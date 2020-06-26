  /**
 *  ClientesDaoImp.java
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

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.Clientes;
import com.music.admin.proy.vo.Direccion;
import com.music.admin.proy.vo.Llamadas;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Component("clientesDao")
@Transactional
public class ClientesDaoImp  extends GenericHibernateDAOImpl implements ClientesDao {

	@Override
	public List<Clientes> findAllClientes() {
		List<Clientes> lst = findAll(Clientes.class);
		System.out.println(lst);
		return lst;
	}
	
	@Override
	public List<Clientes> findAllOnlyClientes() {
		List<Clientes> lst = findAll(Clientes.class);
		
		return lst;
	}

	@Override
	public Clientes findId(Integer clienteId) {
		Clientes emp = get(Clientes.class, clienteId);
		System.out.println(emp);
		return emp;
	}

	@Override
	public Clientes findIdLoadEventos(Integer clienteId) {
		Clientes emp = get(Clientes.class, clienteId);
		System.out.println(emp);
		System.out.println(emp.getEventoses());
		System.out.println(emp.getLlamadases());
		
		return emp;
	}

	@Override
	public Clientes findOnlyCliente(Integer clienteId) {
		Clientes emp = get(Clientes.class, clienteId);
		System.out.println(emp);
		/*System.out.println(emp.getEventoses());
		System.out.println(emp.getLlamadases());*/
		
		return emp;
	}
	
	@Override
	public int save(Clientes clientes) {
		//find("select A from Empleados where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		Direccion dir = clientes.getDireccion();
		saveOrUpdate(dir);
		saveOrUpdate(clientes);
		return 1;
	}
	
	@Override
	public int saveLlamada(Llamadas llamada) {
		//find("select A from Empleados where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		saveOrUpdate(llamada);
		System.out.print(llamada);
		return llamada.getLlamadaId();
	}

	public static final String  consulta = "select A from Llamadas A where A.cliente.clienteId = ? ";
	@Override
	public List<Llamadas> findLlamadasEmpleado(Integer clienteId) {
		
		List<Llamadas> lst = find(consulta, new Object [] { clienteId } );
		System.out.println(lst);
		return lst;
	}

	@Override
	public List<Clientes> findClientesConLike(String cadena) {
		Criteria query = getCurrentSession().createCriteria(Clientes.class);
		query.add(Restrictions.like("nombre", cadena, MatchMode.ANYWHERE));
		List<Clientes> lstClientes = query.list();
		System.out.println(lstClientes);
		return lstClientes;
	}

	
	@Override
	public int actualizaCliente(Clientes cliente) {
		
		
		Query query = getCurrentSession().createQuery("update Clientes set nombre = :nombre, apellidos = :apellidos,telefono = :telefono, correo = :correo, " +
				"usuarioAlta = :usuarioAlta, observaciones=:observaciones where clienteId = :clienteId");
		query.setParameter("nombre",cliente.getNombre());
		query.setParameter("apellidos",cliente.getApellidos());
		query.setParameter("telefono",cliente.getTelefono());
		query.setParameter("correo",cliente.getCorreo());
		query.setParameter("observaciones",cliente.getObservaciones());
		query.setParameter("usuarioAlta",cliente.getUsuarioAlta());
		query.setParameter("clienteId", cliente.getClienteId());
				
		int result = query.executeUpdate();
		Direccion dir = cliente.getDireccion();
		
		Query query2 = getCurrentSession().createQuery("update Direccion set calle = :calle, colonia = :colonia,ciudad = :ciudad, estado = :estado, codigop=:codigop, " +
				"usuarioAlta = :usuarioAlta where direccionId = :direccionId");
		
		query2.setParameter("calle",dir.getCalle());
		query2.setParameter("colonia",dir.getColonia());
		query2.setParameter("ciudad",dir.getCiudad());
		query2.setParameter("estado",dir.getEstado());
		query2.setParameter("codigop",dir.getCodigop());
		query2.setParameter("usuarioAlta",cliente.getUsuarioAlta());
		query2.setParameter("direccionId", dir.getDireccionId());
		
		result = query2.executeUpdate();
		
		return result; 
	}


	@Override
	public int eliminaLlamada(Llamadas llamada) {
		//find("select A from Empleados where empleadoId = :empleadoId", new Integer [] {empleadoId} ) ;
		delete(llamada);
		return 1;
	}

	
    @SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	@Override
	public List<String> getEmailCliente() {
	String hql = "select correo from Clientes where activo = 1";
	
	return getCurrentSession().createQuery(hql)
		   .list();
	
	}
	
}
