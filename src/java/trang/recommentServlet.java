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
import java.text.DecimalFormat;
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

/**
 *
 * @author trangnmt
 */
public class recommentServlet extends HttpServlet {

    @EJB
    private AccountFacadeLocal accountFacade;

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

            HttpSession session = request.getSession();
            String root = request.getServletContext().getRealPath("//") + "\\recipes_document\\";

            //get user'g info
            String username = "ductoan"; //(String) session.getAttribute("username");
            Account user = accountFacade.find(username);

            /* calculate BMI */
            String sBMI = (String) session.getAttribute("BMI"); 
            double BMI = Double.parseDouble(sBMI);

            /* recomment by BMI */
            String json = null;
            String goal = null;
            String desc = null;

            if (BMI < 18.5) {    /* BMI < 18.5 ----> cân nặng thấp gầy */

                goal = Goal.WEIGHTGAIN;
                desc = "You're in the underweight range.";
            } else if (BMI >= 18.5 && BMI < 23) {    /* BMI >= 18.5 && BMI < 23 ----> cân nặng bình thường*/

                goal = Goal.HEALTHY;
                System.out.println("test recomment - goal" + goal);
                desc = "You're in the healthy weight range";
            } else if (BMI >= 23 && BMI < 25) {  /* BMI >= 23 && BMI < 25 ----> thừa cân*/

                goal = Goal.WEIGHTLOSS;
                desc = "You're in the overweight range";
            } else {   /* BMI >= 25 ----> béo phì */

                goal = Goal.SUPERLOSS;
                desc = "You're in the obese range ";
            }

            json = ConnectionHelper.callQuerySP("Recipe_RecommentByBMI_SP", goal);
            System.out.println("test recomment - " + goal + ": " + json);

            /* parse json to List + set into sesion = 'recommentList' */
            if (json != null) {
                ObjectMapper mapper = new ObjectMapper();
                CollectionType javaType = mapper.getTypeFactory().constructCollectionType(List.class, Recipe.class);

                List<Recipe> list = mapper.readValue(json, javaType);
                System.out.println(list.size());
                for (Recipe recipe : list) {
                    recipe.setRecipeImage(getImageDir(root, recipe.getRecipeID()));
                }
                session.setAttribute("sRecipeList", list);
            } else {
                session.setAttribute("sRecipeList", null);
            }
            
            session.setAttribute("goal", goal);
            /* redirect to list_7days.jsp */
            response.sendRedirect("pages/recommentList.jsp");
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
