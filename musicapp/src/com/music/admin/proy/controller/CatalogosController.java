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

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.music.admin.proy.services.CatalogosService;
import com.music.admin.proy.services.EmpleadosService;
import com.music.admin.proy.vo.CatCategoriaCliente;
import com.music.admin.proy.vo.CatCategoriaProveedor;
import com.music.admin.proy.vo.CatGeneroGrupos;
import com.music.admin.proy.vo.ProvedorDto;
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
	
	
	  //    CAT  PUESTOS
	
	@GetMapping(value = "/puestos")
	public String muestraPuestos(Model model) {
		try {
			List<Rol> lstPuestos  = catalogosService.findAllRol();
			model.addAttribute("lstPuestos", lstPuestos);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	//	return "catalogos/listaPuestos";
		return "catalogos/prueba";
	}
	
	@PostMapping(value = "/guardaPuestos")
	public @ResponseBody String guardaPuestos(Model model,  @RequestParam String rolId,  @RequestParam String descripcion,
			@RequestParam String activo) {
		logger.info("en muestra calendario Mensaje de home");	
		model.addAttribute("seccion", "Puestos");
		model.addAttribute("subSeccion", "Edicion");
		try {
			Rol rol = new Rol();
			if(!rolId.isEmpty()) {
				rol.setRolId(Integer.parseInt(rolId));
			}
			rol.setDescripcion(descripcion);
			rol.setActivo(Integer.parseInt(activo));
			catalogosService.save(rol);
			 
			return "ok";
			
		}catch (Exception e) {
			e.printStackTrace();
			return "ocurrido un erro al guardar el puesto";
		}
	}
	
	@PostMapping("/eliminarPuesto")
	public @ResponseBody String eliminarPuesto(
			@RequestParam Integer idRol) {
		
		try {
			catalogosService.deleteRol(idRol);
			return "ok";
			
		}catch (Exception e) {
			e.printStackTrace();
			return "No se pudo eliminar el Rol";
		}
	}
	
        // CAT  EVENTOS
	
	
	@GetMapping(value = "/eventos")
	public String muestraEventos(Model model) {
	
		try {
			List<TipoEvento> lstEventos  = catalogosService.findAllEvento();
			
			model.addAttribute("lstEventos", lstEventos);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		return "catalogos/listaEventos";
	}

	@PostMapping(value = "/guardaEventos")
	public @ResponseBody String guardaEventos(@RequestParam String tipoEventoId, @RequestParam String action,
			@RequestParam String descripcion, @RequestParam int activo, @RequestParam String classLabel) {
		logger.info("en guardar Tipo de Eventos Mensaje de home");

		TipoEvento tipoEvento = new TipoEvento();

		try {
			if(!tipoEventoId.isEmpty()) {
				tipoEvento.setTipoEventoId(Integer.parseInt(tipoEventoId));
			}
			tipoEvento.setDescripcion(descripcion);
			tipoEvento.setActivo(activo);
			tipoEvento.setClassLabel(classLabel);
			
			int n = catalogosService.saveCatalogoEventos(tipoEvento);
			System.out.println(" si se guardo "+ n);			
			return "ok";

		} catch (Exception e) {
			System.out.println("no se puedo agregar al proveedor");
			e.printStackTrace();
			return "error";
		}
	}
	
	@PostMapping("/eliminarEvento")
	public @ResponseBody String eliminarEvento(@RequestParam Integer idEvento) {
		try {
			catalogosService.deleteEventoById(idEvento);
			return "ok";
			
		}catch (Exception e) {
			e.printStackTrace();
			return "No se pudo eliminar el evento";
		}
	}
	
	  // CAT CLIENTES
	
	@GetMapping(value = "/clientes")
	public String muestraClientes(Model model) {
		
		try {
			List<CatCategoriaCliente> lstCatCategoriaCliente  = catalogosService.FindAllCategoriaCliente();

			model.addAttribute("lstCatCategoriaCliente", lstCatCategoriaCliente);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		return "catalogos/catClientes";
	}
	
	@PostMapping(value = "/guardaCategoriaClientes")
	public @ResponseBody String guardaCategoriaClientes(@RequestParam String catClienteId,
			@RequestParam String descripcion, @RequestParam int activo, @RequestParam String classLabel) {
		
		CatCategoriaCliente catCategoriaCliente = new CatCategoriaCliente();

		try {
			if(! catClienteId.isEmpty()) {
				 catCategoriaCliente.setCatClienteId((Integer.parseInt(catClienteId)));
			}
			catCategoriaCliente.setDescripcion(descripcion);
			catCategoriaCliente.setActivo(activo);
			catCategoriaCliente.setClassLabel(classLabel);
			
			 catalogosService.saveCategoriaCliente(catCategoriaCliente);
					
			return "ok";

		} catch (Exception e) {
			System.out.println("no se puedo agregar la categoria cliente");
			e.printStackTrace();
			return "error";
		}
	}
	
	@PostMapping("/eliminarCategoriaCliente")
	public @ResponseBody String eliminarCategoriaCliente(@RequestParam Integer catClienteId) {
		try {
			catalogosService.deleteCategoriaCliente(catClienteId);
			return "ok";
			
		}catch (Exception e) {
			e.printStackTrace();
			return "No se pudo eliminar la categoria de cliente";
		}
	}
	   
	    // CAT CATEGORIA PROVEDROES
	
	@GetMapping(value = "/proveedores")
	public String muestraProveedores(Model model) {
		
		try {
			List<CatCategoriaProveedor> catCategoriaProveedor  = catalogosService.findAllCategoriasProvedor();
			
			model.addAttribute("catCategoriaProveedor", catCategoriaProveedor);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		 
		return "catalogos/catProveedores";
	}
	
	@PostMapping(value = "/guardaCategoriaProveedor")
	public @ResponseBody String guardaCategoriaProveedores(@RequestParam String catProveedorId,
			@RequestParam String descripcion, @RequestParam int activo, @RequestParam String classLabel) {
		
		CatCategoriaProveedor catCategoriaProveedor = new CatCategoriaProveedor();

		try {
			if(! catProveedorId.isEmpty()) {
				catCategoriaProveedor.setCategoriaProveedorId((Integer.parseInt(catProveedorId)));
			}
			catCategoriaProveedor.setDescripcion(descripcion);
			catCategoriaProveedor.setActivo(activo);
			catCategoriaProveedor.setClassLabel(classLabel);
			
			 catalogosService.saveCategoriaProveedor(catCategoriaProveedor);
					
			return "ok";

		} catch (Exception e) {
			System.out.println("no se puedo agregar la categoria proveedor");
			e.printStackTrace();
			return "error";
		}
	}
	
	@PostMapping("/eliminarCategoriaProveedor")
	public @ResponseBody String eliminarCategoriaProveedores(@RequestParam Integer catProveedorId) {
		try {
			catalogosService.deleteCategoriaProveedor(catProveedorId);
			return "ok";
			
		}catch (Exception e) {
			e.printStackTrace();
			return "No se pudo eliminar la categoria de proveedor";
		}
	}
	
	
	// CAT GENERO GRUPOS
	
	@GetMapping(value = "/generosGruperos")
	public String muestraGeneros(Model model) {
		
		try {
			List<CatGeneroGrupos> catGeneroGrupos  = catalogosService.findAllGeneroGrupos();
			
			model.addAttribute("catGeneroGrupos", catGeneroGrupos);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		 
		return "catalogos/catGenerosGrupos";
	}
	
	
	@PostMapping(value = "/guardaGeneroGrupo")
	public @ResponseBody String guardaGenero(@RequestParam String generoGruperoId,
			@RequestParam String genero, @RequestParam int activo, @RequestParam String classLabel) {
		
		CatGeneroGrupos catGeneroGrupos = new CatGeneroGrupos();

		try {
			if(!generoGruperoId.isEmpty()) {
				catGeneroGrupos.setGeneroGrupoId((Integer.parseInt(generoGruperoId)));
			}
			catGeneroGrupos.setGenero(genero);
			catGeneroGrupos.setActivo(activo);
			catGeneroGrupos.setClassLabel(classLabel);
			
			 catalogosService.saveGeneroGrupo(catGeneroGrupos);
					
			return "ok";

		} catch (Exception e) {
			System.out.println("no se puedo agregar el genero");
			e.printStackTrace();
			return "error";
		}
	}
	
	@PostMapping("/eliminarGeneroMusical")
	public @ResponseBody String eliminarMuscal(@RequestParam Integer generoGruperoId) {
		try {
			catalogosService.deleteGeneroGrupo(generoGruperoId);
			return "ok";
			
		}catch (Exception e) {
			e.printStackTrace();
			return "No se pudo eliminar el genero";
		}
	}
	
	
	
}
