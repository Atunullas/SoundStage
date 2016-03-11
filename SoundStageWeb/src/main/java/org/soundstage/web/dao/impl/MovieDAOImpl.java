/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.soundstage.web.dao.MovieDAO;
import org.soundstage.web.domain.Movie;
import org.springframework.stereotype.Repository;

/**
 *
 * @author atun.ullas
 */

@Repository
public class MovieDAOImpl implements MovieDAO {

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Movie createMovieObject(Movie object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createMovieObjectsList(List<Movie> objects) {
		// TODO Auto-generated method stub

	}

	@Override
	public Movie updateMovieObject(Movie object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Movie findMovieObjectById(Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Movie> getAllMovieObjects() {
		// TODO Auto-generated method stub
		String hql = "select * from movie"; 
		Query query = sessionFactory.openSession().createSQLQuery(hql);
		List<Movie> results = query.list(); 
		return results;
	}

	@Override
	public List<Movie> getAllAscendingSortedMovieObjects(String field) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createOrUpdateMovieObject(Movie object) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMovieObject(Movie object) {
		// TODO Auto-generated method stub

	}

	@Override
	public void Movieflush() {
		// TODO Auto-generated method stub

	}

	@Override
	public void Movieclear() {
		// TODO Auto-generated method stub

	}

}
