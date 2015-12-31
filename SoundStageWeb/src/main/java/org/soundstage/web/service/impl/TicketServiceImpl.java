/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.soundstage.web.domain.Ticket;
import org.soundstage.web.dto.TicketDTO;



/**
 *
 * @author atunu_000
 */
public class TicketServiceImpl {

    public static List<TicketDTO> mapTicketToDTO(List<Ticket> ticket) {
        List<TicketDTO> mappedTicketToDTO = new ArrayList<TicketDTO>();
        for (Ticket t : ticket) {
            TicketDTO ticketDTO = new TicketDTO();
            ticketDTO.setTicketId(t.getId());
            ticketDTO.setCreationTime(t.getCreationTime());
            ticketDTO.setShow(t.getShows());
            ticketDTO.setTicketPrice(t.getTicketPrice());
            mappedTicketToDTO.add(ticketDTO);
        }
        return mappedTicketToDTO;
    }

    public static Ticket mapDTOtoTicket(TicketDTO ticketDTO) {
        Ticket ticket = new Ticket();
        ticket.setId(ticketDTO.getTicketId());
        ticket.setCreationTime(ticketDTO.getCreationTime());
        ticket.setShows(ticketDTO.getShow());
        ticket.setTicketPrice(ticketDTO.getTicketPrice());
        return ticket;
    } 
}
