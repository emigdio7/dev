/**
 *  Clientes.java
 * Fecha de creación: 16 dic 2018 21:51:04 
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
package com.music.admin.proy.controller;

import java.util.ArrayList;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.admin.proy.services.UserDetailsService;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/clientes")
public class ClientesController {  

	protected static final Log logger = LogFactory.getLog(ClientesController.class.getName());
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String home(Model modelo) {
		System.out.println("en homeeeee");    
		logger.info("Mensaje de home");	
		UserDetails usr =  userDetailsService.loadUserByUsername("admin");
		System.out.println("en usr: " + usr);
		modelo.addAttribute("seccion", "Inicio");
		modelo.addAttribute("subSeccion", "");
		return "inicio";   
	}

	@GetMapping("/muestraClientes")
	public String muestraClientes(Model modelo) {
        modelo.addAttribute("LstClientes", new ArrayList());
        modelo.addAttribute("seccion", "Clientes");
		modelo.addAttribute("subSeccion", "detalle");
        System.out.println("En vista Clientes");
        return "clientes/clientes";
    }
	
		
}
