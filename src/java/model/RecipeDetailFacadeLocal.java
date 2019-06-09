/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.HashMap;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Toan
 */
@Local
public interface RecipeDetailFacadeLocal {

    void create(RecipeDetail recipeDetail);

    void edit(RecipeDetail recipeDetail);

    void remove(RecipeDetail recipeDetail);

    RecipeDetail find(Object id);

    List<RecipeDetail> findAll();

    List<RecipeDetail> findRange(int[] range);

    int count();

    RecipeModel getIngredients(String recipeID);

    List<recipeCountModel> getTopRecipe();

    String getLikes();
    
}
