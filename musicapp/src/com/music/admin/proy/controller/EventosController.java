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

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.admin.proy.forms.EventoForm;
import com.music.admin.proy.services.EventosService;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Eventos;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/eventos")
public class EventosController {

	protected static final Log logger = LogFactory.getLog(EventosController.class.getName());
	
	@Autowired
	private EventosService eventosService;
	
	@GetMapping(value = "/muestraCalendario")
	public String muestraCalendario(Model model, HttpServletRequest request) {
		
		logger.debug("en muestra calendario Mensaje de home");
		System.out.println("Entra a muestra calendario");
		model.addAttribute("seccion", "Eventos");
		model.addAttribute("subSeccion", "Calendario");
		HttpSession session = request.getSession();
		Empleados emp =  (Empleados)session.getAttribute("empleado");
		logger.info("emp:" + emp);
		System.out.println("emp:" + emp);
		model.addAttribute("empleado", emp);
		return "eventos/muestraCalendario";
	}

	
	
	@PostMapping(value = "/guardaEventoNuevo")
	public String guardaEventoNuevo(@ModelAttribute("EventoForm") EventoForm eventoForm ) {
		logger.info("en muestra calendario Mensaje de home" + eventoForm);
		return "ok";
	}
	
	@GetMapping(value = "/galeria")
	public String muestraGaleria(Model model) {
		logger.info("en muestra calendario Mensaje de home");
		model.addAttribute("seccion", "Eventos");
		model.addAttribute("subSeccion", "Galeria");
		return "eventos/galeria";
	}
	
	@PostMapping(value = "/consultaEventos")
	public @ResponseBody List<Eventos> consultaEventos(Model model) {
		logger.info("en consultaEventos calendario ");
		
		List<Eventos> eventos = eventosService.consultaEventos();
//		model.addAttribute("seccion", eventos);
//		model.addAttribute("seccion", "Eventos");
//		model.addAttribute("subSeccion", "Galeria");
		return eventos;
	}
	
	 @PostMapping(value = "/guardaEvento")
     public @ResponseBody String guardaEvento(Model model, 
    		 @RequestParam Integer eventoId, @RequestParam String grupo, @RequestParam String fechaEvento, @RequestParam String lugarEvento,
    		 @RequestParam String category, @RequestParam String usuarioAlta) {
			
		System.out.println("en guardaguardaEvento");
		System.out.println("eventoId: " +eventoId);
		System.out.println("grupo: " +grupo);
		System.out.println("fechaEvento: " +fechaEvento);
		System.out.println("lugarEvento: " +lugarEvento);
		
		System.out.println("usuarioAlta: " +usuarioAlta);
		System.out.println("usuarioAlta: " +usuarioAlta);
		System.out.println("category: " +category);
		
		Eventos evento = new Eventos();
		if (eventoId!=null && eventoId>0)
			evento.setEventoId(eventoId);
			
		evento.setGrupo(grupo);
		evento.setFechaEvento(fechaEvento);
		evento.setUsuarioAlta(usuarioAlta);
		evento.setLugarEvento(lugarEvento);
		evento.setHoraInicio("12:00");
		evento.setHoraFin("23:99");
 		evento.setCategory("bg-success");
		evento.setActivo(1);
		//evento.setTipoEvento(tipoEvento);
		
		
		int id = eventosService.save(evento);
		
		return "ok|"+id;
		
     }

	 @PostMapping(value = "/actualizaEvento")
     public @ResponseBody String actualizaEvento(Model model, @RequestParam Integer eventoId, 
    		 @RequestParam String grupo, @RequestParam Integer activo, @RequestParam String category ) {
			
		System.out.println("en guardaguardaEvento");
		System.out.println("eventoId: " +eventoId);
		System.out.println("grupo: " +grupo);
		System.out.println("category: " +category);
		System.out.println("ACTIVO	: " +activo);
		
		Eventos evento = new Eventos();
		evento.setEventoId(eventoId);
		evento.setGrupo(grupo);
		evento.setCategory(category);
		evento.setActivo(activo);
		//evento.setTipoEvento(tipoEvento);
		
		int id = eventosService.actualizaEvento(evento);
		
		return "ok|"+id;
		
     }
	 
}

