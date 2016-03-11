/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dao;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.domain.Show;
import org.soundstage.web.domain.Ticket;

/**
 *
 * @author atun.ullas
 */
public interface ShowDAO {

    Show createShowObject(Show object);

    void createShowObjectsList(List<Show> objects);
     
    Show updateShowObject(Show object);
    
    Show findShowObjectById(Serializable id);
    
    public List<Show> getAllShowObjects();

    public List<Show> getAllAscendingSortedShowObjects(String field);
    
    public void createOrUpdateShowObject(Show object);
    
    public void deleteShowObject(Show object);
	
    public void Showflush();
    
    public void Showclear();
    
    List<Ticket> getAllTicketObjectsForShow(Long showId);
}
