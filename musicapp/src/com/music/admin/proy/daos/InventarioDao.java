package com.music.admin.proy.daos;

import java.util.List;

import com.music.admin.proy.vo.Inventario;

public interface InventarioDao {

	
	List<Inventario> findAll();
	
	void save (Inventario articulo);
	
	
}
