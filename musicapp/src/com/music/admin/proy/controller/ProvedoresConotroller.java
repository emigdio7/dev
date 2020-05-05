package com.music.admin.proy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.admin.proy.services.ProveedoresService;
import com.music.admin.proy.vo.Proveedores;

@Controller
@RequestMapping("/proveedor")
public class ProvedoresConotroller {

	
	@Autowired
	private ProveedoresService proveedoresService;

	
}
