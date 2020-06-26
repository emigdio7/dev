package com.music.admin.proy.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.admin.proy.daos.InventarioDao;
import com.music.admin.proy.vo.Inventario;

@Service("inventarioService")
public class InventarioServiceImpl implements InventarioService {

	@Autowired
	private InventarioDao inventarioDao;
	
	@Override
	public List<Inventario> findAll() {
		// TODO Auto-generated method stub
		return inventarioDao.findAll();
	}

	@Override
	public void save(Inventario articulo) {
		// TODO Auto-generated method stub
		inventarioDao.save(articulo);
	}

	
}
