/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Toan
 */
@Stateless
public class RecipeFacade extends AbstractFacade<Recipe> implements RecipeFacadeLocal {
    @PersistenceContext(unitName = "foodadvisorPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public RecipeFacade() {
        super(Recipe.class);
    }
    @Override
    public String getAllrecipestoJSON() {
        Query q = em.createNativeQuery("SELECT RecipeID,RecipeName,Price,Type FROM Recipe"+
                " FOR JSON AUTO,Root('data')");
        List<String> results = q.getResultList();
        String json="";
        for (String s:results) {
            json=json+s;
        }
        return json;
    }
    
    @Override
    public int deleteRecipe(String recipeID) {
        Query q = em.createQuery("DELETE FROM Account a WHERE a.username = :username");
        q.setParameter("username", recipeID);
        return q.executeUpdate();
    }

    @Override
    public boolean likeRecipe(String recipeID, String username) {
        Query q = em.createNativeQuery("SELECT * FROM Favorite WHERE Username='"+username+"' AND RecipeID='"+recipeID+"'");
        if (q.getResultList().isEmpty()) {
            em.createNativeQuery("INSERT INTO Favorite(Username,RecipeID) VALUES('"+username+"','"+recipeID+"')").executeUpdate();
            return true;
        }else{
            return false;
        }
        
    }

    @Override
    public boolean unlikeRecipe(String recipeID, String username) {
        Query q = em.createNativeQuery("SELECT * FROM Favorite WHERE Username='" + username + "' AND RecipeID='" + recipeID + "'");
        if (q.getResultList().isEmpty()==false) {
            em.createNativeQuery("DELETE FROM Favorite WHERE Username='" + username + "' AND RecipeID='" + recipeID + "'").executeUpdate();
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean checklikeStatus(String recipeID, String username) {
        Query q = em.createNativeQuery("SELECT * FROM Favorite WHERE Username='" + username + "' AND RecipeID='" + recipeID + "'");
        if (q.getResultList().isEmpty()) {
            return false;
        }else{
            return true;
        }
    }
    
    
}
