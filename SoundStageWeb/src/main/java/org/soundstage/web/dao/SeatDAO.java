/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dao;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.domain.Seat;

/**
 *
 * @author atun.ullas
 */
public interface SeatDAO {
    
    Seat createSeatObject(Seat object);

    void createSeatObjectsList(List<Seat> objects);
    
    Seat updateSeatObject(Seat object);
    
    Seat findSeatObjectById(Serializable id);
    
    public List<Seat> getAllSeatObjects();

    public List<Seat> getAllAscendingSortedSeatObjects(String field);
    
    public void createOrUpdateSeatObject(Seat object);
    
    public void deleteSeatObject(Seat object);
	
    public void Seatflush();
    
    public void Seatclear();
}
