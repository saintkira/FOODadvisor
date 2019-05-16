/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import helper.ClientHelper;
import helper.ConnectionHelper;
import helper.JsonHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.json.Json;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Ingredient;

/**
 *
 * @author Jamin
 */
public class TestServlet extends HttpServlet {

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
//            out.println("Test list to json refresh: ");
//            List<Ingredient> list = new ArrayList<>();
//            list.add(new Ingredient("1", "qwert"));
//            list.add(new Ingredient("2", "oiuytr"));
//            list.add(new Ingredient("3", "kjhgfd"));
//            String json = JsonHelper.toJson(new Ingredient("10", "qwert"));
//            out.println("Test parse json: " + json);
//            out.println(ConnectionHelper.callSP("Ingredients_Insert_SP", json));
//            out.println("Test do Delete: "+ ClientHelper.doDelete("Ingredients_Delete_SP", "10"));
//            Ingredient in = ClientHelper.findByID("Ingredients_GetByID_SP", "2");
//            out.println("Test do Connect: " + in.getIngredientName());
//                String json = ConnectionHelper.callQuerySP("Ingredients_GetByID_SP", "2");
//                List<Ingredient> list = new ArrayList<>();
//                list = JsonHelper.json2List(json);
//                out.println(list):
            Ingredient ingd = new Ingredient("31", "kjhgfd");
            String json = JsonHelper.toJson(ingd);
            ConnectionHelper.callSP("Ingredients_Insert_SP", json);
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
