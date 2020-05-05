  /**
 *  Utils.java
 * Fecha de creación: 30 dic. 2018 13:33:42 
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
package com.music.admin.proy.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class Utils {
	
	private static final SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
	private static final SimpleDateFormat sdf2 = new SimpleDateFormat("YYYY-mm-dd");
	
	public static String calculaFechas(String dateStart, String hora) {
	
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

		Date d1 = null;
		Date d2 = null;
		String time1 = null;
		try {
			d1 = format.parse(dateStart+" " + hora);
			d2 = new Date();

			//in milliseconds
			long diff = d2.getTime() - d1.getTime();

			long diffSeconds = diff / 1000 % 60;
			long diffMinutes = diff / (60 * 1000) % 60;
			long diffHours = diff / (60 * 60 * 1000) % 24;
			long diffDays = diff / (24 * 60 * 60 * 1000);

			if (diffDays>0) {
				time1 = "Desde el " + dateStart;
			} else if (diffHours>0) {
				time1 = "Hace " + String.valueOf(diffHours) + " horas ";
			} else if (diffMinutes>0) {
				time1 = "Hace " +String.valueOf(diffMinutes) + " Minutos ";
			} else if (diffSeconds>0) {
				time1 = " Justo ahora ";
			}  
			
			/*System.out.print(diffDays + " days, ");
			System.out.print(diffHours + " hours, ");
			System.out.print(diffMinutes + " minutes, ");
			System.out.println(diffSeconds + " seconds.");*/

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return time1;
	}
	
	
	/**
	 * @param fechaEvento the fechaEvento to set
	 */
	public static Map<String, String> calculaFechaEventoCalendario(String fechaEvento, String horaInicio) {
		System.out.println("fechaEvento: "+fechaEvento);
		String fechaCalendar = "";
		String fechaCalendarFin = "";
		Map<String, String> fechas = null;
		try {
			Calendar c = Calendar.getInstance();
			c.setTime(sdf.parse(fechaEvento));
			fechaCalendar = sdf2.format(c.getTime()) ;
			
			fechas = new HashMap<String, String>();
			fechas.put("fechaInicio", fechaCalendar + "T"+horaInicio+":00");
			fechas.put("fechaFin", fechaCalendarFin+ "T12:00:00");
			
			System.out.println("fechaEventoInicio: "+fechaCalendar);
		} catch(Exception ex) {
			System.out.println("Error al parsear fecha: " +fechaEvento );
		}
		return fechas;
	}
	
}
