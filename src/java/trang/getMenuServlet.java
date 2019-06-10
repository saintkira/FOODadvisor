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
import static java.lang.Math.pow;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.AccountFacadeLocal;
import model.Goal;
import model.Menu7Days;
import model.Recipe;
import model.RecipeFacadeLocal;

/**
 *
 * @author trangnmt
 */
public class getMenuServlet extends HttpServlet {
    @EJB
    private AccountFacadeLocal accountFacade;

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
//            if (session.getAttribute("username") == null) {
//                response.sendRedirect("pages/login.jsp");
//                session.setAttribute("redirect", "/FOODadvisor/menu7daysServlet");
//            } else {
                String username = "manhtrang";//String username = (String) session.getAttribute("username");

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

                    session.setAttribute("recipeList", recipeList);                    
                } else {                   
                    session.setAttribute("recipeList", null);
                }

                //get user'g info
                Account user = accountFacade.find(username);

                /* calculate BMI */
                double BMI;
                float weight = user.getWeight();
                float height = (float) user.getHeight() / 100;

                BMI = (weight / pow(height, 2)); System.out.println(weight + " - " + height + " - "+BMI);

                /* recomment by BMI */
                String json = null;
                String goal = null;
                String desc = null;

                if (BMI < 18.5) {    /* BMI < 18.5 ----> cân nặng thấp gầy */

                    goal = Goal.WEIGHTGAIN;
                    desc = "You're in the underweight range.";
                } else if (BMI >= 18.5 && BMI < 23) {    /* BMI >= 18.5 && BMI < 23 ----> cân nặng bình thường*/

                    goal = Goal.HEALTHY;
                    desc = "You're in the healthy weight range";
                } else if (BMI >= 23 && BMI < 25) {  /* BMI >= 23 && BMI < 25 ----> thừa cân*/

                    goal = Goal.WEIGHTLOSS;
                    desc = "You're in the overweight range";
                } else {   /* BMI >= 25 ----> béo phì */

                    goal = Goal.SUPERLOSS;
                    desc = "You're in the obese range ";
                }

                json = ConnectionHelper.callQuerySP("Recipe_RecommentByBMI_SP", goal);

                /* parse json to List + set into sesion = 'recommentList' */
                if (json != null) {
                    ObjectMapper mapper = new ObjectMapper();
                    CollectionType javaType = mapper.getTypeFactory().constructCollectionType(List.class, Recipe.class);

                    List<Recipe> list = mapper.readValue(json, javaType);
                    session.setAttribute("recommentList", list);
                } else {
                    session.setAttribute("recommentList", null);
                }

                session.setAttribute("BMI", String.format("%.2f", BMI));
                session.setAttribute("BMI_desc", desc);

                response.sendRedirect("pages/list_7days.jsp");
//            }
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
