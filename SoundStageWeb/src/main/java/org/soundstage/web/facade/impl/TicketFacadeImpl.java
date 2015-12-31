/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.facade.impl;

import java.util.List;

import org.soundstage.web.dto.SeatMappingDTO;
import org.soundstage.web.dto.SnackDetailsDTO;
import org.soundstage.web.facade.TicketFacade;

/**
 *
 * @author atunu_000
 */
public class TicketFacadeImpl implements TicketFacade {

	@Override
	public void createNewTicket(Long ticketPrice, Long showId,
			List<Long> seatMapIds, List<SnackDetailsDTO> Snacks) {
		// TODO Auto-generated method stub

	}

	@Override
	public void cancelTicket(Long ticketId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void addSnacks(Long ticketId, List<SnackDetailsDTO> Snacks) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<SeatMappingDTO> showBooking(Long showId) {
		// TODO Auto-generated method stub
		return null;
	}

}
