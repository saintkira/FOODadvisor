package toan;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Recipe;
import model.RecipeFacadeLocal;

public class getIDinsertRecipeServlet extends HttpServlet {
    @EJB
    private RecipeFacadeLocal recipeFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        session.removeAttribute("NewID");
        session.setAttribute("NewID", getNewRecipeID());
        response.sendRedirect("pages/admin/insert_recipe.jsp"); 
    }
    public String getNewRecipeID(){
        List<Recipe> recipes = recipeFacade.findAll();
        int temp;
        String result="";
        temp=Integer.parseInt(recipes.get(0).getRecipeID().replace("R",""));
        for (int i = 0; i < recipes.size(); i++) {
            if (temp==Integer.parseInt(recipes.get(i).getRecipeID().replace("R",""))) {
                temp++;
                continue;
            }else{
                break;
            }
        }
        if (String.valueOf(temp).length()==1) {
            result="R00"+String.valueOf(temp);
        }else if(String.valueOf(temp).length()==2){
            result="R0"+String.valueOf(temp);
        }else{
            result="R"+String.valueOf(temp);
        }
        
        return result;
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
