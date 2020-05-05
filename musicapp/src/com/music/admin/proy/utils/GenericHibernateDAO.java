package com.music.admin.proy.utils;

import java.io.Serializable;
import java.sql.Clob;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Example;
import org.springframework.dao.IncorrectResultSizeDataAccessException;

/**
 * Clase para la exportacion de la informacion de los medios de Identificacion en formato Excel
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
 * @version 1.0
 * @since SIIRFE 6.3
 */
public interface GenericHibernateDAO {
	
	/**
	 * Convierte a Clob a partir de una cadena String
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param str
	 * @return El Clob creado
	 */
	public Clob createClob(String str);
	
	/**
	 * Obtiene todos los atributos de una entidad o null si esta no existe.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entidad la entidad a regresar
	 * @param id	 
	 * @return La entidad solicitada con base a su id, o null si no existe.
	 */

	<T> T get(String entidad, Serializable id);

	/**
	 * Realiza obtiene todos los atributos de una entidad o null si esta no existe.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param id
	 * @param clazz el tipo de entidad a regresar
	 * @return La entidad solicitada con base a su id, o null si no existe.
	 */

	<T> T get(Class<T> clazz, Serializable id);

	/**
	 * Ejecuta un query de consulta esperando una unica entidad. A diferencia del Metodo
	 * <code>queryForEntity</code> regresa null si la entidad no existe. Si se obtienen mas de
	 * un resultado, se lanza {@link IncorrectResultSizeDataAccessException}
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param clazz
	 * @param query
	 * @param params
	 * @return la entidad solicitada, null si no existe, o excepcion s se obtiene mas de un
	 *         registro.
	 */
	<T> T get(Class<T> clazz, String query, Object... params);
	
	
	/**
	 * Realiza una carga empleando lazy loading. El Metodo no garantiza que la instancia
	 * exista, se asume que existe y la obtencion de sus atributos se realiza empleando lazy
	 * loading.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entityName Nombre de la entidad a regresar
	 * @param id
	 * @return Un proxy de la entidad solicitada.
	 */

	<T> T load(String entityName, Serializable id);
	
	/**
	 * Realiza una carga empleando lazy loading. El Metodo no garantiza que la instancia
	 * exista, se asume que existe y la obtencion de sus atributos se realiza empleando lazy
	 * loading.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param clazz el tipo de entidad a regresar
	 * @param id
	 * @return Un proxy de la entidad solicitada.
	 */

	<T> T load(Class<T> clazz, Serializable id);

	/**
	 * Ejecuta una consulta empleando HQL con un conjunto de parametros.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param query
	 * @param params
	 * @return Una lista de entidades asociadas al DAO, o lista vacia si no existen.
	 */

	<T> List<T> find(String query, Object... params);

	/**
	 * Metodo que obtiene un detalle paginado
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param query {@link String}
	 * @param paginaActual int
	 * @param numFilas int
	 * @param params Parametros
	 * @return {@link List}
	 */
	<T> List<T> findPaginado(String query, int paginaActual, int numFilas, Object... params);

	/**
	 * Ejecuta HQL en la que se espera un solo registro, lanza
	 * {@link IncorrectResultSizeDataAccessException} en caso de no obtener exactamente una
	 * entidad
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param query
	 * @param params
	 * @return la entidad solicitada
	 */

	<T> T queryForEntity(String query, Object... params);

	/**
	 * Realiza una consulta empleando queryByExample en donde se espera un solo registro. se
	 * lanza {@link IncorrectResultSizeDataAccessException} en caso de no obtener exactamente
	 * una entidad
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entityExample La entidad con los atributos a considerar como condiciones de la
	 *        consulta.
	 * @return la entidad solicitada
	 */

	<T> T queryForEntity(T entityExample);

	/**
	 * Realiza una consulta empleando queryByExample en donde se espera un solo registro. se
	 * lanza {@link IncorrectResultSizeDataAccessException} en caso de no obtener exactamente
	 * una entidad. Este Metodo acepta un objeto {@link Example}, se emplea cuando se requera
	 * personalizar la consulta.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param example El objeto que contiene la configuracion y los criterios de busqueda para
	 *        realizar la consulta.
	 * @param clazz el tipo de entidad esperado.
	 * @return la entidad solicitada
	 */

	<T> T queryForEntity(Example example, Class<T> clazz);

	/**
	 * Regresa un objeto {@link Criteria} para construir consultas empleando esta
	 * funcionalidad.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param clazz
	 * @return un objeto {@link Criteria} listo para ser configurado y ejecutado.
	 */
	Criteria construyeCriteria(Class<?> clazz);

	/**
	 * Realiza busquedas de entidades empleando la funcionalidad de QBE (query by example) de
	 * Hibernate
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param example
	 * @return Una lista de objetos que coinciden con las propiedades que se pasan en la
	 *         entidad de ejemplo.
	 */
	<T> List<T> queryByExample(T example);

	/**
	 * Misma funcionalidad que el metodo sobrecargado con la diferencia en que este acepta un
	 * objeto {@link Example} previamente personalizado y configurado. Hibernate
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param example
	 * @param entityClass el tipo de entidad que se espera.
	 * @return Una lista de objetos que coinciden con las propiedades que se pasan en la
	 *         entidad de ejemplo.
	 */
	<T> List<T> queryByExample(Example example, Class<T> entityClass);

	/**
	 * Metodo que obtiene todos los regitros de la entidad <T>
	 * @param clazz el tipo de entidad a regresar
	 * @autor Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @return lista de los registros obtenidos
	 */

	<T> List<T> findAll(Class<T> clazz);

	/**
	 * Persiste la informacion de la entidad proporcionada
	 * @autor Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entityName
	 * @param entity
	 */
	void save(String entityName,Serializable entity);
	
	/**
	 * Persiste la informacion de la entidad proporcionada
	 * @autor Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entity
	 */
	void save(Serializable entity);

	/**
	 * Aplica una operacion de save o update sobre la entidad que se pasa como paametro.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entity
	 */
	void saveOrUpdate(Serializable entity);

	/**
	 * Actualiza la informacion de la entidad proporcionada
	 * @autor Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entity Esta entidad no necesariamente esta asociada a la sesion.
	 * @return La instancia actualizada y asociada a la sesion.
	 */

	<T> T merge(final T entity);
	
	
	/**
	 * Realiza una operaciòn de update. El objeto que se recibe no debe esta asociado a la
	 * sesion. Si existe un objeto en sesion con el mismo id, se lanza excepcion.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @paramm entityName
	 * @param entity
	 */
	<T> void update(String entityName,T entity);
	
	/**
	 * Realiza una operaciòn de update. El objeto que se recibe no debe esta asociado a la
	 * sesion. Si existe un objeto en sesion con el mismo id, se lanza excepcion.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entity
	 */
	<T> void update(T entity);

	/**
	 * Realiza una operaciòn de update empleando hql
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param query
	 * @param params
	 * @return el numero de registros afectados.
	 */
	int update(String query, Object... params);

	/**
	 * Elimina la entidad proporcionada
	 * @autor Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entity
	 */
	<T> void delete(final T entity);

	/**
	 * Invoca una operaciòn de refresh de la entidad que se pasa como paametro.
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 * @param entity
	 */
	void refresh(Serializable entity);

	/**
	 * Realiza comit a bd
	 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsa@ine.mx)
	 */
	void flush();
	
	public void clear();
	
}