/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package toan;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Recipe;
import model.RecipeDetailFacadeLocal;
import model.RecipeFacadeLocal;

/**
 *
 * @author Toan
 */
public class insertRecipeServlet extends HttpServlet {
    @EJB
    private RecipeDetailFacadeLocal recipeDetailFacade;
    @EJB
    private RecipeFacadeLocal recipeFacade;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("recipeID");
        String name = request.getParameter("recipename");
        String des = request.getParameter("recipedescription");
        String price = request.getParameter("recipeprice");
        String direction = request.getParameter("editor1");
        String ingred = request.getParameter("recipeingred");
        recipeFacade.create(new Recipe(id, name, price, direction, "Maincourse"));
        response.sendRedirect("pages/admin/recipes_manage.jsp");
        //out.println("Success");
        //out.print(request.getParameter("editor1"));
        //System.out.println(request.getParameter("editor1"));
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
