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

import com.music.admin.proy.vo.Clientes;
import com.music.admin.proy.vo.Llamadas;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public interface ClientesDao {
	
	List<Clientes> findAllClientes();
	
	List<Clientes> findAllOnlyClientes();	
	
	Clientes findId(Integer clienteId);
	
	Clientes findIdLoadEventos(Integer clienteId);
	
	int save(Clientes clientes);
	
	int saveLlamada(Llamadas llamada);
	
	List<Llamadas> findLlamadasEmpleado(Integer clienteId);
	
	List<Clientes> findClientesConLike(String cadena);

	int actualizaCliente(Clientes cliente);
	
	int eliminaLlamada(Llamadas llamada);
	
	Clientes findOnlyCliente(Integer clienteId);
	
	List<String> getEmailCliente();
	
}