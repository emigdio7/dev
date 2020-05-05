package com.music.admin.proy.utils;

import java.io.Serializable;
import java.sql.Clob;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.hibernate.Criteria;
import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.context.spi.CurrentSessionContext;
import org.hibernate.criterion.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

/**
 * Clase para la exportacion de la informacion de los medios de Identificacion en formato Excel
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
 * @version 1.0
 * @since SIIRFE 6.3
 */
public abstract class GenericHibernateDAOImpl implements GenericHibernateDAO {

	@Resource
	private SessionFactory sessionFactory;
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private JdbcTemplate jdbcTemplate; 
	
	private NamedParameterJdbcTemplate namedParamJdbcTemplate;;

		
	/**
	 * @return the jdbcTemplate
	 */
	public JdbcTemplate getJdbcTemplate() {
		System.out.println("get jdbcTemplate");
		return jdbcTemplate;
	}

	/**
	 * @param jdbcTemplate the jdbcTemplate to set
	 */
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		System.out.println("set jdbcTemplate");
		this.jdbcTemplate = jdbcTemplate;
	}

	public DataSource getDataSource() {
		System.out.println("get Datasource");
		return dataSource;
	}

	public void setDataSource(final DataSource dataSource) {
		System.out.println("Asigna Datasource");
		this.dataSource = dataSource;
		if(namedParamJdbcTemplate == null) {
			System.out.println("Genera namedParamJdbcTemplate");
			namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
		}
	}

	public NamedParameterJdbcTemplate getNamedParamJdbcTemplate() {
		System.out.println("Asigna NamedParamJdbcTemplate");
		return namedParamJdbcTemplate;
	}
	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#get(java.lang.Class, long)
	 */
	@Override	
	public Clob createClob(String str) {
		return getCurrentSession().getLobHelper().createClob(str);
	}
	
	
	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#get(java.lang.Class, long)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T get(String entidad, Serializable id) {

		return (T) getCurrentSession().get(entidad, id);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#get(java.lang.Class, long)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T get(Class<T> clazz, Serializable id) {

		return (T) getCurrentSession().get(clazz, id);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#get(java.lang.Class, java.lang.String, java.lang.String[])
	 */
	@SuppressWarnings("unchecked")
	@Override
	public <T> T get(Class<T> clazz, String query, Object... params) {
		Query hqlQuery;
		hqlQuery = getCurrentSession().createQuery(query);
		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				hqlQuery.setParameter(i, params[i]);
			}
		}

		try {
			return (T) hqlQuery.uniqueResult();
		} catch (NonUniqueResultException e) {
			throw new IncorrectResultSizeDataAccessException(e.getMessage(), 1, e);
		}

	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#load(java.lang.Class, long)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T load(String entityName, Serializable id) {
		return (T) getCurrentSession().load(entityName, id);
	}
	
	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#load(java.lang.Class, long)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T load(Class<T> clazz, Serializable id) {
		return (T) getCurrentSession().load(clazz, id);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#find(java.lang.String, java.lang.Object[])
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> List<T> find(String query, Object... params) {

		Query hQuery = getCurrentSession().createQuery(query);

		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				hQuery.setParameter(i, params[i]);
			}
		}
		return hQuery.list();
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#findPaginado(java.lang.String, int, int, java.lang.Object[])
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> List<T> findPaginado(String query, int paginaActual, int numFilas,
		Object... params) {
		SQLQuery sql;

		sql = getCurrentSession().createSQLQuery(query.toString());

		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				sql.setParameter(i, params[i]);
			}
		}

		sql.setFirstResult(numFilas * (paginaActual - 1));
		sql.setMaxResults(numFilas);

		return sql.list();
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#queryForEntity(java.lang.String, java.lang.Object[])
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T queryForEntity(String query, Object... params) {

		Query hQuery = getCurrentSession().createQuery(query);

		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				hQuery.setParameter(i, params[i]);
			}
		}
		return (T) DataAccessUtils.requiredSingleResult(hQuery.list());
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#queryForEntity(java.lang.Object)
	 */
	@Override
	public <T> T queryForEntity(T entityExample) {

		return DataAccessUtils.requiredSingleResult(queryByExample(entityExample));
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#queryForEntity(org.hibernate.criterion.Example, java.lang.Class)
	 */
	@Override
	public <T> T queryForEntity(Example example, Class<T> clazz) {

		return DataAccessUtils.requiredSingleResult(queryByExample(example, clazz));
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#findAll(java.lang.Class)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> List<T> findAll(Class<T> clazz) {
		return getCurrentSession().createQuery("from " + clazz.getName()).list();
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#save(java.io.Serializable)
	 */
	@Override
	public void save(Serializable entity) {
		getCurrentSession().save(entity);
	}
	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#save(java.io.Serializable)
	 */
	@Override
	public void save(String entityName,Serializable entity) {
		getCurrentSession().save(entityName,entity);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#saveOrUpdate(java.io.Serializable)
	 */
	@Override
	public void saveOrUpdate(Serializable entity) {
		getCurrentSession().saveOrUpdate(entity);
                flush();
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#merge(java.lang.Object)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T merge(final T entity) {
		return (T) getCurrentSession().merge(entity);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#update(java.lang.Object)
	 */
	@Override
	public <T> void update(String entityName, T entity) {
		getCurrentSession().update(entityName,entity);
	}
	
	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#update(java.lang.Object)
	 */
	@Override
	public <T> void update(T entity) {
		getCurrentSession().update(entity);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#delete(java.lang.Object)
	 */
	@Override
	public <T> void delete(final T entity) {
		getCurrentSession().delete(entity);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#update(java.lang.String, java.lang.Object[])
	 */
	@Override
	public int update(String query, Object... params) {

		Query hqlQuery = getCurrentSession().createQuery(query);

		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				hqlQuery.setParameter(i, params[i]);
			}
		}
		return hqlQuery.executeUpdate();

	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#refresh(java.io.Serializable)
	 */
	@Override
	public void refresh(Serializable entity) {
		getCurrentSession().refresh(entity);

	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#queryByExample(java.lang.Object)
	 */
	@SuppressWarnings("unchecked")
	@Override
	public <T> List<T> queryByExample(T entityExample) {

		Example example = Example.create(entityExample);
		return (List<T>) queryByExample(example, entityExample.getClass());

	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#queryByExample(org.hibernate.criterion.Example)
	 */
	@SuppressWarnings("unchecked")
	@Override
	public <T> List<T> queryByExample(Example example, Class<T> clazz) {
		return getCurrentSession().createCriteria(clazz).add(example).list();

	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#construyeCriterio(java.lang.Class)
	 */
	@Override
	public Criteria construyeCriteria(Class<?> clazz) {
		return getCurrentSession().createCriteria(clazz);
	}

	/* La documentaci�n de este m�todo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see mx.org.ife.siirfe.comun.dao.hibernate.GenericHibernateDAO#flush()
	 */
	@Override
	public void flush() {
		sessionFactory.getCurrentSession().flush();
	}

	/**
	 * Obtiene la sesion actual, es decir, la mahejada por {@link CurrentSessionContext}
	 * @autor 
	 * @return la sesion actual
	 */
	protected final Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void clear(){
		sessionFactory.getCurrentSession().clear();
	}
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}

}

