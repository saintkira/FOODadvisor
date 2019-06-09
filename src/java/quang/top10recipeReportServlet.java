/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package quang;

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
import model.Recipe;
import model.RecipeDetailFacadeLocal;
import model.RecipeFacadeLocal;
import model.RecipeModel;
import model.recipeCountModel;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import toan.recipedetailReportServlet;

public class top10recipeReportServlet extends HttpServlet {
    @EJB
    private RecipeFacadeLocal recipeFacade;
    @EJB
    private RecipeDetailFacadeLocal recipeDetailFacade;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         try {
            List<recipeCountModel> list = recipeDetailFacade.getTopRecipe();
            List<recipeCountModel> listi = new ArrayList<>();
             for (int i = 0; i < list.size(); i++) {
                 listi.add(new recipeCountModel(list.get(i).getCount(), list.get(i).getRecipe().getRecipeID(), list.get(i).getRecipe().getRecipeName(),i+1));
             }
            
            JRBeanCollectionDataSource jrbean = new JRBeanCollectionDataSource(listi);
            Map<String, Object> parameters = new HashMap<>();
            parameters.put("TopRecipesDataSource", jrbean);
            parameters.put("TotalLikes", recipeDetailFacade.getLikes());

            String path = request.getServletContext().getRealPath("//") + "\\report\\top10recipeReport.jasper";
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
