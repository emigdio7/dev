/**
 *  Llamadas.java
 * Fecha de creación: 16 dic 2018 21:51:04 
 *
 * Copyright (c) 2018 American Music  S.A. de C.V. 
 * Jiutepec Morelos.
 * Todos los derechos reservados.
 *
 * Este software es información confidencial, propiedad de
 * American Music S.A. de C.V. Esta información confidencial
 * no deberá ser divulgada y solo se podrá utilizar de acuerdo
 * a los términos que determine la propia empresa.
 */
package com.music.admin.proy.vo;

import com.music.admin.proy.utils.Utils;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class Llamadas implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6627083999667057219L;
	
	private Integer llamadaId;
	private Integer clienteId;
	private Empleados empleado;
	private String fecha;
	private String hora;
	private String detalleLlamada;
	private String tiempo;
	private Clientes cliente;
	
	
	/**
	 * @return the cliente
	 */
	public Clientes getCliente() {
		return cliente;
	}

	/**
	 * @param cliente the cliente to set
	 */
	public void setCliente(Clientes cliente) {
		this.cliente = cliente;
	}

	/**
	 * @return the tiempo
	 */
	public String getTiempo() {
		System.out.println("llamadaId: " +llamadaId);
		this.tiempo = Utils.calculaFechas(fecha, hora);
		return tiempo;
	}
	
	/**
	 * @param tiempo the tiempo to set
	 */
	public void setTiempo(String tiempo) {
		this.tiempo = tiempo;
	}
	/**
	 * @return the llamadaId
	 */
	public Integer getLlamadaId() {
		return llamadaId;
	}
	/**
	 * @param llamadaId the llamadaId to set
	 */
	public void setLlamadaId(Integer llamadaId) {
		this.llamadaId = llamadaId;
	}
	/**
	 * @return the clientes
	 */
	public Integer getClienteId() {
		return clienteId;
	}
	/**
	 * @param clientes the clientes to set
	 */
	public void setClienteId(Integer clienteId) {
		this.clienteId = clienteId;
	}
	/**
	 * @return the empleado
	 */
	public Empleados getEmpleado() {
		return empleado;
	}
	/**
	 * @param empleado the empleado to set
	 */
	public void setEmpleado(Empleados empleado) {
		this.empleado = empleado;
	}
	/**
	 * @return the fecha
	 */
	public String getFecha() {
		return fecha;
	}
	/**
	 * @param fecha the fecha to set
	 */
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	/**
	 * @return the hora
	 */
	public String getHora() {
		return hora;
	}
	/**
	 * @param hora the hora to set
	 */
	public void setHora(String hora) {
		this.hora = hora;
	}
	/**
	 * @return the detalleLlamada
	 */
	public String getDetalleLlamada() {
		return detalleLlamada;
	}
	/**
	 * @param detalleLlamada the detalleLlamada to set
	 */
	public void setDetalleLlamada(String detalleLlamada) {
		this.detalleLlamada = detalleLlamada;
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((llamadaId == null) ? 0 : llamadaId.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Llamadas other = (Llamadas) obj;
		if (llamadaId == null) {
			if (other.llamadaId != null)
				return false;
		} else if (!llamadaId.equals(other.llamadaId))
			return false;
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	/*
	@Override
	public String toString() {
		return "Llamadas [llamadaId=" + llamadaId + ", clienteId=" + clienteId + ", empleado=" + empleado + ", fecha="
				+ fecha + ", hora=" + hora + ", detalleLlamada=" + detalleLlamada + ", cliente=" + cliente + "]";
	}
	
	*/

}
