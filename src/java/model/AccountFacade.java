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

    @Override
    public boolean checkLogIn(String username, String password) {
        Query q = em.createQuery("SELECT a FROM Account a WHERE a.username = :username AND a.password = :password");
        q.setParameter("username", username);
        q.setParameter("password", password);
        if (q.getResultList().isEmpty()) {
            return false;
        }
        return true;
    }

    @Override
    public boolean insertAccount(String username, String password, String fullName) {
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        account.setFullname(fullName);
        em.persist(account);
        return false;
    }

    @Override
    public String getProfileDataIntoJson(String username) {
        Query query = em.createQuery("SELECT a FROM Account a WHERE a.username = :username FOR JSON AUTO,Root('data')");
        query.setParameter("username", username);
        return query.getSingleResult().toString().replace("true", "\"Active\"").replace("false", "\"Banned\"");
    }

}
