/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.service.impl;

 
import java.util.ArrayList;
import java.util.List;

import org.soundstage.web.domain.Seat;
import org.soundstage.web.dto.SeatMappingDTO;

/**
 *
 * @author atunu_000
 */
public class SeatMappingServiceImpl { 

    public static List<SeatMappingDTO> mapSeatToDTO(List<Seat> seats, List<Seat> bookedSeats) {
        List<SeatMappingDTO> seatDTOs = new ArrayList<SeatMappingDTO>();
        for (Seat s : seats) {
            SeatMappingDTO seatDTO = new SeatMappingDTO();
            seatDTO.setRowId(s.getRowId());
            seatDTO.setColumnId(s.getColumnId());
            seatDTO.setIsValid(s.getIsValid());
            if(bookedSeats != null && bookedSeats.size() > 0){
                if(bookedSeats.contains(s)){
                    seatDTO.setIsbooked(true);
                }
            }
            seatDTOs.add(seatDTO);
        }
        return seatDTOs;
    } 

    public static Seat mapDTOToSeat(SeatMappingDTO seatDTO) {
        Seat seat = new Seat();
        seat.setRowId(seatDTO.getRowId());
        seat.setColumnId(seatDTO.getColumnId());
        seat.setIsValid(seatDTO.getIsValid());
        
        return seat;
    }

}
