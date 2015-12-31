/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.facade;
 
import java.util.List;

import org.soundstage.web.dto.SeatMappingDTO;
import org.soundstage.web.dto.SnackDetailsDTO;

/**
 *
 * @author atunu_000 
 */
public interface TicketFacade {

    void createNewTicket(Long ticketPrice, Long showId, List<Long> seatMapIds, List<SnackDetailsDTO> Snacks);

    void cancelTicket(Long ticketId);
    
    void addSnacks(Long ticketId, List<SnackDetailsDTO> Snacks);
    
    List<SeatMappingDTO> showBooking(Long showId);

}
