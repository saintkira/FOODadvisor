<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page contentType="application/pdf"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ page import="net.sf.jasperreports.engine.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>


<%
    Connection conn = null;
    try {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=FoodAdvisor;user=sa;password=123");
        String jrxmlFile = session.getServletContext().getRealPath("/WEB-INF/menuReport.jrxml");

        Map parameters = new HashMap();
        String username = request.getParameter("username");
        parameters.put("username", username);
        
        InputStream input = new FileInputStream(new File(jrxmlFile));
        JasperReport jr = JasperCompileManager.compileReport(input);
        JasperPrint jp = JasperFillManager.fillReport(jr, parameters,conn);
        JasperExportManager.exportReportToPdfStream(jp,response.getOutputStream());
        response.getOutputStream().flush();
        response.getOutputStream().close();        
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

%>