package com.music.admin.proy.utils;

public class Pruebas {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String detalle = "la cadena es #1";
		StringBuilder eventoBl=new StringBuilder();
		
		if (detalle.contains("#")) {
			for(int pos = detalle.indexOf("#")+1;pos<detalle.length() && esNumero(String.valueOf(detalle.charAt(pos))) ; pos++) {
				eventoBl.append(detalle.charAt(pos));
			}
		}
		
		System.out.println("eventoBl : "+eventoBl);
		if (esNumero(eventoBl.toString())) {
			System.out.println("con evento "+eventoBl);
		} else {
			System.out.println(" sin evento ");
		}
	}
	
	public static boolean  esNumero(String cadena){
		try {
			Integer.parseInt(cadena);
		} catch (NumberFormatException nfe){
			return false;
		}
		return true;
	}

}
