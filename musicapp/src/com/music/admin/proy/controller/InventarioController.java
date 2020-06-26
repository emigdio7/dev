package com.music.admin.proy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.admin.proy.services.InventarioService;

@Controller
@RequestMapping("/inventario")
public class InventarioController {
	
	
	@Autowired
	private InventarioService inventarioService;
	
	@GetMapping("/articulos")
	public String mostrarInventrio(Model model) {
		
		model.addAttribute("listArticulos", inventarioService.findAll());
		
		return "inventario/inventario";
	}

}
