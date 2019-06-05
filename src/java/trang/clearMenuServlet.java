/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trang;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.CollectionType;
import helper.ConnectionHelper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Menu7Days;
import model.Recipe;
import model.RecipeFacadeLocal;

/**
 *
 * @author trangnmt
 */
public class clearMenuServlet extends HttpServlet {
    @EJB
    private RecipeFacadeLocal recipeFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //Get username from session
            HttpSession session = request.getSession();
            String username = (String) session.getAttribute("username");

            //get directory of recipes_document folder
            String root = request.getServletContext().getRealPath("//") + "\\recipes_document\\";

            //set menuList from db            
            session.setAttribute("menuList", null);
            

            //check recipeList in session
            if (session.getAttribute("recipeList") != null) {
                session.setAttribute("recipeList", session.getAttribute("recipeList"));
            } else {
                //set recomment list
                List<Recipe> rcmList = recipeFacade.findAll().subList(0, 100);
                for (Recipe recipe : rcmList) {
                    //get directory contains image
                    String fname = recipe.getRecipeID();
                    File folder = new File(root + fname);

                    String img_dir = fname + "/" + folder.listFiles()[0].getName();
                    recipe.setRecipeImage(img_dir);
                }

                session.setAttribute("rcmList", rcmList);
                session.setAttribute("recipeList", null);
            }

            response.sendRedirect("pages/list_7days.jsp");
        }
    }
    
    public String getImageDir(String root, String recipeID) {
        //get directory contains image + get first image-name from folder
        String fname = recipeID;
        File folder = new File(root + fname);
        String img_dir = fname + "/" + folder.listFiles()[0].getName();
        return img_dir;
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
