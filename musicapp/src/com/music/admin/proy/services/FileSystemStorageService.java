  /**
 *  FileSystemStorageService.java
 * Fecha de creación: 1 ene. 2019 9:38:42 
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
package com.music.admin.proy.services;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Component;
import org.springframework.util.FileSystemUtils;

//import com.juliuskrah.jasper.ApplicationProperties;
import com.music.admin.proy.exceptions.StorageException;
import com.music.admin.proy.exceptions.StorageFileNotFoundException;

//import lombok.extern.slf4j.Slf4j;
/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
//@Component
public class FileSystemStorageService implements StorageService {
	private final Path rootLocation = Paths.get(null);
	/*private final ApplicationProperties properties;

	public FileSystemStorageService(ApplicationProperties properties) throws IOException {
		this.properties = properties;
		this.rootLocation = Paths.get(properties.getStorageLocation().getURL().getPath());
	}*/

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.juliuskrah.jasper.storage.StorageService#init()
	 */
	@Override
	public void init() {
		try {
			Files.createDirectory(rootLocation);
		}
		catch (IOException e) {
			throw new StorageException("Could not initialize storage", e);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.juliuskrah.jasper.storage.StorageService#deleteAll()
	 */
	@Override
	public void deleteAll() {
		try {
			FileSystemUtils.deleteRecursively(rootLocation);
		}
		catch (IOException e) {
			throw new StorageException("Could not delete files and folders", e);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.juliuskrah.jasper.storage.StorageService#jrxmlFileExists(java.lang.
	 * String)
	 */
	@Override
	public boolean jrxmlFileExists(String file) {
		// @formatter:off
		try {
			Path reportFile = null;//Paths.get(properties.getReportLocation().getURI());
			reportFile = reportFile.resolve(file + ".jrxml");
			if (Files.exists(reportFile))
				return true;
		} catch (Exception e) {
			//log.error("Error while trying to get file URI", e);
			return false;
		}
		// @formatter:on
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.juliuskrah.jasper.storage.StorageService#jasperFileExists(java.lang.
	 * String)
	 */
	@Override
	public boolean jasperFileExists(String file) {
		Path reportFile = rootLocation;
		reportFile = reportFile.resolve(file + ".jasper");
		if (Files.exists(reportFile))
			return true;
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.juliuskrah.jasper.storage.StorageService#loadJrxmlFile(java.lang.String)
	 */
	@Override
	public String loadJrxmlFile(String file) {
		// @formatter:off
		try {
			Path reportFile = null;// Paths.get(properties.getReportLocation().getURI());
			reportFile = reportFile.resolve(file + ".jrxml");
			return reportFile.toString();
		} catch (Exception e) {
			//log.error("Error while trying to get file prefix", e);
			throw new StorageFileNotFoundException("Could not load file", e);
		}
		// @formatter:on
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.juliuskrah.jasper.storage.StorageService#loadJasperFile(java.lang.String)
	 */
	@Override
	public File loadJasperFile(String file) {
		Path reportFile = rootLocation;
		reportFile = reportFile.resolve(file + ".jasper");
		return reportFile.toFile();
	}

}