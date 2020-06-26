package com.music.admin.proy.daos;

import java.util.List;

import org.hibernate.sql.Update;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Proveedores;

@Component("proveedoresDao")
@Transactional
public class ProveedoresDaoImpl  extends GenericHibernateDAOImpl implements ProveedorDao{

	@Override
	public List<Proveedores> findAll() {
		
		List<Proveedores> lista = findAll(Proveedores.class);
	
		return lista;
	}

	@Override
	public String save(Proveedores provedor) {

		saveOrUpdate(provedor);
		return provedor.getNombre();
		
	}

	@Override
	public Proveedores findById(Integer idProveedor) {
	   
		Proveedores provedor =get(Proveedores.class, idProveedor);
		return provedor;
	}

	@Override
	public int delete(Proveedores proveedor) {
		delete(proveedor);
		return 1;
	}

	@Override
	public int deleteById(Integer provedorId) {
		
		String hql = "delete Proveedores where provedorId = :provedorId";
		
		return getCurrentSession().createQuery(hql)
				.setInteger("provedorId", provedorId)
				.executeUpdate();
	}

	


}
