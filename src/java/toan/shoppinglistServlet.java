package toan;


import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
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
import model.RecipeDetailFacadeLocal;
import model.RecipeFacadeLocal;
import model.RecipeModel;

public class shoppinglistServlet extends HttpServlet {
    @EJB
    private RecipeDetailFacadeLocal recipeDetailFacade;
    @EJB
    private RecipeFacadeLocal recipeFacade;
    List<Recipe> recipe_cart_list = new ArrayList<>();
    List<RecipeModel> real_cart = new ArrayList<>();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String ID = request.getParameter("ID");
        String status = request.getParameter("status");
        
        if (status.equals("add")) {
            if (recipe_cart_list.add(recipeFacade.find(ID))) {
                
                session.removeAttribute("recipe_list_count");
                session.setAttribute("recipe_list_count", String.valueOf(recipe_cart_list.size()));
                session.removeAttribute("recipe_cart_list");
                session.setAttribute("recipe_cart_list", recipe_cart_list);
                
                //FOR AJAX ONLY
                real_cart.clear();
                for(Recipe recipe:recipe_cart_list){
                    real_cart.add(new RecipeModel(recipe.getRecipeID(), shorten(recipe.getRecipeName()), recipe.getPrice(), recipe.getDescription(), recipe.getType()));
                }
                
                Gson gson = new Gson();
                JsonElement je = gson.toJsonTree(real_cart);
                JsonObject jo = new JsonObject();
                jo.add("recipe", je);
                jo.addProperty("count", String.valueOf(recipe_cart_list.size()));
                System.out.println(jo.toString());
                response.setContentType("text/plain");
                response.getWriter().write(jo.toString());
                //FOR AJAX ONLY
            } else {
                response.setContentType("text/plain");
                response.getWriter().write("false");
            }
        }else{
            if (recipe_cart_list.remove(recipeFacade.find(ID))) {
                session.removeAttribute("recipe_list_count");
                session.setAttribute("recipe_list_count", String.valueOf(recipe_cart_list.size()));
                session.removeAttribute("recipe_cart_list");
                session.setAttribute("recipe_cart_list", recipe_cart_list);

                //FOR AJAX ONLY
                real_cart.clear();
                for (Recipe recipe : recipe_cart_list) {
                    real_cart.add(new RecipeModel(recipe.getRecipeID(), shorten(recipe.getRecipeName()), recipe.getPrice(), recipe.getDescription(), recipe.getType()));
                }

                Gson gson = new Gson();
                JsonElement je = gson.toJsonTree(real_cart);
                JsonObject jo = new JsonObject();
                jo.add("recipe", je);
                jo.addProperty("count", String.valueOf(recipe_cart_list.size()));
                System.out.println(jo.toString());
                response.setContentType("text/plain");
                response.getWriter().write(jo.toString());
                //FOR AJAX ONLY
            } else {
                response.setContentType("text/plain");
                response.getWriter().write("false");
            }
        }
          
    }
    public String shorten(String RecipeName){
        String[] words = RecipeName.split("\\s");
        int count=0;
        String result="";
        for (int i = 0; i < words.length; i++) {
            count = result.length();
            if (count<=20) {
                result=result+words[i]+" ";
                if (result.length()>=25) {
                    result=result.replace(words[i]+" ", "...");
                    break;
                }
            }else{
                result=result+"...";
                break;
            }
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
