package com.music.admin.proy.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;

import com.music.admin.proy.utils.GenericHibernateDAOImpl;
import com.music.admin.proy.vo.Clientes;
import com.music.admin.proy.vo.Eventos;

public class PruebasDaoImpl extends GenericHibernateDAOImpl implements PruebasDao {

	public void consulta() {
		
		Integer id= 4; 
			getJdbcTemplate().queryForObject("select * from Eventos where clienteId ", new RowMapper<Eventos>() {
				public Eventos mapRow(ResultSet rs, int rowNum ) throws SQLException {
					Eventos eve = new Eventos();
					eve.setEventoId(rs.getInt("eventoId"));
					return eve;
				}
			}, id);
			
			
			
			Integer j= 4;
			
			getJdbcTemplate().queryForObject("select * from Clientes", new RowMapper<Clientes>() {
				public Clientes mapRow(ResultSet rs, int rownum) {
					Clientes cl = new Clientes();
					
					return cl;
				}
			}, j);
			
			Integer k = 6;
			
			List<Map<String, Object>> map= getJdbcTemplate().queryForList("");
	} 
}
