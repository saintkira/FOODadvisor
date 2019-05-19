/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jamin
 */
@Entity
@Table(name = "Ingredient", catalog = "FOODadvisor", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ingredient.findAll", query = "SELECT i FROM Ingredient i"),
    @NamedQuery(name = "Ingredient.findByIngredientID", query = "SELECT i FROM Ingredient i WHERE i.ingredientID = :ingredientID"),
    @NamedQuery(name = "Ingredient.findByIngredientName", query = "SELECT i FROM Ingredient i WHERE i.ingredientName = :ingredientName"),
    @NamedQuery(name = "Ingredient.findByCalo", query = "SELECT i FROM Ingredient i WHERE i.calo = :calo"),
    @NamedQuery(name = "Ingredient.findByUnit", query = "SELECT i FROM Ingredient i WHERE i.unit = :unit"),
    @NamedQuery(name = "Ingredient.findByType", query = "SELECT i FROM Ingredient i WHERE i.type = :type")})
public class Ingredient implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @JsonProperty("IngredientID")
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 4)
    @Column(name = "IngredientID", nullable = false, length = 4)
    private String ingredientID;
    
    @JsonProperty("IngredientName")
    @Size(max = 30)
    @Column(name = "IngredientName", length = 30)
    private String ingredientName;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "IngredientImage", length = 2147483647)
    private String ingredientImage;    
    
    @JsonProperty("Calo")
    @Column(name = "Calo")
    private Integer calo;    
    
    @JsonProperty("Unit")
    @Size(max = 10)
    @Column(name = "Unit", length = 10)
    private String unit;
    
    @JsonProperty("Type")
    @Size(max = 20)
    @Column(name = "Type", length = 20)
    private String type;
    
    @JsonProperty("Description")
    @Lob
    @Size(max = 2147483647)
    @Column(name = "Description", length = 2147483647)
    private String description;
    
    @JsonIgnore
    @JoinTable(name = "RecipeDetail", joinColumns = {
        @JoinColumn(name = "IngredientID", referencedColumnName = "IngredientID", nullable = false)}, inverseJoinColumns = {
        @JoinColumn(name = "RecipeID", referencedColumnName = "RecipeID", nullable = false)})
    @ManyToMany    
    private Collection<Recipe> recipeCollection;

    public Ingredient() {
    }

    public Ingredient(String ingredientID, String ingredientName, String ingredientImage, Integer calo, String unit, String type) {
        this.ingredientID = ingredientID;
        this.ingredientName = ingredientName;
        this.ingredientImage = ingredientImage;
        this.calo = calo;
        this.unit = unit;
        this.type = type;
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

    public String getIngredientImage() {
        return ingredientImage;
    }

    public void setIngredientImage(String ingredientImage) {
        this.ingredientImage = ingredientImage;
    }

    public Integer getCalo() {
        return calo;
    }

    public void setCalo(Integer calo) {
        this.calo = calo;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @XmlTransient
    public Collection<Recipe> getRecipeCollection() {
        return recipeCollection;
    }

    public void setRecipeCollection(Collection<Recipe> recipeCollection) {
        this.recipeCollection = recipeCollection;
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
