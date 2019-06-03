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

    @Override
    public String getTagforins() {
        Query q = em.createNativeQuery("SELECT 'option' as [type], TagID AS 'value',TagName AS 'label' FROM Tag\n" +
                             "FOR JSON AUTO");
        List<String> results = q.getResultList();
        String json="";
        for (String s:results) {
            json=json+s;
        }
        return json;
    }
    
}
