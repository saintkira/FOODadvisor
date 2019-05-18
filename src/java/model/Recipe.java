/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Toan
 */
@Entity
@Table(name = "Recipe", catalog = "FOODAdvisor", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Recipe.findAll", query = "SELECT r FROM Recipe r"),
    @NamedQuery(name = "Recipe.findByRecipeID", query = "SELECT r FROM Recipe r WHERE r.recipeID = :recipeID"),
    @NamedQuery(name = "Recipe.findByRecipeName", query = "SELECT r FROM Recipe r WHERE r.recipeName = :recipeName"),
    @NamedQuery(name = "Recipe.findByType", query = "SELECT r FROM Recipe r WHERE r.type = :type")})
public class Recipe implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 4)
    @Column(name = "RecipeID", nullable = false, length = 4)
    private String recipeID;
    @Size(max = 99)
    @Column(name = "RecipeName", length = 99)
    private String recipeName;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "RecipeImage", length = 2147483647)
    private String recipeImage;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "Description", length = 2147483647)
    private String description;
    @Size(max = 50)
    @Column(name = "Type", length = 50)
    private String type;
    @ManyToMany(mappedBy = "recipeCollection")
    private Collection<Account> accountCollection;
    @ManyToMany(mappedBy = "recipeCollection")
    private Collection<Menu> menuCollection;
    @JoinTable(name = "RecipeTag", joinColumns = {
        @JoinColumn(name = "RecipeID", referencedColumnName = "RecipeID", nullable = false)}, inverseJoinColumns = {
        @JoinColumn(name = "TagID", referencedColumnName = "TagID", nullable = false)})
    @ManyToMany
    private Collection<Tag> tagCollection;
    @OneToMany(mappedBy = "recipeID")
    private Collection<History> historyCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recipe")
    private Collection<RecipeDetail> recipeDetailCollection;

    public Recipe() {
    }

    public Recipe(String recipeID) {
        this.recipeID = recipeID;
    }

    public String getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(String recipeID) {
        this.recipeID = recipeID;
    }

    public String getRecipeName() {
        return recipeName;
    }

    public void setRecipeName(String recipeName) {
        this.recipeName = recipeName;
    }

    public String getRecipeImage() {
        return recipeImage;
    }

    public void setRecipeImage(String recipeImage) {
        this.recipeImage = recipeImage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @XmlTransient
    public Collection<Account> getAccountCollection() {
        return accountCollection;
    }

    public void setAccountCollection(Collection<Account> accountCollection) {
        this.accountCollection = accountCollection;
    }

    @XmlTransient
    public Collection<Menu> getMenuCollection() {
        return menuCollection;
    }

    public void setMenuCollection(Collection<Menu> menuCollection) {
        this.menuCollection = menuCollection;
    }

    @XmlTransient
    public Collection<Tag> getTagCollection() {
        return tagCollection;
    }

    public void setTagCollection(Collection<Tag> tagCollection) {
        this.tagCollection = tagCollection;
    }

    @XmlTransient
    public Collection<History> getHistoryCollection() {
        return historyCollection;
    }

    public void setHistoryCollection(Collection<History> historyCollection) {
        this.historyCollection = historyCollection;
    }

    @XmlTransient
    public Collection<RecipeDetail> getRecipeDetailCollection() {
        return recipeDetailCollection;
    }

    public void setRecipeDetailCollection(Collection<RecipeDetail> recipeDetailCollection) {
        this.recipeDetailCollection = recipeDetailCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (recipeID != null ? recipeID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Recipe)) {
            return false;
        }
        Recipe other = (Recipe) object;
        if ((this.recipeID == null && other.recipeID != null) || (this.recipeID != null && !this.recipeID.equals(other.recipeID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Recipe[ recipeID=" + recipeID + " ]";
    }
    
}
