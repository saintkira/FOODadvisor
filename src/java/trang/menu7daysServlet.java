package trang;

import helper.ClientHelper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Recipe;
import model.RecipeFacadeLocal;

/**
 *
 * @author trangnmt
 */
public class menu7daysServlet extends HttpServlet {

    @EJB
    private RecipeFacadeLocal recipeFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

            if (session.getAttribute("username") == null) {
                response.sendRedirect("pages/login.jsp");
                session.setAttribute("redirect", "/FOODadvisor/menu7daysServlet");
            } else {
                
                String root = request.getServletContext().getRealPath("//")+"\\recipes_document\\";
                System.out.println(root);

                List<Recipe> list = recipeFacade.findAll().subList(0, 20);
                for (Recipe recipe : list) {
                    //get directory contains image
                    String fname = recipe.getRecipeID();
                    File folder = new File(root + fname);

                    String img_dir = fname + "/" + folder.listFiles()[0].getName();
                    recipe.setRecipeImage(img_dir);
                }

                session.setAttribute("list", list);
                response.sendRedirect("pages/list_7days.jsp");
            }

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

