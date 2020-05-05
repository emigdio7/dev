package com.music.admin.proy.services;

import java.util.List;

import com.music.admin.proy.vo.ProvedorDto;
import com.music.admin.proy.vo.Proveedores;

public interface ProveedoresService {
	
	public List<Proveedores> findAll();
	public String saveOrUpdate(ProvedorDto provedor);
	public Proveedores findById(Integer idProveedor);
	public int delele (Proveedores proveedores);

}
