/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.dao.ShowDAO;
import org.soundstage.web.domain.Show;
import org.soundstage.web.domain.Ticket;

/**
 *
 * @author atun.ullas
 */
public class ShowDAOImpl implements ShowDAO{

	@Override
	public Show createShowObject(Show object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createShowObjectsList(List<Show> objects) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Show updateShowObject(Show object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Show findShowObjectById(Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Show> getAllShowObjects() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Show> getAllAscendingSortedShowObjects(String field) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createOrUpdateShowObject(Show object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteShowObject(Show object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Showflush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Showclear() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Ticket> getAllTicketObjectsForShow(Long showId) {
		// TODO Auto-generated method stub
		return null;
	}
 
}
