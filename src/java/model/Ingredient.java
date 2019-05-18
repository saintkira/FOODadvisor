/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Toan
 */
@Entity
@Table(name = "Ingredient", catalog = "FOODAdvisor", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ingredient.findAll", query = "SELECT i FROM Ingredient i"),
    @NamedQuery(name = "Ingredient.findByIngredientID", query = "SELECT i FROM Ingredient i WHERE i.ingredientID = :ingredientID"),
    @NamedQuery(name = "Ingredient.findByIngredientName", query = "SELECT i FROM Ingredient i WHERE i.ingredientName = :ingredientName")})
public class Ingredient implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 4)
    @Column(name = "IngredientID", nullable = false, length = 4)
    private String ingredientID;
    @Size(max = 30)
    @Column(name = "IngredientName", length = 30)
    private String ingredientName;

    public Ingredient() {
    }

    public Ingredient(String ingredientID) {
        this.ingredientID = ingredientID;
    }

    public String getIngredientID() {
        return ingredientID;
    }

    public void setIngredientID(String ingredientID) {
        this.ingredientID = ingredientID;
    }

    public String getIngredientName() {
        return ingredientName;
    }

    public void setIngredientName(String ingredientName) {
        this.ingredientName = ingredientName;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ingredientID != null ? ingredientID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ingredient)) {
            return false;
        }
        Ingredient other = (Ingredient) object;
        if ((this.ingredientID == null && other.ingredientID != null) || (this.ingredientID != null && !this.ingredientID.equals(other.ingredientID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Ingredient[ ingredientID=" + ingredientID + " ]";
    }
    
}
