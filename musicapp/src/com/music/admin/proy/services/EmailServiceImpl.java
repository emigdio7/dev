/**
 * EmailServiceImpl.java
 * Fecha de creación: 25 nov 2018 11:23:36
 *
 * Copyright (c) 2016 Empresa S.A. de C.V. 
 * Jiutepec Morelos.
 * Todos los derechos reservados.
 *
 * Este software es información confidencial, propiedad de
 * Empresa S.A. de C.V. Esta información confidencial
 * no deberá ser divulgada y solo se podrá utilizar de acuerdo
 * a los términos que determine la propia empresa.
 */
package com.music.admin.proy.services;

import java.util.Date;
import java.util.List;
import java.util.Properties;


import javax.mail.MessagingException;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since RECICLA 1.0 
 */
@Service("emailService")
public class EmailServiceImpl implements EmailService {

	@Autowired
	private ClientesService clientesService;
	
	private JavaMailSender mailSender = getJavaMailSender();
	

	public void sendSimpleMessage(String subject, String text) {

		List<String> list = clientesService.getEmailCliente();

		String[] correos = new String[list.size()];
		list.toArray(correos);

		MimeMessage message1 = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message1, true);

			helper.setSubject(subject);
			helper.setText(String.format(text));

			helper.setBcc(correos);
			FileSystemResource file = new FileSystemResource("C:\\Users\\Ems\\Downloads\\alcohol-covid.pdf");
			helper.addAttachment(file.getFilename(), file);

		} catch (MessagingException e) {
			throw new MailParseException(e);
		}

		mailSender.send(message1);

		System.out.println("Envia Correo: " + new Date());

	}

	public JavaMailSender getJavaMailSender() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);

		mailSender.setUsername("emigdio.santamaria@gmail.com");
		mailSender.setPassword("Martinez123@");

		Properties props = mailSender.getJavaMailProperties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.debug", "true");

		return mailSender;
	}

}
