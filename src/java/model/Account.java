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
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Toan
 */
@Entity
@Table(name = "Account", catalog = "FOODAdvisor", schema = "dbo", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"EmailAddress"})})
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Account.findAll", query = "SELECT a FROM Account a"),
    @NamedQuery(name = "Account.findByUsername", query = "SELECT a FROM Account a WHERE a.username = :username"),
    @NamedQuery(name = "Account.findByPassword", query = "SELECT a FROM Account a WHERE a.password = :password"),
    @NamedQuery(name = "Account.findByFullname", query = "SELECT a FROM Account a WHERE a.fullname = :fullname"),
    @NamedQuery(name = "Account.findByEmailAddress", query = "SELECT a FROM Account a WHERE a.emailAddress = :emailAddress"),
    @NamedQuery(name = "Account.findByDob", query = "SELECT a FROM Account a WHERE a.dob = :dob"),
    @NamedQuery(name = "Account.findByHeight", query = "SELECT a FROM Account a WHERE a.height = :height"),
    @NamedQuery(name = "Account.findByWeight", query = "SELECT a FROM Account a WHERE a.weight = :weight"),
    @NamedQuery(name = "Account.findByGender", query = "SELECT a FROM Account a WHERE a.gender = :gender"),
    @NamedQuery(name = "Account.findByActiveStatus", query = "SELECT a FROM Account a WHERE a.activeStatus = :activeStatus")})
public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Username", nullable = false, length = 30)
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Password", nullable = false, length = 30)
    private String password;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Fullname", nullable = false, length = 50)
    private String fullname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "EmailAddress", nullable = false, length = 30)
    private String emailAddress;
    @Size(max = 20)
    @Column(name = "DOB", length = 20)
    private String dob;
    @Column(name = "Height")
    private Integer height;
    @Column(name = "Weight")
    private Integer weight;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Gender", nullable = false)
    private boolean gender;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Active_Status", nullable = false)
    private boolean activeStatus;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "Image", length = 2147483647)
    private String image;
    @JoinTable(name = "Favorite", joinColumns = {
        @JoinColumn(name = "Username", referencedColumnName = "Username", nullable = false)}, inverseJoinColumns = {
        @JoinColumn(name = "RecipeID", referencedColumnName = "RecipeID", nullable = false)})
    @ManyToMany
    private Collection<Recipe> recipeCollection;
    @OneToMany(mappedBy = "username")
    private Collection<Menu> menuCollection;
    @OneToMany(mappedBy = "username")
    private Collection<History> historyCollection;

    public Account() {
    }

    public Account(String username) {
        this.username = username;
    }

    public Account(String username, String password, String fullname, String emailAddress, boolean gender, boolean activeStatus) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.emailAddress = emailAddress;
        this.gender = gender;
        this.activeStatus = activeStatus;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public boolean getActiveStatus() {
        return activeStatus;
    }

    public void setActiveStatus(boolean activeStatus) {
        this.activeStatus = activeStatus;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @XmlTransient
    public Collection<Recipe> getRecipeCollection() {
        return recipeCollection;
    }

    public void setRecipeCollection(Collection<Recipe> recipeCollection) {
        this.recipeCollection = recipeCollection;
    }

    @XmlTransient
    public Collection<Menu> getMenuCollection() {
        return menuCollection;
    }

    public void setMenuCollection(Collection<Menu> menuCollection) {
        this.menuCollection = menuCollection;
    }

    @XmlTransient
    public Collection<History> getHistoryCollection() {
        return historyCollection;
    }

    public void setHistoryCollection(Collection<History> historyCollection) {
        this.historyCollection = historyCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (username != null ? username.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Account)) {
            return false;
        }
        Account other = (Account) object;
        if ((this.username == null && other.username != null) || (this.username != null && !this.username.equals(other.username))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Account[ username=" + username + " ]";
    }
    
}
