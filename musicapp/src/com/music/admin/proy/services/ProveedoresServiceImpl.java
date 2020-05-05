package com.music.admin.proy.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.admin.proy.daos.ProveedorDao;
import com.music.admin.proy.vo.Direccion;
import com.music.admin.proy.vo.ProvedorDto;
import com.music.admin.proy.vo.Proveedores;

@Service("proveedoresService")
public class ProveedoresServiceImpl implements ProveedoresService{

	@Autowired
	private ProveedorDao proveedorDao;
	
	@Override
	public List<Proveedores> findAll() {
		List<Proveedores> list = proveedorDao.findAll();
		return list;
	}
/*
	@Override
	public String save(Proveedores provedor) {
		
		return proveedorDao.save(provedor);
	}
*/
	@Override
	public String saveOrUpdate(ProvedorDto provedor) {
		
		
		Proveedores p = new Proveedores();
		
		p.setProvedorId(provedor.getProvedorId());
		p.setCorreo(provedor.getCorreo());
		p.setNombre(provedor.getNombre());
		p.setObservaciones(provedor.getObservaciones());
		p.setTelefono(provedor.getTelefono());
		p.setCategoria(provedor.getCategoria());
		
		Direccion direccion = new Direccion();
		direccion.setDireccionId(provedor.getDireccionId());
		direccion.setCalle(provedor.getCalle());
		direccion.setCiudad(provedor.getCiudad());
		direccion.setColonia(provedor.getColonia());
		direccion.setCodigop(provedor.getCp());
		direccion.setEstado(provedor.getEstado());
		direccion.setUsuarioAlta("luis");

	    p.setDireccion(direccion);
		return proveedorDao.save(p);
	}

	
	
	@Override
	public Proveedores findById(Integer idProveedor) {
		Proveedores prov = proveedorDao.findById(idProveedor);
		return prov;
	}
	@Override
	public int delele(Proveedores proveedores) {
		// TODO Auto-generated method stub
		return proveedorDao.deleteById(proveedores.getProvedorId());
	}
	

	




}
