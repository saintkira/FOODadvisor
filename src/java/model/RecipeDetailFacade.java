/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.ArrayList;
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
public class RecipeDetailFacade extends AbstractFacade<RecipeDetail> implements RecipeDetailFacadeLocal {
    @PersistenceContext(unitName = "foodadvisorPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public RecipeDetailFacade() {
        super(RecipeDetail.class);
    }

    @Override
    public RecipeModel getIngredients(String recipeID) {
        Query q = em.createQuery("SELECT r FROM RecipeDetail r WHERE r.recipeDetailPK.recipeID = :recipeID");
        q.setParameter("recipeID", recipeID);
        List<RecipeDetail> list = q.getResultList();
        List<IngredientModel> result = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            result.add(new IngredientModel(list.get(i).getIngredientName(), i+1));
        }
        return new RecipeModel(recipeID, list.get(0).getRecipe().getRecipeName(), list.get(0).getRecipe().getPrice(), null, list.get(0).getRecipe().getType(), result);
    }
    
}
