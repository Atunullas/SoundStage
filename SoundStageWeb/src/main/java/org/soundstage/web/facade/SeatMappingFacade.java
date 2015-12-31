   /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.facade;

import java.util.List;

import org.soundstage.web.dto.SeatMappingDTO;

/**
 *
 * @author atunu_000
 */
public interface SeatMappingFacade { 

    List<SeatMappingDTO> showSeatMapping(Long theatreId);

    void createSeatMapping(String row, Long column, boolean isValid);

    void deleteSeatMapping(Long id);

    void editSeatMapping(Long seatMapping);
}
