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

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/contabilidad")
public class ContabilidadController {

	protected static final Log logger = LogFactory.getLog(ContabilidadController.class.getName());
	
	@GetMapping(value = "/ingresos")
	public String muestraIngresos(Model model) {
		logger.info("en muestra Ingresos Mensaje de home");
		model.addAttribute("seccion", "Contabilidad");
		model.addAttribute("subSeccion", "Ingresos");
		return "calendario/muestraCalendario";
	}
	
	@GetMapping(value = "/egresos")
	public String muestraEgresos(Model model) {
		logger.info("en muestra Egresos Mensaje de home");
		model.addAttribute("seccion", "Contabilidad");
		model.addAttribute("subSeccion", "Egresos");
		return "calendario/muestraCalendario";
	}
	
	@GetMapping(value = "/facturas")
	public String muestraFacturas(Model model) {
		logger.info("en muestra facturas Mensaje de home");
		model.addAttribute("seccion", "Contabilidad");
		model.addAttribute("subSeccion", "Facturas");
		return "calendario/muestraCalendario";
	}
	
	@GetMapping(value = "/cotizaciones")
	public String muestraCotizaciones(Model model) {
		logger.info("en muestra cotizaciones Mensaje de home");
		model.addAttribute("seccion", "Contabilidad");
		model.addAttribute("subSeccion", "Cotizaciones");
		return "contabilidad/cotizaciones";
	}
		
}
