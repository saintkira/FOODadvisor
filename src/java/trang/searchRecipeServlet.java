/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package trang;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.CollectionType;
import helper.ClientHelper;
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
public class searchRecipeServlet extends HttpServlet {
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
            //check login
            if (session.getAttribute("username") == null) {
                response.sendRedirect("pages/login.jsp");
                session.setAttribute("redirect", "/FOODadvisor/menu7daysServlet");
            } else {
                String username = (String) session.getAttribute("username");

                //get directory of recipes_document folder
                String root = request.getServletContext().getRealPath("//") + "\\recipes_document\\";

                //set menuList from db
                String preJson = ConnectionHelper.callQuerySP("Menu_GetByUser_SP", username);
                if (preJson != null) {
                    String json = changeJson(preJson);

                    ObjectMapper mapper = new ObjectMapper();

                    CollectionType javaType = mapper.getTypeFactory().constructCollectionType(List.class, Menu7Days.class);
                    List<Menu7Days> list = mapper.readValue(json, javaType);

                    for (Menu7Days menu7Days : list) {
                        menu7Days.setRecipeImage(getImageDir(root, menu7Days.getRecipeID()));
                    }

                    session.setAttribute("menuList", list);

                } else {
                    session.setAttribute("menuList", null);
                }

                //check recipeList in session
                if (session.getAttribute("recipe_cart_list") != null) { 
                    List<Recipe> recipeList = (List<Recipe>) session.getAttribute("recipe_cart_list");
                    for (Recipe recipe : recipeList) {
                        //get directory contains image
                        String fname = recipe.getRecipeID();
                        File folder = new File(root + fname);

                        String img_dir = fname + "/" + folder.listFiles()[0].getName();
                        recipe.setRecipeImage(img_dir);
                    }
                    
                    session.setAttribute("recipeList", recipeList); System.out.println(recipeList.size());
                    session.setAttribute("rcmList", null);
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
                
                //get searchList
                String searcher = request.getParameter("searcher"); System.out.println("Searcher: "+searcher);
                String[] s = searcher.split(":");System.out.println("split array: "+s.length);
                String key = s[0];
                String value = s[1];    System.out.println("split array: "+s.length + " - "+ key + " - " + value);
                String preJsonR = ConnectionHelper.callQuerySP("Menu_SearchRecipe_SP", key, value); System.out.println(preJsonR);
                if (preJsonR != null) {
                    

                    ObjectMapper mapper = new ObjectMapper();

                    CollectionType javaType = mapper.getTypeFactory().constructCollectionType(List.class, Recipe.class);
                    List<Recipe> list = mapper.readValue(preJsonR, javaType);

                    for (Recipe recipe : list) {
                        recipe.setRecipeImage(getImageDir(root, recipe.getRecipeID()));
                    }

                    session.setAttribute("sRecipeList", list);

                } else {
                    session.setAttribute("sRecipeList", null);
                }
                

                response.sendRedirect("pages/list_7days.jsp");
            }
            
        }
    }
    
    public String changeJson(String preJson) {
        String json = preJson.replace("\"md\":[{", "").replace("}]},", "},").replace("\"}]}]", "\"}]");
        return json;
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
