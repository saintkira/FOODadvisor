package trang;

import helper.ClientHelper;
import helper.JsonHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Menu7Days;
import model.MenuFacadeLocal;

/**
 *
 * @author trangnmt
 */
public class setMenuServlet extends HttpServlet {

    @EJB
    private MenuFacadeLocal menuFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //Get username from session
            HttpSession session = request.getSession();
            String username = "manhtrang";//(String) session.getAttribute("username");

            String[] sArr = {"B", "L", "D"};
            Menu7Days model = null;
            List<Menu7Days> menu = new ArrayList<>();
            for (int i = 1; i <= 7; i++) {
                for (int j = 0; j < sArr.length; j++) {
                    
                    String key = sArr[j] + i;                  
                    if(request.getParameterValues(key) == null){
                        continue;
                    }
                    
                    String[] values = request.getParameterValues(key);
                    
                    for (int k = 0; k < values.length; k++) {
                        out.println(key + " - " + values[k]+"<br/>");
                        //random MenuID
                        String menuID = randomID();
                        //set model
                        
                        model = new Menu7Days();
                        model.setMenuID(menuID);
                        model.setUsername(username);
                        model.setTime(sArr[j]);
                        model.setWeekdays(Integer.toString(i));
                        model.setRecipeID(values[k]);
                        menu.add(model);
                        out.println(menu.size()+"<br/>");
                    } 
                }                               
            }
            ClientHelper.doCreate("Menu_Insert_SP", menu);
            response.sendRedirect("pages/list_7days.jsp");
        }
    }

    public String randomID() {
        String id = null;
        while (true) {
            id = ClientHelper.randomID();
            if (menuFacade.find(id) == null) {
                break;
            }
        }

        return id;
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
