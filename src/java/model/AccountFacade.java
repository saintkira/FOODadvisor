/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
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
        if (em.createQuery("SELECT a FROM Account a WHERE a.username ='"+username+"'").getResultList().isEmpty()==false) {
             Query q = em.createQuery("UPDATE Account a SET a.activeStatus="+false+" WHERE a.username ='"+username+"'");
             return q.executeUpdate();
        }
        return -1;
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
    public String getProfileDataIntoJson(String user) {
        Query q = em.createNativeQuery("SELECT * FROM Account WHERE Username='" + user + "'"
                + " FOR JSON AUTO,Root('data')");
        return q.getSingleResult().toString().replace("true", "\"Active\"").replace("false", "\"Banned\"");
    }

    @Override
    public boolean updateAccount(Account account) {
        Query q = em.createNativeQuery("UPDATE Account SET Fullname = '" + account.getFullname() + "', EmailAddress = '" + account.getEmailAddress() + "', "
                + "DOB = '" + account.getDob() + "',"
                + " Height = '" + account.getHeight() + "',"
                + "Weight = '" + account.getWeight() + "',"
                + "Gender = '" + account.getGender() + "'  "
                + "WHERE Username ='" + account.getUsername() + "'  ");
        if (q.executeUpdate() >= 1) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean changePassword(String username, String password) {
        Query q = em.createNativeQuery("UPDATE Account SET Password = '" + password + "' WHERE Username = '" + username + "' ");
        if (q.executeUpdate() >= 1) {
            return true;
        }
        return false;
    }

    @Override
    public boolean findEmail(String email) {
        Query q = em.createQuery("SELECT a FROM Account a WHERE a.emailAddress = :emailAddress");
        q.setParameter("emailAddress", email);
        if (q.getResultList().isEmpty()) {
            return false;
        }
        return true;
    }

    @Override
    public List<Account> findByEmail(String email) {
        Query q = em.createQuery("SELECT a FROM Account a WHERE a.emailAddress = :emailAddress");
        q.setParameter("emailAddress", email);
        
        
        return q.getResultList();
    }

    @Override
    public int activeUser(String username) {
        if (em.createQuery("SELECT a FROM Account a WHERE a.username ='" + username + "'").getResultList().isEmpty() == false) {
            Query q = em.createQuery("UPDATE Account a SET a.activeStatus=" + true + " WHERE a.username ='" + username + "'");
            return q.executeUpdate();
        }
        return -1;
    }
    
    

}
