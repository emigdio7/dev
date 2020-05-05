package com.music.admin.proy.daos;

import java.util.List;

import com.music.admin.proy.vo.Proveedores;

public interface ProveedorDao {

	
	public List<Proveedores> findAll();
	public String save(Proveedores provedor);
	public Proveedores findById(Integer idProveedor);
	public int delete (Proveedores Proveedor);
	public int deleteById(Integer provedorId);
}
