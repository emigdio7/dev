/**
 *  Eventos.java
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

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class Eventos implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3954699352072437804L;
	
	
	private Integer eventoId;
	private String grupo;	
	private String contrato;
	private double anticipo;
	private double restante;
	private String telefono;
	private String fechaEvento;
	private String lugarEvento;
	private String horaInicio;
	private String horaFin;
	private String chofer;
	private String camioneta;
	private String usuarioAlta;
	private Integer clienteId;	
	private TipoEvento tipoEvento;
	private Integer activo;
	private String category;
	private String fechaCalendar;
	private String fechaCalendarFin;
	
	
	/**
	 * @return the fechaCalendarFin
	 */
	public String getFechaCalendarFin() {
		return fechaCalendarFin;
	}
	/**
	 * @param fechaCalendarFin the fechaCalendarFin to set
	 */
	public void setFechaCalendarFin(String fechaCalendarFin) {
		this.fechaCalendarFin = fechaCalendarFin;
	}
	/**
	 * @return the fechaCalendar
	 */
	public String getFechaCalendar() {
		return fechaCalendar;
	}
	/**
	 * @param fechaCalendar the fechaCalendar to set
	 */
	public void setFechaCalendar(String fechaCalendar) {
		this.fechaCalendar = fechaCalendar;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
 
	
	public Eventos(Integer eventoId) {
		this.eventoId = eventoId;
	}
	
	public Eventos() {
	}
	
	/**
	 * @return the eventoId
	 */
	public Integer getEventoId() {
		return eventoId;
	}

	/**
	 * @param eventoId the eventoId to set
	 */
	public void setEventoId(Integer eventoId) {
		this.eventoId = eventoId;
	}

	/**
	 * @return the grupo
	 */
	public String getGrupo() {
		return grupo;
	}

	/**
	 * @param grupo the grupo to set
	 */
	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	/**
	 * @return the contrato
	 */
	public String getContrato() {
		return contrato;
	}

	/**
	 * @param contrato the contrato to set
	 */
	public void setContrato(String contrato) {
		this.contrato = contrato;
	}

	/**
	 * @return the anticipo
	 */
	public double getAnticipo() {
		return anticipo;
	}

	/**
	 * @param anticipo the anticipo to set
	 */
	public void setAnticipo(double anticipo) {
		this.anticipo = anticipo;
	}

	/**
	 * @return the restante
	 */
	public double getRestante() {
		return restante;
	}

	/**
	 * @param restante the restante to set
	 */
	public void setRestante(double restante) {
		this.restante = restante;
	}

	/**
	 * @return the telefono
	 */
	public String getTelefono() {
		return telefono;
	}

	/**
	 * @param telefono the telefono to set
	 */
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	/**
	 * @return the fechaEvento
	 */
	public String getFechaEvento() {
		return fechaEvento;
	}

	/**
	 * @param fechaEvento the fechaEvento to set
	 */
	public void setFechaEvento(String fechaEvento) {
		this.fechaEvento = fechaEvento;
	}

	/**
	 * @return the lugarEvento
	 */
	public String getLugarEvento() {
		return lugarEvento;
	}

	/**
	 * @param lugarEvento the lugarEvento to set
	 */
	public void setLugarEvento(String lugarEvento) {
		this.lugarEvento = lugarEvento;
	}

	/**
	 * @return the horaInicio
	 */
	public String getHoraInicio() {
		return horaInicio;
	}

	/**
	 * @param horaInicio the horaInicio to set
	 */
	public void setHoraInicio(String horaInicio) {
		this.horaInicio = horaInicio;
	}

	/**
	 * @return the horaFin
	 */
	public String getHoraFin() {
		return horaFin;
	}

	/**
	 * @param horaFin the horaFin to set
	 */
	public void setHoraFin(String horaFin) {
		this.horaFin = horaFin;
	}

	/**
	 * @return the chofer
	 */
	public String getChofer() {
		return chofer;
	}

	/**
	 * @param chofer the chofer to set
	 */
	public void setChofer(String chofer) {
		this.chofer = chofer;
	}

	/**
	 * @return the camioneta
	 */
	public String getCamioneta() {
		return camioneta;
	}

	/**
	 * @param camioneta the camioneta to set
	 */
	public void setCamioneta(String camioneta) {
		this.camioneta = camioneta;
	}

	/**
	 * @return the usuarioAlta
	 */
	public String getUsuarioAlta() {
		return usuarioAlta;
	}

	/**
	 * @param usuarioAlta the usuarioAlta to set
	 */
	public void setUsuarioAlta(String usuarioAlta) {
		this.usuarioAlta = usuarioAlta;
	}

	/**
	 * @return the clienteId
	 */
	public Integer getClienteId() {
		return clienteId;
	}

	/**
	 * @param clienteId the clienteId to set
	 */
	public void setClienteId(Integer clienteId) {
		this.clienteId = clienteId;
	}

	/**
	 * @return the tipoEvento
	 */
	public TipoEvento getTipoEvento() {
		return tipoEvento;
	}

	/**
	 * @param tipoEvento the tipoEvento to set
	 */
	public void setTipoEvento(TipoEvento tipoEvento) {
		this.tipoEvento = tipoEvento;
	}

	/**
	 * @return the activo
	 */
	public Integer getActivo() {
		return activo;
	}

	/**
	 * @param activo the activo to set
	 */
	public void setActivo(Integer activo) {
		this.activo = activo;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((eventoId == null) ? 0 : eventoId.hashCode());
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
		Eventos other = (Eventos) obj;
		if (eventoId == null) {
			if (other.eventoId != null)
				return false;
		} else if (!eventoId.equals(other.eventoId))
			return false;
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	
	/*
	@Override
	public String toString() {
		return "Eventos [eventoId=" + eventoId + ", grupo=" + grupo + ", contrato=" + contrato + ", anticipo="
				+ anticipo + ", restante=" + restante + ", telefono=" + telefono + ", fechaEvento=" + fechaEvento
				+ ", lugarEvento=" + lugarEvento + ", horaInicio=" + horaInicio + ", horaFin=" + horaFin + ", chofer="
				+ chofer + ", camioneta=" + camioneta + ", usuarioAlta=" + usuarioAlta + ", clienteId=" + clienteId
				+ ", tipoEvento=" + tipoEvento + ", activo=" + activo + ", category"+ category+"]";
	}

	*/
	
	
}
