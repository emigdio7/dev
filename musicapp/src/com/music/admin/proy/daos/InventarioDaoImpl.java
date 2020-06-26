package com.music.admin.proy.daos;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.Inventario;

@Component("inventarioDao")
@Transactional
public class InventarioDaoImpl extends GenericHibernateDAOImpl implements InventarioDao{

	@Transactional(readOnly = true)
	@Override
	public List<Inventario> findAll() {
		// TODO Auto-generated method stub
		return findAll(Inventario.class);
	}

	@Transactional
	@Override
	public void save(Inventario articulo) {
		// TODO Auto-generated method stub
		saveOrUpdate(articulo);
	}

}
