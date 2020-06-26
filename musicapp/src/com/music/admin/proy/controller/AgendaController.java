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

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.music.admin.proy.forms.BusquedaForm;
import com.music.admin.proy.services.CatalogosService;
import com.music.admin.proy.services.ClientesService;
import com.music.admin.proy.services.EventosService;
import com.music.admin.proy.vo.Eventos;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/agenda")
public class AgendaController {

	protected static final Log logger = LogFactory.getLog(AgendaController.class.getName());
	
	@Autowired
	private EventosService eventosService;
	
	@Autowired
	private CatalogosService catalogosService;
	
	@GetMapping(value = "/listaEventos")
	public String listaEventos( ModelMap modelo) {
		logger.info("muestra la lista de Eventos de los Clientes");
		List<Eventos> lstEventos = eventosService.findAllEventos();
		BusquedaForm busquedaForm = new BusquedaForm();
		modelo.addAttribute("busquedaForm", busquedaForm);
		modelo.addAttribute("lstEventos", lstEventos);
		modelo.addAttribute("seccion", "Agenda");
		modelo.addAttribute("subSeccion", "eventos");
		modelo.addAttribute("lstEvnetos", catalogosService.findAllEvento());
		
		return "agenda/listaEventos";
	}     
	
	
	@PostMapping(value = "/buscaRegistros")
	public String buscaRegistros(@ModelAttribute("busquedaForm") BusquedaForm busquedaForm,
			BindingResult result, SessionStatus status, ModelMap modelo) {
		System.out.println("muestra la lista de Eventos de los Clientes: " + busquedaForm.getAction());
		
		List<Eventos> lstEventos = null; 
				
		if ("buscar".equals(busquedaForm.getAction())) {
			if(busquedaForm.getFechaInicial().isEmpty()){
		        result.rejectValue("fechaInicial", "error.fechaInicial");
		    } else if(busquedaForm.getFechaFinal().isEmpty()){
		        result.rejectValue("fechaFinal", "error.fechaFinal");
		    } else {
		    	lstEventos = eventosService.consultaCriterios(busquedaForm.getFechaInicial(), 
			    		busquedaForm.getFechaFinal());
		    }
		    
		} else {
			lstEventos = eventosService.findAllEventos();
		}
	    
	    modelo.addAttribute("busquedaForm", busquedaForm);
	    //lstEventos = eventosService.findAllEventos();
		modelo.addAttribute("lstEventos", lstEventos);
		modelo.addAttribute("seccion", "Agenda");
		modelo.addAttribute("subSeccion", "eventos");
		
		return "agenda/listaEventos";
	}
	

	@GetMapping(value = "/monitorEventos")
	public String detalleClientes(ModelMap modelo) {
		logger.info("muestra la lista de Clientes");	
		modelo.addAttribute("seccion", "Agenda");
		modelo.addAttribute("subSeccion", "monitor");
		return "agenda/detalleClientes";
	}
	
	
	@GetMapping(value = "/reporteListaEventos")
	public String proveedores(ModelMap modelo) {
		logger.info("muestra reporte lista eventos");	
		modelo.addAttribute("seccion", "Agenda");
		modelo.addAttribute("subSeccion", "reporte eventos");
		return "agenda/listaProveedores";
	}
	
	@GetMapping(value = "/grupos")
	public String listaGrupos(ModelMap modelo) {
		logger.info("muestra la lista de Grupos");	
		modelo.addAttribute("seccion", "Agenda");
		modelo.addAttribute("subSeccion", "grupos");
		return "agenda/listaGrupos";
	}
	
	 @RequestMapping(value = "/guardaEvento", method = RequestMethod.POST)
     public @ResponseBody String guardaEvento(Model model, 
    		 @RequestParam Integer eventoId, @RequestParam String grupo, @RequestParam String contrato, 
    		 @RequestParam String anticipo, @RequestParam String restante, 
    		 @RequestParam String telefono, @RequestParam String fechaEvento, 
    		 @RequestParam String lugarEvento, @RequestParam String  horaInicio, 
    		 @RequestParam String horaFin, @RequestParam String chofer, @RequestParam String camioneta, 
    		 @RequestParam String usuarioAlta, @RequestParam String clienteId, 
    		 @RequestParam String tipoEvento ) {
			
		System.out.println("en guardaguardaEvento");
		System.out.println("eventoId: " +eventoId);
		System.out.println("grupo: " +grupo);
		System.out.println("contrato: " +contrato);
		System.out.println("anticipo: " +anticipo);
		System.out.println("restante: " +restante);
		System.out.println("telefono: " +telefono);
		System.out.println("fechaEvento: " +fechaEvento);
		System.out.println("lugarEvento: " +lugarEvento);
		System.out.println("horaInicio: " +horaInicio);
		System.out.println("horaFin: " +horaFin);
		System.out.println("chofer: " +chofer);
		System.out.println("camioneta: " +camioneta);
		System.out.println("usuarioAlta: " +usuarioAlta);
		System.out.println("clienteId: " +clienteId);
		System.out.println("tipoEvento: " +tipoEvento);
		
		Eventos evento = new Eventos();
		if (eventoId!=null && eventoId>0)
			evento.setEventoId(eventoId);
			
		evento.setGrupo(grupo);
		evento.setContrato(contrato);
		evento.setAnticipo(Double.parseDouble(anticipo));
		evento.setRestante(Double.parseDouble(restante));
		evento.setTelefono(telefono);
		evento.setFechaEvento(fechaEvento);
		evento.setLugarEvento(lugarEvento);
		evento.setHoraInicio(horaInicio);
		evento.setHoraFin(horaFin);
		evento.setChofer(chofer);
		evento.setCamioneta(camioneta);
		evento.setUsuarioAlta(usuarioAlta);
		//evento.setClienteId(Integer.parseInt(clienteId));
		//evento.setTipoEvento(tipoEvento);
		evento.setActivo(1);
		
		int id = eventosService.save(evento);
		
		return "ok|"+id;
		
     }
	 
	 @PostMapping(value = "/guardaEventoModulo")
     public @ResponseBody String guardaEvento(Model model, 
    		 @RequestParam Integer eventoId, @RequestParam String grupo, @RequestParam String contrato, 
    		 @RequestParam String anticipo, @RequestParam String restante, 
    		 @RequestParam String telefono, @RequestParam String fechaEvento, 
    		 @RequestParam String lugarEvento, @RequestParam String  horaInicio, 
    		 @RequestParam String horaFin, @RequestParam String chofer, @RequestParam String camioneta, 
    		 @RequestParam String usuarioAlta, @RequestParam String clienteId, 
    		 @RequestParam String tipoEvento, @RequestParam Integer actualiza ) {
			
		System.out.println("en guardaguardaEvento");
		System.out.println("eventoId: " +eventoId);
		System.out.println("grupo: " +grupo);
		System.out.println("contrato: " +contrato);
		System.out.println("anticipo: " +anticipo);
		System.out.println("restante: " +restante);
		System.out.println("telefono: " +telefono);
		System.out.println("fechaEvento: " +fechaEvento);
		System.out.println("lugarEvento: " +lugarEvento);
		System.out.println("horaInicio: " +horaInicio);
		System.out.println("horaFin: " +horaFin);
		System.out.println("chofer: " +chofer);
		System.out.println("camioneta: " +camioneta);
		System.out.println("usuarioAlta: " +usuarioAlta);
		System.out.println("clienteId: " +clienteId);
		System.out.println("tipoEvento: " +tipoEvento);
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
	
		Eventos evento = new Eventos();
		if (eventoId!=null && eventoId>0)
			evento.setEventoId(eventoId);
			
		evento.setGrupo(grupo);
		evento.setContrato(contrato);
		evento.setAnticipo(Double.parseDouble(anticipo));
		evento.setRestante(Double.parseDouble(restante));
		evento.setTelefono(telefono);
		evento.setFechaEvento(fechaEvento);
		evento.setLugarEvento(lugarEvento);
		evento.setHoraInicio(horaInicio);
		evento.setHoraFin(horaFin);
		evento.setChofer(chofer);
		evento.setCamioneta(camioneta);
		evento.setUsuarioAlta(usuarioAlta);
		evento.setClienteId(Integer.parseInt(clienteId));
	//	evento.setCategory("bg-Success");
		//evento.setTipoEvento(tipoEvento);
		evento.setActivo(1);
		int id = eventosService.save(evento);
		
		return "ok|"+id;
		
     }
	
}
