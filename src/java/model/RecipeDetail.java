/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Toan
 */
@Entity
@Table(name = "RecipeDetail", catalog = "FOODAdvisor", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RecipeDetail.findAll", query = "SELECT r FROM RecipeDetail r"),
    @NamedQuery(name = "RecipeDetail.findByRecipeID", query = "SELECT r FROM RecipeDetail r WHERE r.recipeDetailPK.recipeID = :recipeID"),
    @NamedQuery(name = "RecipeDetail.findByIngredientID", query = "SELECT r FROM RecipeDetail r WHERE r.recipeDetailPK.ingredientID = :ingredientID")})
public class RecipeDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected RecipeDetailPK recipeDetailPK;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "IngredientName", length = 2147483647)
    private String ingredientName;
    @JoinColumn(name = "RecipeID", referencedColumnName = "RecipeID", nullable = false, insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Recipe recipe;

    public RecipeDetail() {
    }

    public RecipeDetail(RecipeDetailPK recipeDetailPK) {
        this.recipeDetailPK = recipeDetailPK;
    }

    public RecipeDetail(String recipeID, String ingredientID) {
        this.recipeDetailPK = new RecipeDetailPK(recipeID, ingredientID);
    }

    public RecipeDetailPK getRecipeDetailPK() {
        return recipeDetailPK;
    }

    public void setRecipeDetailPK(RecipeDetailPK recipeDetailPK) {
        this.recipeDetailPK = recipeDetailPK;
    }

    public String getIngredientName() {
        return ingredientName;
    }

    public void setIngredientName(String ingredientName) {
        this.ingredientName = ingredientName;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (recipeDetailPK != null ? recipeDetailPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RecipeDetail)) {
            return false;
        }
        RecipeDetail other = (RecipeDetail) object;
        if ((this.recipeDetailPK == null && other.recipeDetailPK != null) || (this.recipeDetailPK != null && !this.recipeDetailPK.equals(other.recipeDetailPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.RecipeDetail[ recipeDetailPK=" + recipeDetailPK + " ]";
    }
    
}
