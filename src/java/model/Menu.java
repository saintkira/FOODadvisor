<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "Menu", catalog = "FOODadvisor", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Menu.findAll", query = "SELECT m FROM Menu m"),
    @NamedQuery(name = "Menu.findByMenuID", query = "SELECT m FROM Menu m WHERE m.menuID = :menuID"),
    @NamedQuery(name = "Menu.findByTime", query = "SELECT m FROM Menu m WHERE m.time = :time"),
    @NamedQuery(name = "Menu.findByWeekdays", query = "SELECT m FROM Menu m WHERE m.weekdays = :weekdays"),
    @NamedQuery(name = "Menu.findByIsDiet", query = "SELECT m FROM Menu m WHERE m.isDiet = :isDiet")})
public class Menu implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "MenuID", nullable = false)
    private Integer menuID;
    @Size(max = 10)
    @Column(name = "Time", length = 10)
    private String time;
    @Size(max = 10)
    @Column(name = "Weekdays", length = 10)
    private String weekdays;
    @Column(name = "isDiet")
    private Boolean isDiet;
    @JoinTable(name = "MenuDetail", joinColumns = {
        @JoinColumn(name = "MenuID", referencedColumnName = "MenuID", nullable = false)}, inverseJoinColumns = {
        @JoinColumn(name = "RecipeID", referencedColumnName = "RecipeID", nullable = false)})
    @ManyToMany
    private Collection<Recipe> recipeCollection;
    @JoinColumn(name = "Username", referencedColumnName = "Username")
    @ManyToOne
    private Account username;

    public Menu() {
    }

    public Menu(Integer menuID) {
        this.menuID = menuID;
    }

    public Integer getMenuID() {
        return menuID;
    }

    public void setMenuID(Integer menuID) {
        this.menuID = menuID;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getWeekdays() {
        return weekdays;
    }

    public void setWeekdays(String weekdays) {
        this.weekdays = weekdays;
    }

    public Boolean getIsDiet() {
        return isDiet;
    }

    public void setIsDiet(Boolean isDiet) {
        this.isDiet = isDiet;
    }

    @XmlTransient
    public Collection<Recipe> getRecipeCollection() {
        return recipeCollection;
    }

    public void setRecipeCollection(Collection<Recipe> recipeCollection) {
        this.recipeCollection = recipeCollection;
    }

    public Account getUsername() {
        return username;
    }

    public void setUsername(Account username) {
        this.username = username;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (menuID != null ? menuID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Menu)) {
            return false;
        }
        Menu other = (Menu) object;
        if ((this.menuID == null && other.menuID != null) || (this.menuID != null && !this.menuID.equals(other.menuID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Menu[ menuID=" + menuID + " ]";
    }
    
}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@Table(name = "Menu", catalog = "FOODAdvisor", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Menu.findAll", query = "SELECT m FROM Menu m"),
    @NamedQuery(name = "Menu.findByMenuID", query = "SELECT m FROM Menu m WHERE m.menuID = :menuID"),
    @NamedQuery(name = "Menu.findByTime", query = "SELECT m FROM Menu m WHERE m.time = :time"),
    @NamedQuery(name = "Menu.findByWeekdays", query = "SELECT m FROM Menu m WHERE m.weekdays = :weekdays"),
    @NamedQuery(name = "Menu.findByIsDiet", query = "SELECT m FROM Menu m WHERE m.isDiet = :isDiet")})
public class Menu implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "MenuID", nullable = false)
    private Integer menuID;
    @Size(max = 10)
    @Column(name = "Time", length = 10)
    private String time;
    @Size(max = 10)
    @Column(name = "Weekdays", length = 10)
    private String weekdays;
    @Column(name = "isDiet")
    private Boolean isDiet;
    @JoinTable(name = "MenuDetail", joinColumns = {
        @JoinColumn(name = "MenuID", referencedColumnName = "MenuID", nullable = false)}, inverseJoinColumns = {
        @JoinColumn(name = "RecipeID", referencedColumnName = "RecipeID", nullable = false)})
    @ManyToMany
    private Collection<Recipe> recipeCollection;
    @JoinColumn(name = "Username", referencedColumnName = "Username")
    @ManyToOne
    private Account username;

    public Menu() {
    }

    public Menu(Integer menuID) {
        this.menuID = menuID;
    }

    public Integer getMenuID() {
        return menuID;
    }

    public void setMenuID(Integer menuID) {
        this.menuID = menuID;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getWeekdays() {
        return weekdays;
    }

    public void setWeekdays(String weekdays) {
        this.weekdays = weekdays;
    }

    public Boolean getIsDiet() {
        return isDiet;
    }

    public void setIsDiet(Boolean isDiet) {
        this.isDiet = isDiet;
    }

    @XmlTransient
    public Collection<Recipe> getRecipeCollection() {
        return recipeCollection;
    }

    public void setRecipeCollection(Collection<Recipe> recipeCollection) {
        this.recipeCollection = recipeCollection;
    }

    public Account getUsername() {
        return username;
    }

    public void setUsername(Account username) {
        this.username = username;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (menuID != null ? menuID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Menu)) {
            return false;
        }
        Menu other = (Menu) object;
        if ((this.menuID == null && other.menuID != null) || (this.menuID != null && !this.menuID.equals(other.menuID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Menu[ menuID=" + menuID + " ]";
    }
    
}
>>>>>>> toan_common
