/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Toan
 */
@Embeddable
public class RecipeDetailPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 4)
    @Column(name = "RecipeID", nullable = false, length = 4)
    private String recipeID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 4)
    @Column(name = "IngredientID", nullable = false, length = 4)
    private String ingredientID;

    public RecipeDetailPK() {
    }

    public RecipeDetailPK(String recipeID, String ingredientID) {
        this.recipeID = recipeID;
        this.ingredientID = ingredientID;
    }

    public String getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(String recipeID) {
        this.recipeID = recipeID;
    }

    public String getIngredientID() {
        return ingredientID;
    }

    public void setIngredientID(String ingredientID) {
        this.ingredientID = ingredientID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (recipeID != null ? recipeID.hashCode() : 0);
        hash += (ingredientID != null ? ingredientID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RecipeDetailPK)) {
            return false;
        }
        RecipeDetailPK other = (RecipeDetailPK) object;
        if ((this.recipeID == null && other.recipeID != null) || (this.recipeID != null && !this.recipeID.equals(other.recipeID))) {
            return false;
        }
        if ((this.ingredientID == null && other.ingredientID != null) || (this.ingredientID != null && !this.ingredientID.equals(other.ingredientID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.RecipeDetailPK[ recipeID=" + recipeID + ", ingredientID=" + ingredientID + " ]";
    }
    
}
