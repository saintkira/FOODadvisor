package toan;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.IngredientModel;
import model.RecipeDetailFacadeLocal;
import model.RecipeFacadeLocal;
import model.RecipeModel;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;


public class recipedetailReportServlet extends HttpServlet {
    @EJB
    private RecipeDetailFacadeLocal recipeDetailFacade;
    @EJB
    private RecipeFacadeLocal recipeFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            RecipeModel recipe = recipeDetailFacade.getIngredients("R002");
            List<IngredientModel> listi = recipe.getIngredients();
            for (int i = 0; i < listi.size(); i++) {
                System.out.println(listi.get(i).getIngredientName());;
            }
            JRBeanCollectionDataSource jrbean = new JRBeanCollectionDataSource(listi);
            Map<String, Object> parameters = new HashMap<>();
            parameters.put("IngredientDataSource", jrbean);
            parameters.put("recipename", recipe.getRecipeName());
            parameters.put("recipeprice", recipe.getPrice());

            String path = request.getServletContext().getRealPath("//") + "\\report\\recipedetailReport.jasper";
            JasperPrint jasperprint = JasperFillManager.fillReport(path, parameters, new JREmptyDataSource());
            response.setContentType("application/x-download");
            response.addHeader("Content-disposition", "attachment; filename=StatisticsrReport1.pdf");
            OutputStream out = response.getOutputStream();
            JasperExportManager.exportReportToPdfStream(jasperprint, out);
            System.out.println("Motherfucker");
        } catch (JRException ex) {
            Logger.getLogger(recipedetailReportServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
