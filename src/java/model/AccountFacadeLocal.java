/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Toan
 */
@Local
public interface AccountFacadeLocal {

    void create(Account account);

    void edit(Account account);

    void remove(Account account);

    Account find(Object id);

    List<Account> findAll();

    List<Account> findRange(int[] range);

    int count();

    String getAllusertoJSON();

    int deleteUser(String username);

    boolean checkLogIn(String username, String password);

    boolean insertAccount(String username, String password, String fullName);

    String getProfileDataIntoJson(String username);

    boolean updateAccount(Account account);

    boolean changePassword(String username, String password);


    
}
