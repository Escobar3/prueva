<%-- 
    Document   : index
    Created on : 1/12/2018, 10:06:57 AM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.io.*"%>
<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.plot.*"%>
<%@page import="org.jfree.data.general.*"%>
<%@page import="org.jfree.data.category.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%
        //diagrama de pastel
        //objeto de tipo grafico    
        DefaultPieDataset data = new DefaultPieDataset();
        //cargamos los datos
        //-------------titulo,valor-----------//
        data.setValue("Enero", 10010000);
        data.setValue("Febrero", 8000);
        data.setValue("Marzo", 9000);
        data.setValue("Abril", 7000);
        //objeto donde estara el grafico
        //--------------------------------------------titulo de la grafica,datos,decoraciones activas
        JFreeChart grafico=ChartFactory.createPieChart("ingresos año 2018", data, true, true, true);
        //donde se visualizara la grafica
        response.setContentType("image/JPEG");
        //la salida de la grafica
        OutputStream sa=response.getOutputStream();
        //impresion
        //---------------------------salida,grafico,tamaños
        ChartUtilities.writeChartAsPNG(sa, grafico, 350, 350);
        %>

    </body>
</html>
