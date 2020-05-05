  /**
 *  CurrencyRateHtmlView.java
 * Fecha de creación: 30 dic. 2018 21:32:14 
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
package com.music.admin.proy.views;

/**
 * Descripcion:
 * @author Victor Manuel Gonzalez Santamaria (victor.gonzalezsan@gmail.com)
 * @version 1.0
 * @since AMERICAN MUSIC 1.0
 */
/*import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.HtmlExporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleHtmlExporterOutput;*/
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;

import com.music.admin.proy.vo.CurrencyRate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

@Component("forexView")
public abstract class CurrencyRateHtmlView extends AbstractView {
    /*private JasperReport currencyRatesReport;*/

   /* @Override
    protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
                                           HttpServletResponse response) throws Exception {
        response.setContentType("text/html");
        List<CurrencyRate> rates = (List<CurrencyRate>) model.get("todayCurrencyRates");
        //data source
        JRDataSource dataSource = getDataSource(rates);
        //compile jrxml template and get report
        JasperReport report = getReport();
        //fill the report with data source objects
        JasperPrint jasperPrint = JasperFillManager.fillReport(report, null, dataSource);
        //export to html
        HtmlExporter exporter = new HtmlExporter(DefaultJasperReportsContext.getInstance());
        exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
        exporter.setExporterOutput(new SimpleHtmlExporterOutput(response.getWriter()));
        exporter.exportReport();
    }

    private JRDataSource getDataSource(List<CurrencyRate> rates) {
        JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(rates);
        return dataSource;
    }

    public JasperReport getReport() throws JRException {
        if (currencyRatesReport == null) {//compile only once lazily
            InputStream stream = getClass().getResourceAsStream("/rates.jrxml");
            currencyRatesReport = JasperCompileManager.compileReport(stream);
        }
        return currencyRatesReport;
    }*/
}