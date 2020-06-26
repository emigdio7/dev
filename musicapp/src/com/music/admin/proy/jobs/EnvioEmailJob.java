  /**
 *  EnvioEmailJob.java
 * Fecha de creación: 28 dic. 2018 20:35:36 
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
package com.music.admin.proy.jobs;

import java.util.List;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.music.admin.proy.services.ClientesService;
import com.music.admin.proy.services.EmailService;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
public class EnvioEmailJob extends QuartzJobBean {

	//Servicios que se usarán en la tarea. En un Job no es posible usar la funcionalidad de Spring para inyectar las dependencias.
    private EmailService emailService;
 

    @Override
    protected void executeInternal(JobExecutionContext jobContext) throws JobExecutionException {

          //Recuperamos las dependencias de servicios necesarios del contexto de Spring (porque fueron previamente definidos en spring-quartz.xml)
          //this.customService = (CustomService) jobContext.getJobDetail().getJobDataMap().get("customService");
    
    		System.out.println("En executeInternal");
    		emailService = (EmailService) jobContext.getJobDetail().getJobDataMap().get("emailService");
    		emailService.sendSimpleMessage("Prueba Envio 3", "Envio de correo de prueba");
          // ... cosas después

    }
    
}
