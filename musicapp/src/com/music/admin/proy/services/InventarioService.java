package com.music.admin.proy.services;

import java.util.List;

import com.music.admin.proy.vo.Inventario;

public interface InventarioService {

	
	List<Inventario> findAll();
	
	void save (Inventario articulo);
}
