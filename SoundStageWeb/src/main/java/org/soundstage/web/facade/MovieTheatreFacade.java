/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.facade;


import java.util.List;

import org.soundstage.web.dto.MovieTheatreDTO;

/**
 *
 * @author atun.ullas
 */
public interface MovieTheatreFacade {
    
    List<MovieTheatreDTO> getAllTheatres();
         
    void addTheatre(Long siteId, String theaterName,String seatMapping);
    
    void deleteTheatre(Long theatreId);
    
    void editTheatreDetails(Long theatreId, Long siteId, String theatreName);
}
