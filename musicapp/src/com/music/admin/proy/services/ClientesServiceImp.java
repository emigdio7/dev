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

import com.music.admin.proy.daos.ClientesDao;
import com.music.admin.proy.daos.EmpleadosDao;
import com.music.admin.proy.vo.ClienteDto;
import com.music.admin.proy.vo.Clientes;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Llamadas;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Service("clientesService")
public class ClientesServiceImp implements ClientesService {

	
	@Autowired
    private ClientesDao clientesDao;
	  
	@Override
	public List<Clientes> findAllClientes() {
		return clientesDao.findAllClientes();
	}

	@Override
	public List<Clientes> findAllOnlyClientes() {
		return clientesDao.findAllOnlyClientes();
	}

	
	@Override
	public List<Clientes> findClientesConLike(String cadena) {
		return clientesDao.findClientesConLike(cadena);
	}
	
	@Override
	public Clientes findId(Integer clienteId) {
		return clientesDao.findId(clienteId);
	}

	@Override
	public Clientes findIdLoadEventos(Integer clienteId) {
		return clientesDao.findIdLoadEventos(clienteId);
	}
	
	@Override
	public Clientes findOnlyClienteId(Integer clienteId) {
		return clientesDao.findOnlyCliente(clienteId);
	}
	
	@Override
	public int save(Clientes  clientes) {
		Clientes cte = new Clientes();
		/*
		cte.setNombre(cteDto.getNombre());
		cte.setApellidos(cteDto.getApellidos());
		cte.setTelefono(cteDto.getTelefono());
		cte.setCorreo(cteDto.getCorreo());
		*/
		clientesDao.save(clientes);
		
	
		return 0;
	}

	@Override
	public int saveLlamada(Llamadas llamada) {
		return clientesDao.saveLlamada(llamada);
	}
	
	@Override
	public List<Llamadas> findLlamadasCliente(Integer clienteId) {
	//	List<Llamadas> lstEmpleados = clientesDao.findLlamadasEmpleado(clienteId);
		return clientesDao.findLlamadasEmpleado(clienteId);
	}

	@Override
	public int actualizaCliente(Clientes cliente) {
		return clientesDao.actualizaCliente(cliente);
	}
	
	@Override
	public int eliminaLlamada(Llamadas llamada) {
		return clientesDao.eliminaLlamada(llamada);
	}

	@Override
	public List<String> getEmailCliente() {
		// TODO Auto-generated method stub
		return clientesDao.getEmailCliente();
	}


	
	
}
