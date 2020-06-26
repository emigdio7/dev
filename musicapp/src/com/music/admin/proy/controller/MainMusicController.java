/**
 *  MainMusicController.java
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
package com.music.admin.proy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.music.admin.proy.services.UserDetailsService;
import com.music.admin.proy.vo.Empleados;
import com.music.admin.proy.vo.Usuario;

/*import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;*/

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
@Controller
@RequestMapping("/main")
public class MainMusicController {

	protected static final Log logger = LogFactory.getLog(MainMusicController.class.getName());
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@RequestMapping(value = "/inicio", method = RequestMethod.GET)
	public ModelAndView inicio() {
 
		logger.info("Mensaje de Logger en inicio");
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello Mundo, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}
	
	
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String home(Model modelo, @RequestParam String nombreUsuario, 
			@RequestParam String pass, HttpServletRequest request) {
		System.out.println("en home111");
		System.out.println("Mensaje de home: "+nombreUsuario);
		UserDetails usr = null;
		try {
			usr =  userDetailsService.loadUserByUsername(nombreUsuario);
			System.out.println("USUARIO: "+usr);
			if (usr.getPassword().equals(pass)) {
				Empleados emp =  userDetailsService.loadIdUserByUsername(nombreUsuario);
				HttpSession session = request.getSession(true);
				session.setAttribute("empleado", emp);
				System.out.println("USUARIO VALIDO: ");
				
			} else {
				return "noSession";
			}
		} catch (UsernameNotFoundException ex){
			return "noSession";
		} catch (Exception ex){
			return "noSession";
		}
		
		System.out.println("en usr: " + usr);
		System.out.println("en getUsername: " + usr.getUsername());
		System.out.println("en getAuthorities: " + usr.getAuthorities());
		return "inicio";
	}

	
	 @RequestMapping(value = "/home1", method = RequestMethod.GET)
	 public String home1(final Model model) {
			logger.info("Mensaje de home");	
			System.out.println("en home1");
			UserDetails usr =  userDetailsService.loadUserByUsername("admin");
			System.out.println("en usr: " + usr);
			System.out.println("en usr: " + usr.getPassword());
			System.out.println("en usr: " + usr.getUsername());
			return "layout-blank";
	 
	 }
	 
	@RequestMapping(value = "/home2", method = RequestMethod.POST)
	public String home2() {
		System.out.println("en home2");
		logger.info("Mensaje de home");	
		UserDetails usr =  userDetailsService.loadUserByUsername("admin");
		System.out.println("en usr: " + usr);
		return "layout-blank";
	}

	//@GetMapping("/exchangeRates")
	/*@RequestMapping(value = "/exchangeRates", method = RequestMethod.GET)
    public String handleForexRequest(Model model) {
        model.addAttribute("todayCurrencyRates", getTodayForexRates());
        System.out.println("En vista ");
        return "forexView";
    }*/
	
	/*@RequestMapping(value = "/exchangeRates", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<byte[]> getRpt1(HttpServletResponse response) throws JRException, IOException {
	    InputStream jasperStream = this.getClass().getResourceAsStream("/rates.jasper");
	    //model.addAttribute("todayCurrencyRates", getTodayForexRates());
	    Map<String,Object> params = new HashMap();
	    
	    JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
	    JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, new JREmptyDataSource());

	    response.setContentType("application/x-pdf");
	    response.setHeader("Content-disposition", "inline; filename=helloWorldReport.pdf");

	    final OutputStream outStream = response.getOutputStream();
	    JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
	    
	    
	    ByteArrayOutputStream outStream1 = new ByteArrayOutputStream();
		
	    final HttpHeaders headers = new org.springframework.http.HttpHeaders();
		headers.setContentType(MediaType.parseMediaType("application/pdf"));
		//headers.set("Content-Disposition", "attachment; filename=NotificacionRechazo.pdf");

		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream1);

		ResponseEntity<byte[]> responseentity = null;
		responseentity = new ResponseEntity<byte[]>((outStream1.toByteArray()), headers, HttpStatus.OK);
		return responseentity;
	}
	
	  @RequestMapping(value = "/helloReport1", method = RequestMethod.GET)
	  @ResponseBody
	  public void getRpt2(HttpServletResponse response) throws JRException, IOException {
	    InputStream jasperStream = this.getClass().getResourceAsStream("/rates.jasper");
	    Map<String,Object> params = new HashMap<>();
	    JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
	    JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, new JREmptyDataSource());

	    response.setContentType("application/x-pdf");
	    response.setHeader("Content-disposition", "inline; filename=helloWorldReport.pdf");

	    final OutputStream outStream = response.getOutputStream();
	    JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
	  }
	  
	@RequestMapping(value = "/getReport", method = RequestMethod.GET)
	public ResponseEntity<byte[]> report(@PathVariable(required = false) String username) {
		    Map<String, Object> params = new HashMap<>();
		    params.put("username", username);
		    byte[] bytes = new byte[]{new Byte(""), new Byte("")};//reportService.generatePDFReport("pdf_rest_resource", params);
		    
		    return ResponseEntity
		      .ok()
		      // Specify content type as PDF
		      .header("Content-Type", "application/pdf; charset=UTF-8")
		      // Tell browser to display PDF if it can
		      .header("Content-Disposition", "inline; filename=\"" + username + ".pdf\"")
		      .body(bytes);
	 }
	
    private List<CurrencyRate> getTodayForexRates() {
        //dummy rates
        List<CurrencyRate> currencyRates = new ArrayList<CurrencyRate>();
        Date today = new Date();
        List<Currency> currencies = new ArrayList<>(Currency.getAvailableCurrencies());

        for (int i = 0; i < currencies.size() -1 ; i += 2) {
            String currencyPair = currencies.get(i) + "/" + currencies.get(i + 1);
            CurrencyRate cr = new CurrencyRate();
            cr.setCurrencyPair(currencyPair);
            cr.setDate(today);
            BigDecimal bidPrice = new BigDecimal(Math.random() * 5 + 1);
            bidPrice = bidPrice.setScale(3, RoundingMode.CEILING);
            cr.setBidPrice(bidPrice);
            BigDecimal askPrice = new BigDecimal(bidPrice.doubleValue() + Math.random() * 2 + 0.5);
            askPrice = askPrice.setScale(3, RoundingMode.CEILING);
            cr.setAskPrice(askPrice);

            currencyRates.add(cr);
        }
        return currencyRates;
    }*/
    
    
    /*public byte[] generatePDFReport(String inputFileName, Map<String, Object> params,
    	    JRDataSource dataSource) {
    	    byte[] bytes = null;
    	    JasperReport jasperReport = null;
    	    try (ByteArrayOutputStream byteArray = new ByteArrayOutputStream()) {
    	      // Check if a compiled report exists
    	      if (storageService.jasperFileExists(inputFileName)) {
    	        jasperReport = (JasperReport) JRLoader.loadObject(storageService.loadJasperFile(inputFileName));
    	      }
    	      // Compile report from source and save
    	      else {
    	        String jrxml = storageService.loadJrxmlFile(inputFileName);
    	        jasperReport = JasperCompileManager.compileReport(jrxml);
    	        // Save compiled report. Compiled report is loaded next time
    	        JRSaver.saveObject(jasperReport, storageService.loadJasperFile(inputFileName));
    	      }
    	      JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, dataSource);
    	      // return the PDF in bytes
    	      bytes = JasperExportManager.exportReportToPdf(jasperPrint);
    	    }
    	    catch (JRException | IOException e) {
    	      e.printStackTrace();
    	    }
    	    return bytes;
    }*/
    
    
	
}
