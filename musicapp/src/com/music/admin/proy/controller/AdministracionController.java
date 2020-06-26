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

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.music.admin.proy.forms.ClienteView;
import com.music.admin.proy.forms.ContratoForm;
import com.music.admin.proy.services.CatalogosService;
import com.music.admin.proy.services.ClientesService;
import com.music.admin.proy.services.EmpleadosService;
import com.music.admin.proy.services.EventosService;
import com.music.admin.proy.services.ProveedoresService;
import com.music.admin.proy.utils.Converter;
import com.music.admin.proy.vo.CatCategoriaProveedor;
import com.music.admin.proy.vo.ClienteDto;
import com.music.admin.proy.vo.Clientes;
import com.music.admin.proy.vo.Direccion;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Eventos;
import com.music.admin.proy.vo.Llamadas;
import com.music.admin.proy.vo.ProvedorDto;
import com.music.admin.proy.vo.Proveedores;
import com.music.admin.proy.vo.TipoEvento;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

/** 
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/admin")
public class AdministracionController {
 
	protected static final Log logger = LogFactory.getLog(AdministracionController.class.getName());
	
	@Autowired
	private EmpleadosService empleadosService;

	@Autowired
	private ClientesService clientesService;
  
	@Autowired
	private EventosService eventosService;
	
	@Autowired
	private ProveedoresService proveedoresService;
	
	@Autowired
	private CatalogosService catalogosService;

	
	@GetMapping(value = "/listaClientes")
	public String listaClientes( ModelMap modelo, HttpServletRequest req ) {
		logger.info("muestra la lista de contactos de los Clientes");
	
		String cadena = req.getParameter("cadena");
		logger.info(" =========== "+cadena +  " ===========" );
		System.out.println(" =========== "+cadena +  " ===========" );
		modelo.addAttribute("seccion", "Administracion");
		modelo.addAttribute("subSeccion", "clientes");
		modelo.addAttribute("lstCatClientes", catalogosService.FindAllCategoriaCliente());
		List<Clientes> lstClientes =  null;
		if (cadena!=null && !"".equals(cadena)) {
			System.out.println("con like");
			lstClientes =  clientesService.findClientesConLike(cadena);
		} else {
			System.out.println("sin like");
			lstClientes =  clientesService.findAllClientes();
		
		}
		 
		modelo.addAttribute("lstClientes", lstClientes);
		System.out.println("CATEGORIA: "+lstClientes.get(0).getCategoria());
		return "administracion/clientes";
	}
	
	@RequestMapping(value ="/guardarCliente", method = RequestMethod.POST, consumes="application/json",headers = "content-type=application/x-www-form-urlencoded")
	public @ResponseBody String saveClientes(HttpServletRequest request) {
		
	
		  Gson gson = new Gson();
		  
		  try {
			  String ob =request.getParameter("obj").toString();
			  
			ClienteDto clienteDto = gson.fromJson(ob, ClienteDto.class);
			 // Cliente
//			  
//			   System.out.println(" IDPROVEDOR  -------> "+provedor.getProvedorId());
//			   System.out.println("   IDDIRECCION  -------> "+provedor.getDireccionId());
//			   
		 //         clientesService.save(clienteDto);
			   
			  return "success";
			  
		} catch (Exception e) {
			System.out.println("no se puedo agregar al proveedor" );
			e.printStackTrace();
			return "error";
		}
		
	}
 
	
	
	@PostMapping(value = "/detalleClientes")
	public String detalleClientes(ModelMap modelo,  
			@RequestParam Integer clienteId, HttpServletRequest request) {
		System.out.println("muestra la lista de Clientes");	
		System.out.println("Cliente Id " + clienteId);
		
		HttpSession session = request.getSession();
		Empleados emp = (Empleados)session.getAttribute("empleado");
		modelo.addAttribute("empleado", emp);
		
		Clientes cliente = clientesService.findIdLoadEventos(clienteId);
		ClienteDto dto = new ClienteDto();
		dto.setClienteId(cliente.getClienteId());
		dto.setNombre(cliente.getNombre());
		dto.setApellidos(cliente.getApellidos());
		dto.setCorreo(cliente.getCorreo());
		dto.setTelefono(cliente.getTelefono());
		dto.setDescripcion(cliente.getObservaciones());
		 
		/*Direccion*/
		dto.setDireccionId(cliente.getDireccion().getDireccionId());
		dto.setCalle(cliente.getDireccion().getCalle());
		dto.setColonia(cliente.getDireccion().getColonia());
		dto.setCiudad(cliente.getDireccion().getCiudad());
		dto.setEstado(cliente.getDireccion().getEstado());
		dto.setCodigop(cliente.getDireccion().getCodigop());
		 
		System.out.println("ClienteDto: " + dto);
		modelo.addAttribute("clienteDto", dto);
		modelo.addAttribute("lstEventos", cliente.getEventoses());
		
		List<Llamadas> list = new ArrayList<Llamadas>(cliente.getLlamadases());
		
		//System.out.println("empleado: --> "+list.get(0).getLlamadaId());
		//System.out.println("empleado: --> "+list.get(0).getClienteId());
		
	 // System.out.println("empleado: --> "+list.get(0).getEmpleado().getApellidoMat());
	  
		
		Collections.sort(list, (new Comparator<Llamadas>() {
		    @Override
		    public int compare(Llamadas o1, Llamadas o2) {
		       return (int) (o1.getLlamadaId() - o2.getLlamadaId());
		    }
		 }).reversed());
		
		//eventos.indexOf(o)
		
		StringBuilder eventoBl=null;
		
		for (Llamadas llama : list) {
			eventoBl=new StringBuilder();
			String detalle = llama.getDetalleLlamada();
			System.out.println("Detalle Llamada: "+detalle);
			if (detalle.contains("#")) {
				for(int pos = detalle.indexOf("#")+1;pos<detalle.length() && esNumero(String.valueOf(detalle.charAt(pos))) ; pos++) {
					eventoBl.append(detalle.charAt(pos));
				}
			}
			
			
			System.out.println("eventoBl : "+eventoBl);
			if (esNumero(eventoBl.toString())) {
				System.out.println("con evento "+eventoBl);
				
				List<Eventos> eventos = new ArrayList<Eventos>(cliente.getEventoses());
				System.out.println("con evento "+eventos);
				Eventos eve = new Eventos(Integer.valueOf(eventoBl.toString()));
				System.out.println("con eve "+eve);
				int idx = eventos.indexOf(eve);
				System.out.println("idx "+idx);
				if(idx>=0) { 
					eve = eventos.get(idx);
					String toolTip = 
						      "<a href='#' data-toggle='tooltip' data-html='true' title=' <i class=\"fa fa-info-circle\"></i> Evento #"+ eventoBl + " <ul>" +
						      "<li>" +eve.getGrupo()+ "</li>" +
						      "<li>Anticipo: "+eve.getAnticipo()+ "</li><li>Restante: "+eve.getRestante()+ "</li>" +
						      "<li>Lugar: "+eve.getLugarEvento()+ "</li><li>Fecha: "+eve.getFechaEvento()+ "</li>" +
						      "</ul>'> Evento #"+ eventoBl + " </a> ";
					
					llama.setDetalleLlamada(llama.getDetalleLlamada().replace("#"+eventoBl.toString(), toolTip));
				}
			} else {
				System.out.println(" sin evento ");
			}
			
		}
		
		modelo.addAttribute("lstEvnetos", catalogosService.findAllEvento());
		
		modelo.addAttribute("lstLlamadas", list);
		modelo.addAttribute("seccion", "Administracion");
		modelo.addAttribute("subSeccion", "detalle");
		return "administracion/detalleClientes";
	}
	
	public static boolean  esNumero(String cadena){
		try {
			Integer.parseInt(cadena);
		} catch (NumberFormatException nfe){
			return false;
		}
		return true;
	}
	
	@GetMapping(value = "/proveedores")
	public String proveedores(ModelMap modelo) {
		logger.info("muestra la lista de proveedores");	
		
		List<Proveedores> lstProveedores = new ArrayList<>();
		List<CatCategoriaProveedor> lstCateogria = new ArrayList<>();
		try {
			
			lstProveedores = proveedoresService.findAll();
			lstCateogria = catalogosService.findAllCategoriasProvedor();
			
			modelo.addAttribute("seccion", "Administracion");
			modelo.addAttribute("lstProveedores", lstProveedores);
			modelo.addAttribute("categorias", lstCateogria);
			
		}catch(Exception e) {
			
			modelo.addAttribute("error", "Error no se encuentran Proveedores.");
			System.out.println("error al recuperar proveedores" );
			e.printStackTrace();
			
		}
		
		return "administracion/listaProveedores";
	}
	  
	
	
	@RequestMapping(value ="/guardarProvedor", method = RequestMethod.POST, consumes="application/json",headers = "content-type=application/x-www-form-urlencoded")
	public @ResponseBody String save(HttpServletRequest request) {
		
		  Gson gson = new Gson();
		  try {
			  String ob =request.getParameter("obj").toString();
			  
			  ProvedorDto provedor = gson.fromJson(ob, ProvedorDto.class);
//			  
			//   System.out.println(" IDPROVEDOR  -------> "+provedor.getProvedorId());
			 //  System.out.println("   IDDIRECCION  -------> "+provedor.getDireccionId());
//			   
			  proveedoresService.saveOrUpdate(provedor);
			   
			  return "success";
			  
		} catch (Exception e) {
			System.out.println("no se puedo agregar al proveedor" );
			e.printStackTrace();
			return "error";
		}
		
	}
	
	
	@RequestMapping(value = "/eliminarProvedor", method = RequestMethod.POST, consumes = "application/json", headers = "content-type=application/x-www-form-urlencoded")
	public @ResponseBody String eliminarProveedor(HttpServletRequest request) {
		try {
			int id= Integer.parseInt(request.getParameter("id").toString());

			System.out.println("id--->" + id);
			
			Proveedores prov = new Proveedores();
			prov.setProvedorId(id);
			int res = proveedoresService.delele(prov);
			
			return res == 1 ? "success" : "error";
			
		} catch (Exception e) {
			System.out.println("no se puedo eliminar al proveedor");
			e.printStackTrace();
			return "error";
		}

	}
	
	@RequestMapping(value = "/editarProvedor", method = RequestMethod.POST, consumes = "application/json", headers = "content-type=application/x-www-form-urlencoded", produces = { MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody ProvedorDto editarProveedor(HttpServletRequest request, Model model) {
		try {
			int id= Integer.parseInt(request.getParameter("id").toString());

			Proveedores prov = new Proveedores();
			prov = proveedoresService.findById(id);
			
			ProvedorDto dto = new ProvedorDto();
			dto.setNombre(prov.getNombre());
			dto.setProvedorId(prov.getProvedorId());
			dto.setTelefono(prov.getTelefono());
			dto.setCorreo(prov.getCorreo());
			dto.setCategoria(prov.getCategoria());
			dto.setObservaciones(prov.getObservaciones());
			//direcion
			dto.setDireccionId(prov.getDireccion().getDireccionId());
			dto.setCalle(prov.getDireccion().getCalle());
			dto.setColonia(prov.getDireccion().getColonia());
			dto.setCiudad(prov.getDireccion().getCiudad());
			dto.setEstado(prov.getDireccion().getEstado());
			dto.setCp(prov.getDireccion().getCodigop());
			
			
			System.out.println(""+dto);
			
			//model.addAttribute("proveedor", prov);
			
			if(prov.getProvedorId() != null) {
				return dto;
			}else {
				return null;
			}
			
		} catch (Exception e) {
			System.out.println("no se puedo encontrar al proveedor");
			e.printStackTrace();
			return null;
		}
		

	}
	   
	
	
	
	@GetMapping(value = "/grupos")
	public String listaGrupos(ModelMap modelo) {
		logger.info("muestra la lista de Grupos");	
		modelo.addAttribute("seccion", "Administracion");
		modelo.addAttribute("subSeccion", "grupos");
		return "administracion/listaGrupos";
	}
	
	@GetMapping(value = "/listaEmpleados")
	public String llamadas(ModelMap modelo) {
		logger.info("Mensaje de Lista de empleado");	
		List<Empleados> lstEmp =  empleadosService.findAllEmpleados();
		//System.out.println("empleado: "+lstEmp.get(0).getRol().getDescripcion());
		modelo.addAttribute("lstEmp", lstEmp);
		modelo.addAttribute("liga", "/admin/listaEmpleados");
		modelo.addAttribute("seccion", "Empleados");
		modelo.addAttribute("subSeccion", "Lista empleados");
		return "administracion/listaEmpleados";
	}
	 
	//postmaping
	@PostMapping(value = "/llamadasEmpleado")
	public String llamadasEmpleado(Model modelo,  @RequestParam Integer empleadoId) {
		logger.info("Mensaje de Lista de llamadas por empleado");	
		List<Llamadas> lstLlamadas =  empleadosService.findLlamadasEmpleado(empleadoId);
		logger.info(lstLlamadas);
		
		
		modelo.addAttribute("lstLlamadas", lstLlamadas);
		modelo.addAttribute("seccion", "Empleados");
		modelo.addAttribute("subSeccion", "Lista empleados");
		return "administracion/llamadasEmpleado";
	}
	
	
	@PostMapping(value = "/lineaTiempollamada")
	public String lineaTiempollamada(ModelMap modelo,  @RequestParam Integer clienteId) {
		logger.info("Mensaje de linea de Tiempo llamada: " + clienteId);	
		List<Llamadas>  lstLlamadasCliente = clientesService.findLlamadasCliente(clienteId);
		
		//logger.info(lstLlamadas);
		modelo.addAttribute("lstLlamadasCliente", lstLlamadasCliente);
		modelo.addAttribute("liga", "/admin/listaEmpleados");
		modelo.addAttribute("seccion", "Empleados");
		modelo.addAttribute("subSeccion", "Lista empleados");
		return "administracion/lineaTiempollamadas";
	}
	
	@GetMapping(value = "/cotizaciones")
	public String cotizaciones(ModelMap modelo) {
		logger.info("Mensaje de linea de Tiempo llamada");	
		//List<Llamadas> lstLlamadas =  empleadosService.findLlamadasEmpleado(llamadaId);
		//logger.info(lstLlamadas);
		//modelo.addAttribute("lstLlamadas", lstLlamadas);
		modelo.addAttribute("liga", "/admin/cotizaciones");
		modelo.addAttribute("seccion", "Cotizaciones");
		modelo.addAttribute("subSeccion", "Cotizacion");
		return "administracion/cotizacion";
	}
	
	
	
	 @RequestMapping(value = "/guardaInfo", method = RequestMethod.POST)
     public @ResponseBody String guardaInfo(Model model, 		 @RequestParam String clienteId, @RequestParam String direccionId, 
    		 @RequestParam String nombre, @RequestParam String apellidos,
    		 @RequestParam String correo, @RequestParam String telefono,
    		 @RequestParam String calle, @RequestParam String ciudad,
    		 @RequestParam String colonia, @RequestParam String estado, @RequestParam String codigoPostal,
    		 @RequestParam String categoria, @RequestParam String observaciones,  @RequestParam String actualiza) {
			
		System.out.println("en guardaInfo");
		System.out.println("direccionId: " + direccionId);
		System.out.println("empleadoId: " + clienteId); 
		System.out.println("nombre: " + nombre); 
		System.out.println("apellidos: " + apellidos); 
		System.out.println("calle: " + calle);
		System.out.println("ciudad: " + ciudad);
		System.out.println("colonia: " + colonia);
		System.out.println("estado: " + estado);
		System.out.println("correo: " + correo);
		System.out.println("telefono: " + telefono);
		System.out.println("telefono: " + categoria);
		System.out.println("telefono: " + observaciones);
		
		System.out.println("actualiza: " + actualiza);
		
		Clientes cliente = new Clientes();
		if (clienteId != null && !"".equals(clienteId) )
			cliente.setClienteId(Integer.parseInt(clienteId));
		cliente.setNombre(nombre);
		cliente.setApellidos(apellidos);
		cliente.setCorreo(correo);
		cliente.setTelefono(telefono);
		cliente.setCategoria(categoria);
		cliente.setObservaciones(observaciones);
		cliente.setUsuarioAlta("admin");
		cliente.setActivo(1);
		Direccion dir = new Direccion(calle,colonia, ciudad, estado); 
		
		if (direccionId != null && !"".equals(direccionId) )
			dir.setDireccionId(Integer.parseInt(direccionId));
		dir.setUsuarioAlta("Admin");
		
		if (codigoPostal != null && !"".equals(codigoPostal) )
			dir.setCodigop(Integer.parseInt(codigoPostal));
		
		
		cliente.setDireccion(dir);
		
		
		System.out.println("Cliente: " + cliente);
		
		clientesService.save(cliente);
		
		return "ok";
		
     }
	 
	 @RequestMapping(value = "/actualizaInfo", method = RequestMethod.POST)
     public @ResponseBody String actualizaInfo(Model model, @RequestParam String clienteId, @RequestParam String direccionId, 
    		 @RequestParam String nombre, @RequestParam String apellidos,
    		 @RequestParam String correo, @RequestParam String telefono,
    		 @RequestParam String calle, @RequestParam String ciudad,
    		 @RequestParam String colonia, @RequestParam String estado, 
    		 @RequestParam String codigoPostal, @RequestParam String descripcion, @RequestParam String actualiza ) {
			
		System.out.println("en actualizaInfo");
		System.out.println("direccionId: " + direccionId);
		System.out.println("empleadoId: " + clienteId); 
		System.out.println("nombre: " + nombre); 
		System.out.println("apellidos: " + apellidos); 
		System.out.println("calle: " + calle);
		System.out.println("ciudad: " + ciudad);
		System.out.println("colonia: " + colonia);
		System.out.println("estado: " + estado);
		System.out.println("correo: " + correo);
		System.out.println("telefono: " + telefono);
		System.out.println("descripcion: " + descripcion);
		System.out.println("actualiza: " + actualiza);
		
		Clientes cliente = new Clientes();
		if (clienteId != null && !"".equals(clienteId) )
			cliente.setClienteId(Integer.parseInt(clienteId));
		cliente.setNombre(nombre);
		cliente.setApellidos(apellidos);
		cliente.setCorreo(correo);
		cliente.setTelefono(telefono);
		cliente.setObservaciones(descripcion);
		cliente.setUsuarioAlta("admin");
		Direccion dir = new Direccion(calle,colonia, ciudad, estado); 
		
		if (direccionId != null && !"".equals(direccionId) )
			dir.setDireccionId(Integer.parseInt(direccionId));
		dir.setUsuarioAlta("Admin");
		
		if (codigoPostal != null && !"".equals(codigoPostal) )
			dir.setCodigop(Integer.parseInt(codigoPostal));
			
		
		cliente.setDireccion(dir);
		
		
		System.out.println("Cliente: " + cliente);
		
		clientesService.actualizaCliente(cliente);
		
		return "ok";
		
     }
	 @RequestMapping(value = "/consultaCliente", method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE })
     public @ResponseBody ClienteDto  consultaEmpleado(Model model, @RequestParam String clienteId) {
		 System.out.println(" ====== clienteId: " + clienteId); 
		 Clientes cliente = clientesService.findId(Integer.parseInt(clienteId));
		 ClienteDto dto = new ClienteDto();
		 dto.setClienteId(cliente.getClienteId());
		 dto.setNombre(cliente.getNombre());
		 dto.setApellidos(cliente.getApellidos());
		 dto.setCorreo(cliente.getCorreo());
		 dto.setTelefono(cliente.getTelefono());
		 dto.setDescripcion(cliente.getObservaciones());
		 
		 /*Direccion*/
		 dto.setDireccionId(cliente.getDireccion().getDireccionId());
		 dto.setCalle(cliente.getDireccion().getCalle());
		 dto.setColonia(cliente.getDireccion().getColonia());
		 dto.setCiudad(cliente.getDireccion().getCiudad());
		 dto.setEstado(cliente.getDireccion().getEstado());
		 dto.setCodigop(cliente.getDireccion().getCodigop());

		 
		 System.out.println("ClienteDto: " + dto); 
		 return dto;
	 }

	 
	 @RequestMapping(value = "/guardaLlamada", method = RequestMethod.POST)
     public @ResponseBody String guardaLlamada(Model model, @RequestParam Integer clienteId, 
    		 @RequestParam String hora, @RequestParam String detalleLlamada, @RequestParam Integer empleadoId ) {
			
		System.out.println("en guardaLlamada");
		System.out.println("clienteId: " + clienteId);
		System.out.println("empleadoId: " + empleadoId); 
		System.out.println("hora: " + hora); 
		System.out.println("detalleLlamada: " + detalleLlamada);
		System.out.println("detalleLlamada: " + detalleLlamada);
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
	
		Llamadas llamada = new Llamadas();
		Clientes cli = new Clientes();
		cli.setClienteId(clienteId);
		llamada.setCliente(cli);
		//llamada.setClienteId(clienteId);
		
		Empleados emp = new Empleados();
		emp.setEmpleadoId(empleadoId);
		llamada.setEmpleado(emp);
		llamada.setFecha(format.format(new Date()));
		llamada.setDetalleLlamada(detalleLlamada);
		llamada.setHora(hora);
		
		int id = clientesService.saveLlamada(llamada);
		
		return "ok|"+id;
		
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
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		
		try {
			format.parse(fechaEvento);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		Eventos evento = new Eventos();
		if (eventoId!=null && eventoId>0)
			evento.setEventoId(eventoId);
			
		evento.setGrupo(grupo);
		evento.setContrato(contrato);
		evento.setAnticipo(Double.parseDouble(anticipo));
		evento.setRestante(Double.parseDouble(restante));
		evento.setTelefono(telefono);
		evento.setFechaEvento("2020/01/01");
		evento.setLugarEvento(lugarEvento);
		evento.setHoraInicio(horaInicio);
		evento.setHoraFin(horaFin);
		evento.setChofer(chofer);
		evento.setCamioneta(camioneta);
		evento.setUsuarioAlta(usuarioAlta);
		evento.setClienteId(Integer.parseInt(clienteId));
		TipoEvento te = new TipoEvento();
		te.setTipoEventoId(47);
		evento.setTipoEvento(te);
		evento.setDescripcion("privado");
	//	evento.setCategory("bg-primary");
		//evento.setTipoEvento(tipoEvento);
		
		int id = eventosService.save(evento);
		
		return "ok|"+id;
		
     }
	 
	 @RequestMapping(value = "/eliminaLlamada", method = RequestMethod.POST)
     public @ResponseBody String eliminaLlamada(Model model, @RequestParam Integer llamadaId) {
			
		System.out.println("en eliminaLlamada");
		System.out.println("llamadaId: " + llamadaId);
		Llamadas ll = new Llamadas();
		ll.setLlamadaId(llamadaId);
		int id = clientesService.eliminaLlamada(ll);
		
		return "ok";
		
     }
	 
	 
	 @GetMapping(value = "/contratos")
	 public String contratos(ModelMap modelo) {
			logger.info("Mensaje de contratos");	
			//List<Llamadas> lstLlamadas =  empleadosService.findLlamadasEmpleado(llamadaId);
			//logger.info(lstLlamadas);
			//modelo.addAttribute("lstLlamadas", lstLlamadas);
			List<Clientes> lstClientes = clientesService.findAllOnlyClientes();
			List<ClienteView> lstView = new ArrayList<ClienteView>();
			ClienteView view = null; 
			for (Clientes dto : lstClientes) {
				view = new ClienteView();
				view.setClienteId(dto.getClienteId());
				view.setInformacion(dto.getNombre() + " - " + dto.getApellidos() + " - " + dto.getCorreo());		
				lstView.add(view);
			}
			//List<Clientes> lstClientes = clientesService.findAllOnlyClientes();
			modelo.addAttribute("lstView", lstView);
			
			
			List<Eventos> lstEventos = new ArrayList<Eventos>();
			modelo.addAttribute("lstEventos", lstEventos);
			modelo.addAttribute("contratoForm", new ContratoForm());
			
			modelo.addAttribute("lstClientes", lstClientes);
			modelo.addAttribute("liga", "/admin/contratos");
			modelo.addAttribute("seccion", "Contratos");
			modelo.addAttribute("subSeccion", "Contratos");
			return "administracion/contratos";
		}
	 
	 
	 
	 @PostMapping(value = "/consultaEventosIdCliente", produces = "application/json")
     public @ResponseBody Map<String, Map<String, Eventos>> consultaEventosPorClienteId(
        HttpServletRequest servletRequest,  @RequestParam Integer clienteId) {
        
		 List<Eventos> lstEventos = eventosService.consultaEventosPorClienteId(clienteId);
		 System.out.println("lstEventos: " + lstEventos.size());
		 System.out.println("lstEventos: " + lstEventos);
		 Map<String, Eventos> mapaev = new HashMap<String, Eventos>();
		 int i = 1;
		 for(Eventos eve : lstEventos) {
			 String key = "evento"+i;
			 mapaev.put(key, eve);
			 i++;
		 }
		 Map<String, Map<String, Eventos>> mapa = new HashMap<String, Map<String, Eventos>>();
		 mapa.put("eventos", mapaev);
		 System.out.println("mapa: " + mapa);
        return mapa;
     }
	 
	 @GetMapping(value = "/generaDetalle")
	 public String generaDetalle(ModelMap modelo) {
			logger.info("Mensaje del detalle o resumen del contrato");	
			//List<Llamadas> lstLlamadas =  empleadosService.findLlamadasEmpleado(llamadaId);
			//logger.info(lstLlamadas);
			//modelo.addAttribute("lstLlamadas", lstLlamadas);
			modelo.addAttribute("liga", "/admin/cotizacion");
			modelo.addAttribute("seccion", "Cotizacion");
			modelo.addAttribute("subSeccion", "Cotizacion");
			return "administracion/cotizacion";
	}
	 
	 
	 @RequestMapping(value = "/generaContrato", method = RequestMethod.POST)
		public ResponseEntity<byte[]> exportaContratoPDF(HttpServletResponse response, HttpServletRequest request,
				HttpSession session,  @RequestParam Integer clienteSelId,  @RequestParam Integer eventoSelId) {
			System.out.println("clienteId: " + clienteSelId);
			System.out.println("eventoId: " + eventoSelId);
			ResponseEntity<byte[]> responseentity = null;
			InputStream jasperStream;
			
			try {

				Map<String, Object> params = new HashMap<String, Object>();

				InputStream imgLogo = this.getClass().getResource("/reportes/imagenEsfera.png").openStream();
				InputStream imgback = this.getClass().getResource("/reportes/imagenEsferaBack.png").openStream();
				
				List<Eventos> lstEventos = eventosService.consultaEventosPorClienteId(clienteSelId);
				System.out.println("imgLogo: " + imgLogo);
				System.out.println("eventoId: " + imgback);
				Eventos ev = new Eventos();
				ev.setEventoId(eventoSelId);
				int pos = lstEventos.indexOf(ev);
				Eventos eve = lstEventos.get(pos);
				System.out.println("eventoId: " + eve);
				params.put("img_logo", imgLogo);
				params.put("img_back", imgback);
				params.put("solicitante", "Solici");
				params.put("representante", "Representante");
				params.put("direccionSolicitante", "conocida");
				params.put("telefono", "456356345");
				params.put("celular", eve.getTelefono());
				params.put("diaEvento", eve.getFechaEvento());
				params.put("horario", eve.getHoraInicio());
				params.put("direccionEvento", eve.getLugarEvento());
				Double tot = eve.getAnticipo()+eve.getRestante();
				params.put("cantidad", tot.toString());
				params.put("anticipo", (new Double(eve.getAnticipo()).toString()));
				params.put("restante", (new Double(eve.getRestante()).toString()));
				params.put("grupo", eve.getGrupo());
				
				params.put("dia", "12");
				params.put("mes", "Septiembre");
				params.put("year", "2019");
				params.put("CONTEXT",request.getServletContext().getRealPath("/"));
				

				jasperStream = this.getClass().getResource("/reportes/reportSCC2.jasper").openStream();

				JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
				JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, new JREmptyDataSource());

				ByteArrayOutputStream outStream = new ByteArrayOutputStream();
				final HttpHeaders headers = new HttpHeaders();
				headers.setContentType(MediaType.parseMediaType("application/pdf"));
				headers.set("Content-Disposition", "attachment; filename=ContratoAmericaMusic.pdf");

				JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
				responseentity = new ResponseEntity<byte[]>(outStream.toByteArray(), headers,
						HttpStatus.OK);

			} catch (JRException e) {
				e.printStackTrace();
				logger.debug("Error PendientesCedEntreController " + e.getMessage());
			} catch (IOException ioe) {
				ioe.printStackTrace();
				logger.debug("Error PendientesCedEntreController " + ioe.getMessage());
			}

			return responseentity;
		}
		
		@RequestMapping(value = "/generaContratoServicio", method = RequestMethod.POST)
		public ResponseEntity<byte[]> exportaContratoServicioPDF(HttpServletResponse response, HttpServletRequest request,
					HttpSession session,  @RequestParam Integer clienteSelSerId,  @RequestParam Integer eventoSelSerId) {
				System.out.println("clienteId: " + clienteSelSerId);
				System.out.println("eventoId: " + eventoSelSerId);
				ResponseEntity<byte[]> responseentity = null;
				InputStream jasperStream;
				
				try {

					Map<String, Object> params = new HashMap<String, Object>();

					InputStream imgLogo = this.getClass().getResource("/reportes/imagenEsfera.png").openStream();
					InputStream imgback = this.getClass().getResource("/reportes/imagenEsferaBack.png").openStream();
					
					List<Eventos> lstEventos = eventosService.consultaEventosPorClienteId(clienteSelSerId);
					System.out.println("imgLogo: " + imgLogo);
					System.out.println("eventoId: " + imgback);
					Eventos ev = new Eventos();
					ev.setEventoId(eventoSelSerId);
					int pos = lstEventos.indexOf(ev);
					Eventos eve = lstEventos.get(pos);
					System.out.println("eventoId: " + eve);
					params.put("img_logo", imgLogo);
					params.put("img_back", imgback);
					params.put("solicitanteEvento", "dato dummy");
					params.put("telefono", "777 324 71 12");
					Converter con = new Converter();
					params.put("cantidad_contratante", "$ 5,030 (" + con.getStringOfNumber(5030));
					params.put("banco", "BANCOMER");
					params.put("celular", "556554231");
					params.put("servicio", "RENTA DE EQUIPO DE SONIDO Y PANTALLA DE MONITOREO");
					params.put("dia_servicio", "Domingo, 25 de Mayo de 2019");
					params.put("hora_servicio", "05:00 PM");
					params.put("direccion_servicio", "Gardenias 65, Colonia Lazaro Cardenas Jiutepec Morelos");
					params.put("cantidad_total", "$ 15,230 (" + con.getStringOfNumber(15230));
					params.put("anticipo", "$ 1,000 (" + con.getStringOfNumber(1000));
					params.put("resta",   "$ 6,230 (" + con.getStringOfNumber(6230));
					params.put("dia", "12");
					params.put("mes", "Septiembre");
					params.put("year", "2019");
					params.put("CONTEXT",request.getServletContext().getRealPath("/"));
					

					jasperStream = this.getClass().getResource("/reportes/reporteServicios2.jasper").openStream();

					JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
					JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, new JREmptyDataSource());

					ByteArrayOutputStream outStream = new ByteArrayOutputStream();
					final HttpHeaders headers = new HttpHeaders();
					headers.setContentType(MediaType.parseMediaType("application/pdf"));
					headers.set("Content-Disposition", "attachment; filename=ContratoServicioMusic.pdf");

					JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
					responseentity = new ResponseEntity<byte[]>(outStream.toByteArray(), headers,
							HttpStatus.OK);

				} catch (JRException e) {
					e.printStackTrace();
					logger.debug("Error exportaContratoServicioPDF " + e.getMessage());
				} catch (IOException ioe) {
					ioe.printStackTrace();
					logger.debug("Error exportaContratoServicioPDF " + ioe.getMessage());
				}

				return responseentity;
			}
}
