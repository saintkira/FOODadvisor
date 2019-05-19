/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Toan
 */
@Stateless
public class TagFacade extends AbstractFacade<Tag> implements TagFacadeLocal {
    @PersistenceContext(unitName = "foodadvisorPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TagFacade() {
        super(Tag.class);
    }
    
}
