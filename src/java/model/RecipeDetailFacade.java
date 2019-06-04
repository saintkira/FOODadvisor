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
    public List<IngredientModel> getIngredients(String recipeID) {
        Query q = em.createQuery("SELECT r FROM RecipeDetail r WHERE r.recipeDetailPK.recipeID = :recipeID");
        q.setParameter("recipeID", recipeID);
        return q.getResultList();
    }
    
}
