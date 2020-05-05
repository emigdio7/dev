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
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.admin.proy.services.EmpleadosService;
import com.music.admin.proy.vo.Direccion;
import com.music.admin.proy.vo.EmpleadoDto;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Rol;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/empleados")
public class EmpleadosController {

	protected static final Log logger = LogFactory.getLog(EmpleadosController.class.getName());
	
	@Autowired
	private EmpleadosService empleadosService;
	
	@GetMapping("/listaEmpleados")
	public String listaEmpleados(Model modelo) {
		logger.info("Mensaje de Lista de empleado");	
		List<Empleados> lstEmp =  empleadosService.findAllEmpleados();
		System.out.println(lstEmp);
		modelo.addAttribute("lstEmp", lstEmp);
		modelo.addAttribute("seccion", "Empleados");
		modelo.addAttribute("subSeccion", "Lista empleados");
		return "empleados/listaEmpleados";
	}

	@GetMapping("/prestamos")
	public String muestraPrestamos(Model modelo) {
        modelo.addAttribute("lstClientes", new ArrayList());
        modelo.addAttribute("seccion", "Empleados");
		modelo.addAttribute("subSeccion", "Prestamos");
        return "empleados/prestamos";
    }
	
	@GetMapping("/descuentos")
	public String muestraDescuentos(Model modelo) {
        modelo.addAttribute("lstClientes", new ArrayList());
        modelo.addAttribute("seccion", "Empleados");
		modelo.addAttribute("subSeccion", "Descuentos");
        System.out.println("En vista Clientes");
        return "empleados/descuentos";
    }
	
	@GetMapping("/clientes")
	public String muestraClientes(Model modelo) {
        modelo.addAttribute("lstClientes", new ArrayList());
        modelo.addAttribute("seccion", "Empleados");
		modelo.addAttribute("subSeccion", "Descuentos");
        System.out.println("En vista Clientes");
        return "empleados/clientes";
    }
	
	
	 @RequestMapping(value = "/guardaInfo", method = RequestMethod.POST)
     public @ResponseBody String guardaInfo(Model model, 		 @RequestParam String empleadoId, @RequestParam String direccionId, 
    		 @RequestParam String nombre, @RequestParam String apellidoPaterno,
    		 @RequestParam String apellidoMaterno, @RequestParam String fechaNacimiento, 
    		 @RequestParam String correo, @RequestParam String telefono,
    		 @RequestParam String puesto,
    		 @RequestParam String sexo,  @RequestParam String calle, @RequestParam String ciudad,
    		 @RequestParam String colonia, @RequestParam String estado, @RequestParam String codigoPostal, @RequestParam String actualiza ) {
			
		System.out.println("en guardaInfo");
		System.out.println("direccionId: " + direccionId);
		System.out.println("empleadoId: " + empleadoId); 
		System.out.println("nombre: " + nombre); 
		System.out.println("apellidoPaterno: " + apellidoPaterno); 
		System.out.println("apellidoMaterno: " + apellidoMaterno); 
		System.out.println("fechaNacimiento: " + fechaNacimiento); 
		System.out.println("puesto: " + puesto);
		System.out.println("sexo: " + sexo);
		System.out.println("calle: " + calle);
		System.out.println("ciudad: " + ciudad);
		System.out.println("colonia: " + colonia);
		System.out.println("estado: " + estado);
		System.out.println("correo: " + correo);
		System.out.println("telefono: " + telefono);
		System.out.println("actualiza: " + actualiza);
		
		if("1".equals(actualiza)) {
			
		} else {
			
		}
		Empleados emp = new Empleados();
		if (empleadoId != null && !"".equals(empleadoId) )
			emp.setEmpleadoId(Integer.parseInt(empleadoId));
		emp.setNombre(nombre);
		emp.setApellidoPat(apellidoPaterno);
		emp.setApellidoMat(apellidoMaterno);
		emp.setCorreo(correo);
		emp.setTelefono(telefono);
		emp.setActivo(1);
		emp.setFechaNac(fechaNacimiento);
		Rol rol = new Rol(Integer.parseInt(puesto));
		emp.setRol(rol);
		//emp.setSexo(sexo);
		Direccion dir = new Direccion(calle,colonia, ciudad, estado); 
		
		if (direccionId != null && !"".equals(direccionId) )
			dir.setDireccionId(Integer.parseInt(direccionId));
		dir.setUsuarioAlta("Admin");
		
		if (codigoPostal != null && !"".equals(codigoPostal) )
			dir.setCodigop(Integer.parseInt(codigoPostal));
		
		emp.setDireccion(dir);
		
		
		System.out.println("Empleado: " + emp);
		
		empleadosService.save(emp);
		
		 return "ok";
     }
	 
	 
	 @RequestMapping(value = "/consultaEmpleado", method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE })
     public @ResponseBody EmpleadoDto  consultaEmpleado(Model model, @RequestParam String empleadoId) {
		 System.out.println("empleadoId: " + empleadoId); 
		 Empleados emp = empleadosService.findId(Integer.parseInt(empleadoId));
		 EmpleadoDto dto = new EmpleadoDto();
		 dto.setEmpleadoId(emp.getEmpleadoId());
		 dto.setNombre(emp.getNombre());
		 dto.setApellidoPat(emp.getApellidoPat());
		 dto.setApellidoMat(emp.getApellidoMat());
		 dto.setCorreo(emp.getCorreo());
		 dto.setTelefono(emp.getTelefono());
		 dto.setRol(emp.getRol().getRolId());
		 dto.setGenero(emp.getGenero());
		 dto.setSalario(emp.getSalario());
		 
		 /*Direccion*/
		 dto.setDireccionId(emp.getDireccion().getDireccionId());
		 dto.setCalle(emp.getDireccion().getCalle());
		 dto.setColonia(emp.getDireccion().getColonia());
		 dto.setCiudad(emp.getDireccion().getCiudad());
		 dto.setEstado(emp.getDireccion().getEstado());
		 dto.setCodigop(emp.getDireccion().getCodigop());
		 
		 System.out.println("EmpleadoDto: " + dto); 
		 return dto;
	 }
	 
		@GetMapping("/listaEmpleadosGet")
		public String listaEmpleadosGet(Model modelo) {
			logger.info("Mensaje de Lista de empleado");	
			List<Empleados> lstEmp =  empleadosService.findAllEmpleados();
			System.out.println(lstEmp);
			modelo.addAttribute("lstEmp", lstEmp);
			modelo.addAttribute("seccion", "Empleados");
			modelo.addAttribute("subSeccion", "Lista empleados");
			return "empleados/listaEmpleados";
		}

}
