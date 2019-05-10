/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package toan;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Toan
 */
@WebServlet(name = "LoadIngredServlet", urlPatterns = {"/LoadIngredServlet"})
public class LoadIngredServlet extends HttpServlet {
    private static Integer counter = 1;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String resp = "<div class=\"row\" style=\"padding-bottom: 30px\">\n" +
"                            <div class=\"col-md-4 col-sm-6\">\n" +
"                                <div class=\"single-food\">\n" +
"                                    <div class=\"food-img\">\n" +
"                                        <img src=\"../bower_components/css_js_toan/images/food1.jpg\" class=\"img-fluid\" alt=\"\">\n" +
"                                    </div>\n" +
"                                    <div class=\"food-content\">\n" +
"                                        <div class=\"d-flex justify-content-between\">\n" +
"                                            <h5>Mexican Eggrolls</h5>\n" +
"                                            <span class=\"style-change\">$14.50</span>\n" +
"                                        </div>\n" +
"                                        <p class=\"pt-3\">Face together given moveth divided form Of Seasons that fruitful.</p>\n" +
"                                    </div>\n" +
"                                </div>\n" +
"                            </div>\n" +
"                            <div class=\"col-md-4 col-sm-6\">\n" +
"                                <div class=\"single-food mt-5 mt-sm-0\">\n" +
"                                    <div class=\"food-img\">\n" +
"                                        <img src=\"../bower_components/css_js_toan/images/food2.jpg\" class=\"img-fluid\" alt=\"\">\n" +
"                                    </div>\n" +
"                                    <div class=\"food-content\">\n" +
"                                        <div class=\"d-flex justify-content-between\">\n" +
"                                            <h5>chicken burger</h5>\n" +
"                                            <span class=\"style-change\">$9.50</span>\n" +
"                                        </div>\n" +
"                                        <p class=\"pt-3\">Face together given moveth divided form Of Seasons that fruitful.</p>\n" +
"                                    </div>\n" +
"                                </div>\n" +
"                            </div>\n" +
"                            <div class=\"col-md-4 col-sm-6\">\n" +
"                                <div class=\"single-food mt-5 mt-md-0\">\n" +
"                                    <div class=\"food-img\">\n" +
"                                        <img src=\"../bower_components/css_js_toan/images/food3.jpg\" class=\"img-fluid\" alt=\"\">\n" +
"                                    </div>\n" +
"                                    <div class=\"food-content\">\n" +
"                                        <div class=\"d-flex justify-content-between\">\n" +
"                                            <h5>topu lasange</h5>\n" +
"                                            <span class=\"style-change\">$12.50</span>\n" +
"                                        </div>\n" +
"                                        <p class=\"pt-3\">Face together given moveth divided form Of Seasons that fruitful.</p>\n" +
"                                    </div>\n" +
"                                </div>\n" +
"                            </div>\n" +
"                        </div>";
            out.write(resp);
        } finally {
            out.close();
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
