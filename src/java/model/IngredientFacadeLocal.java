/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Toan
 */
@Local
public interface IngredientFacadeLocal {

    void create(Ingredient ingredient);

    void edit(Ingredient ingredient);

    void remove(Ingredient ingredient);

    Ingredient find(Object id);

    List<Ingredient> findAll();

    List<Ingredient> findRange(int[] range);

    int count();
    
}
