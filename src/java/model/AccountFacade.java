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
public class AccountFacade extends AbstractFacade<Account> implements AccountFacadeLocal {
    @PersistenceContext(unitName = "foodadvisorPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AccountFacade() {
        super(Account.class);
    }

    @Override
    public String getAllusertoJSON() {
        Query q = em.createNativeQuery("SELECT Username,Fullname,EmailAddress,Active_Status FROM Account FOR JSON AUTO,Root('data')");
        return q.getSingleResult().toString().replace("true", "\"Active\"").replace("false", "\"Banned\"");
    }

    @Override
    public int deleteUser(String username) {
        Query q = em.createQuery("DELETE FROM Account a WHERE a.username = :username");
        q.setParameter("username", username);
        return q.executeUpdate();
    }
    
}
