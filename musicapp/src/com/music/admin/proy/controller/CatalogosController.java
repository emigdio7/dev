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

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.admin.proy.services.CatalogosService;
import com.music.admin.proy.services.EmpleadosService;
import com.music.admin.proy.vo.Rol;
import com.music.admin.proy.vo.TipoEvento;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/catalogos")
public class CatalogosController {

	protected static final Log logger = LogFactory.getLog(CatalogosController.class.getName());

	@Autowired
	private CatalogosService catalogosService;
	
	@GetMapping(value = "/puestos")
	public String muestraPuestos(Model model) {
		logger.info("en muestra calendario Mensaje de home");	
		model.addAttribute("seccion", "Puestos");
		model.addAttribute("subSeccion", "Edicion");
		List<Rol> lstPuestos  = catalogosService.findAllRol();
		model.addAttribute("lstPuestos", lstPuestos);
		 
		return "catalogos/listaPuestos";
	}
	
	@PostMapping(value = "/guardaPuestos")
	public String guardaPuestos(Model model,  @RequestParam String rolId,  @RequestParam String action) {
		logger.info("en muestra calendario Mensaje de home");	
		model.addAttribute("seccion", "Puestos");
		model.addAttribute("subSeccion", "Edicion");
		List<Rol> lstPuestos  = catalogosService.findAllRol();
		model.addAttribute("lstPuestos", lstPuestos);
		 
		return "catalogos/listaPuestos";
	}

	
	@GetMapping(value = "/eventos")
	public String muestraEventos(Model model) {
		logger.info("en muestra tipo de Eventos Mensaje de home");	
		model.addAttribute("seccion", "Eventos");
		model.addAttribute("subSeccion", "Edicion");
		List<TipoEvento> lstEventos  = catalogosService.findAllEvento();
		model.addAttribute("lstEventos", lstEventos);
		 
		return "catalogos/listaEventos";
	}

	@PostMapping(value = "/guardaEventos")
	public String guardaEventos(Model model,  @RequestParam String rolId,  @RequestParam String action) {
		logger.info("en guardar Tipo de Eventos Mensaje de home");	
		model.addAttribute("seccion", "Eventos");
		model.addAttribute("subSeccion", "Calendario");
		List<TipoEvento> lstEventos  = catalogosService.findAllEvento();
		model.addAttribute("lstEventos", lstEventos);
		 
		return "catalogos/listaEventos";
	}
	
}
