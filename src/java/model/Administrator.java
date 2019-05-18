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
import javax.persistence.Lob;
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
@Table(name = "Administrator", catalog = "FOODAdvisor", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Administrator.findAll", query = "SELECT a FROM Administrator a"),
    @NamedQuery(name = "Administrator.findByAdminUsername", query = "SELECT a FROM Administrator a WHERE a.adminUsername = :adminUsername"),
    @NamedQuery(name = "Administrator.findByPassword", query = "SELECT a FROM Administrator a WHERE a.password = :password")})
public class Administrator implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "AdminUsername", nullable = false, length = 30)
    private String adminUsername;
    @Size(max = 30)
    @Column(name = "Password", length = 30)
    private String password;
    @Lob
    @Column(name = "Image")
    private byte[] image;

    public Administrator() {
    }

    public Administrator(String adminUsername) {
        this.adminUsername = adminUsername;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (adminUsername != null ? adminUsername.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Administrator)) {
            return false;
        }
        Administrator other = (Administrator) object;
        if ((this.adminUsername == null && other.adminUsername != null) || (this.adminUsername != null && !this.adminUsername.equals(other.adminUsername))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Administrator[ adminUsername=" + adminUsername + " ]";
    }
    
}
