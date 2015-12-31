/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.domain.Ticket;

/**
 *
 * @author atun.ullas
 */
public interface TicketDAO {
    
    Ticket createTicketObject(Ticket object);

    void createTicketObjectsList(List<Ticket> objects);
    
    Ticket updateTicketObject(Ticket object);
    
    Ticket findTicketObjectById(Serializable id);
    
    public List<Ticket> getAllTicketObjects();

    public List<Ticket> getAllAscendingSortedTicketObjects(String field);
    
    public void createOrUpdateTicketObject(Ticket object);
    
    public void deleteTicketObject(Ticket object);
	
    public void Ticketflush();
    
    public void Ticketclear();
   
}
