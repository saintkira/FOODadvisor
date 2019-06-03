/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Toan
 */
@Stateless
public class AdministratorFacade extends AbstractFacade<Administrator> implements AdministratorFacadeLocal {

    @PersistenceContext(unitName = "foodadvisorPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdministratorFacade() {
        super(Administrator.class);
    }

    @Override
    public boolean checkLogin(String user, String pass) {
        Query q = em.createQuery("SELECT a FROM Administrator a WHERE a.adminUsername = :user AND a.password = :pass");
        q.setParameter("user", user);
        q.setParameter("pass", pass);
        if (q.getResultList().isEmpty()) {
            return false;
        }
        return true;
    }

    @Override
    public boolean changePassword(String password) {
        Query q = em.createNativeQuery("UPDATE Administrator SET Password = '" + password + "' WHERE AdminUsername = 'admin' ");
        if (q.executeUpdate() >= 1) {
            return true;
        }
        return false;

    }

}
