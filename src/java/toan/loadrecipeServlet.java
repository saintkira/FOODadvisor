

package toan;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RecipeFacadeLocal;
import model.Recipe;


public class loadrecipeServlet extends HttpServlet {
    @EJB
    private RecipeFacadeLocal recipeFacade;
    List<Recipe> recipes;
    
    public String add_content(String resp, Recipe recipe){
        String ID = recipe.getRecipeID();
        String description = recipe.getDescription();
        if (description.length()>70) {
            description = description.substring(0, 60)+"...";
        }
        resp=resp.replace("$background-image", "..//recipes_document//"+ID+"//"+ID+"-1.jpg")
                .replace("$ID", ID)
                .replace("$recipename", recipe.getRecipeName()).replace("$price", recipe.getPrice())
                .replace("$description", description);
        return resp;
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (request.getParameter("status").equals("scroll")==false) {
            recipes = recipeFacade.findAll();
            String resp1 = "<div class=\"row\" style=\"padding-bottom: 30px\">\n"
                    + "                            <div class=\"col-md-4 col-sm-6\">\n"
                    + "                                <div class=\"single-food\" id=\"$ID\">\n"
                    + "                                    <div class=\"container1\" style=\"position: relative;\">\n"
                    + "                                        <div class=\"food-img\">\n"
                    + "                                            <img src=\"$background-image\" style=\"width:100%;height:300px\" class=\"img-fluid\" alt=\"Image Not Available\">     \n"
                    + "                                        </div>\n"
                    + "                                        <i style=\"position:absolute;top:2%;left:85%;\" class=\"fa fa-heart circle-icon\" onclick=\"loveFunction(this,'$ID')\"></i>\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"food-content\" style=\"height:190px\">\n"
                    + "                                        <div class=\"d-flex justify-content-between\">\n"
                    + "                                            <div class=\"container2\" style=\"position: relative;\">\n"
                    + "                                            <h5 style=\"padding-right: 20px;color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700\">$recipename</h5>\n"
                    + "                                            <i style=\"position:absolute;top:0%;left:95%;\" class=\"fa fa-calendar-plus-o\" onclick=\"menuFunction(this,'$ID')\"></i>\n"
                    + "                                            </div>\n"
                    + "                                            <span class=\"style-change\">$price per Serving</span>\n"
                    + "                                        </div>\n"
                    + "                                        <p class=\"pt-3\">$description</p>\n"
                    + "                                        <div class=\"button_cont\" align=\"center\" style=\"position:absolute;bottom:1%;\">\n"
                    + "                                            <button class=\"viewdetailbtn\" onclick=\"loadmodalFunction('$ID')\" data-toggle=\"modal\" data-target=\"#fsModal\">More Details</button>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>";
            String resp2 = " <div class=\"col-md-4 col-sm-6\">\n"
                    + "                                <div class=\"single-food\" id=\"$ID\">\n"
                    + "                                    <div class=\"container1\" style=\"position: relative;\">\n"
                    + "                                        <div class=\"food-img\">\n"
                    + "                                            <img src=\"$background-image\" style=\"width:100%;height:300px\" class=\"img-fluid\" alt=\"Image Not Available\">     \n"
                    + "                                        </div>\n"
                    + "                                        <i style=\"position:absolute;top:2%;left:85%;\" class=\"fa fa-heart circle-icon\" onclick=\"loveFunction(this,'$ID')\"></i>\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"food-content\" style=\"height:190px\">\n"
                    + "                                        <div class=\"d-flex justify-content-between\">\n"
                    + "                                            <div class=\"container2\" style=\"position: relative;\">\n"
                    + "                                            <h5 style=\"padding-right: 20px;color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700\">$recipename</h5>\n"
                    + "                                            <i style=\"position:absolute;top:0%;left:95%;\" class=\"fa fa-calendar-plus-o\" onclick=\"menuFunction(this,'$ID')\"></i>\n"
                    + "                                            </div>\n"
                    + "                                            <span class=\"style-change\">$price per Serving</span>\n"
                    + "                                        </div>\n"
                    + "                                        <p class=\"pt-3\">$description</p>\n"
                    + "                                        <div class=\"button_cont\" align=\"center\" style=\"position:absolute;bottom:1%;\">\n"
                    + "                                            <button class=\"viewdetailbtn\" onclick=\"loadmodalFunction('$ID')\" data-toggle=\"modal\" data-target=\"#fsModal\">More Details</button>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>";
            String resp3 = "                       <div class=\"col-md-4 col-sm-6\">\n"
                    + "                                <div class=\"single-food\" id=\"$ID\">\n"
                    + "                                    <div class=\"container1\" style=\"position: relative;\">\n"
                    + "                                        <div class=\"food-img\">\n"
                    + "                                            <img src=\"$background-image\" style=\"width:100%;height:300px\" class=\"img-fluid\" alt=\"Image Not Available\">     \n"
                    + "                                        </div>\n"
                    + "                                        <i style=\"position:absolute;top:2%;left:85%;\" class=\"fa fa-heart circle-icon\" onclick=\"loveFunction(this,'$ID')\"></i>\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"food-content\" style=\"height:190px\">\n"
                    + "                                        <div class=\"d-flex justify-content-between\">\n"
                    + "                                            <div class=\"container2\" style=\"position: relative;\">\n"
                    + "                                            <h5 style=\"padding-right: 20px;color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700\">$recipename</h5>\n"
                    + "                                            <i style=\"position:absolute;top:0%;left:95%;\" class=\"fa fa-calendar-plus-o\" onclick=\"menuFunction(this,'$ID')\"></i>\n"
                    + "                                            </div>\n"
                    + "                                            <span class=\"style-change\">$price per Serving</span>\n"
                    + "                                        </div>\n"
                    + "                                        <p class=\"pt-3\">$description</p>\n"
                    + "                                        <div class=\"button_cont\" align=\"center\" style=\"position:absolute;bottom:1%;\">\n"
                    + "                                            <button class=\"viewdetailbtn\" onclick=\"loadmodalFunction('$ID')\" data-toggle=\"modal\" data-target=\"#fsModal\">More Details</button>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>"
                    +"                             </div>";
            
            
            String resp="";
            if(recipes.size()>=3){
                Collections.shuffle(recipes);
                resp = add_content(resp1, recipes.get(0)) + add_content(resp2, recipes.get(1)) + add_content(resp3, recipes.get(2));
                recipes.remove(0);
                recipes.remove(0);
                recipes.remove(0);
            }else if(recipes.size()==2){
                Collections.shuffle(recipes);
                resp = add_content(resp1, recipes.get(0)) + add_content(resp3, recipes.get(1));
                recipes.remove(0);
                recipes.remove(0);
            }else if(recipes.size()==1){
                resp = add_content(resp1, recipes.get(0))+"</div>";
                recipes.remove(0);
            }else{
                resp = "<div class=\"row\">\n"
                        + "                        <div class=\"col-md-12 col-sm-12\">\n"
                        + "                            <center>\n"
                        + "                                <image src=\"../bower_components/css_js_toan/images/loading2.gif\"/>\n"
                        + "                            </center>\n"
                        + "                        </div>\n"
                        + "                    </div>";
            }
             
            try{
                out.write(resp);
            }
            finally{out.close();}
        }
        
        else{
            String resp1 = "<div class=\"row\" style=\"padding-bottom: 30px\">\n"
                    + "                            <div class=\"col-md-4 col-sm-6\">\n"
                    + "                                <div class=\"single-food\" id=\"$ID\">\n"
                    + "                                    <div class=\"container1\" style=\"position: relative;\">\n"
                    + "                                        <div class=\"food-img\">\n"
                    + "                                            <img src=\"$background-image\" style=\"width:100%;height:300px\" class=\"img-fluid\" alt=\"Image Not Available\">     \n"
                    + "                                        </div>\n"
                    + "                                        <i style=\"position:absolute;top:2%;left:85%;\" class=\"fa fa-heart circle-icon\" onclick=\"loveFunction(this,'$ID')\"></i>\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"food-content\" style=\"height:190px\">\n"
                    + "                                        <div class=\"d-flex justify-content-between\">\n"
                    + "                                            <div class=\"container2\" style=\"position: relative;\">\n"
                    + "                                            <h5 style=\"padding-right: 20px;color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700\">$recipename</h5>\n"
                    + "                                            <i style=\"position:absolute;top:0%;left:95%;\" class=\"fa fa-calendar-plus-o\" onclick=\"menuFunction(this,'$ID')\"></i>\n"
                    + "                                            </div>\n"
                    + "                                            <span class=\"style-change\">$price per Serving</span>\n"
                    + "                                        </div>\n"
                    + "                                        <p class=\"pt-3\">$description</p>\n"
                    + "                                        <div class=\"button_cont\" align=\"center\" style=\"position:absolute;bottom:1%;\">\n"
                    + "                                            <button class=\"viewdetailbtn\" onclick=\"loadmodalFunction('$ID')\" data-toggle=\"modal\" data-target=\"#fsModal\">More Details</button>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>";
            String resp2 = " <div class=\"col-md-4 col-sm-6\">\n"
                    + "                                <div class=\"single-food\" id=\"$ID\">\n"
                    + "                                    <div class=\"container1\" style=\"position: relative;\">\n"
                    + "                                        <div class=\"food-img\">\n"
                    + "                                            <img src=\"$background-image\" style=\"width:100%;height:300px\" class=\"img-fluid\" alt=\"Image Not Available\">     \n"
                    + "                                        </div>\n"
                    + "                                        <i style=\"position:absolute;top:2%;left:85%;\" class=\"fa fa-heart circle-icon\" onclick=\"loveFunction(this,'$ID')\"></i>\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"food-content\" style=\"height:190px\">\n"
                    + "                                        <div class=\"d-flex justify-content-between\">\n"
                    + "                                            <div class=\"container2\" style=\"position: relative;\">\n"
                    + "                                            <h5 style=\"padding-right: 20px;color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700\">$recipename</h5>\n"
                    + "                                            <i style=\"position:absolute;top:0%;left:95%;\" class=\"fa fa-calendar-plus-o\" onclick=\"menuFunction(this,'$ID')\"></i>\n"
                    + "                                            </div>\n"
                    + "                                            <span class=\"style-change\">$price per Serving</span>\n"
                    + "                                        </div>\n"
                    + "                                        <p class=\"pt-3\">$description</p>\n"
                    + "                                        <div class=\"button_cont\" align=\"center\" style=\"position:absolute;bottom:1%;\">\n"
                    + "                                            <button class=\"viewdetailbtn\" onclick=\"loadmodalFunction('$ID')\" data-toggle=\"modal\" data-target=\"#fsModal\">More Details</button>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>";
            String resp3 ="                        <div class=\"col-md-4 col-sm-6\">\n"
                    + "                                <div class=\"single-food\" id=\"$ID\">\n"
                    + "                                    <div class=\"container1\" style=\"position: relative;\">\n"
                    + "                                        <div class=\"food-img\">\n"
                    + "                                            <img src=\"$background-image\" style=\"width:100%;height:300px\" class=\"img-fluid\" alt=\"Image Not Available\">     \n"
                    + "                                        </div>\n"
                    + "                                        <i style=\"position:absolute;top:2%;left:85%;\" class=\"fa fa-heart circle-icon\" onclick=\"loveFunction(this,'$ID')\"></i>\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"food-content\" style=\"height:190px\">\n"
                    + "                                        <div class=\"d-flex justify-content-between\">\n"
                    + "                                            <div class=\"container2\" style=\"position: relative;\">\n"
                    + "                                            <h5 style=\"padding-right: 20px;color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700\">$recipename</h5>\n"
                    + "                                            <i style=\"position:absolute;top:0%;left:95%;\" class=\"fa fa-calendar-plus-o\" onclick=\"menuFunction(this,'$ID')\"></i>\n"
                    + "                                            </div>\n"
                    + "                                            <span class=\"style-change\">$price per Serving</span>\n"
                    + "                                        </div>\n"
                    + "                                        <p class=\"pt-3\">$description</p>\n"
                    + "                                        <div class=\"button_cont\" align=\"center\" style=\"position:absolute;bottom:1%;\">\n"
                    + "                                            <button class=\"viewdetailbtn\" onclick=\"loadmodalFunction('$ID')\" data-toggle=\"modal\" data-target=\"#fsModal\">More Details</button>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>"
                    + "                             </div>";
            String resp = "";
            if (recipes.size() >= 3) {
                Collections.shuffle(recipes);
                resp = add_content(resp1, recipes.get(0)) + add_content(resp2, recipes.get(1)) + add_content(resp3, recipes.get(2));
                recipes.remove(0);
                recipes.remove(0);
                recipes.remove(0);
            } else if (recipes.size() == 2) {
                Collections.shuffle(recipes);
                resp = add_content(resp1, recipes.get(0)) + add_content(resp3, recipes.get(1));
                recipes.remove(0);
                recipes.remove(0);
            } else if (recipes.size() == 1) {
                resp = add_content(resp1, recipes.get(0)) + "</div>";
                recipes.remove(0);
            } else {
                resp = "<div class=\"row\">\n"
                        + "                        <div class=\"col-md-12 col-sm-12\">\n"
                        + "                            <center>\n"
                        + "                                <image src=\"../bower_components/css_js_toan/images/loading2.gif\"/>\n"
                        + "                            </center>\n"
                        + "                        </div>\n"
                        + "                    </div>";
            }

            try {
                out.write(resp);
            } finally {
                out.close();
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
