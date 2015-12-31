/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.domain.Movie;

/**
 *
 * @author atun.ullas
 */
public interface MovieDAO {
     
    Movie createMovieObject(Movie object);

    void createMovieObjectsList(List<Movie> objects);
    
    Movie updateMovieObject(Movie object);
    
    Movie findMovieObjectById(Serializable id);
    
    public List<Movie> getAllMovieObjects();

    public List<Movie> getAllAscendingSortedMovieObjects(String field);
    
    public void createOrUpdateMovieObject(Movie object);
    
    public void deleteMovieObject(Movie object);
	
    public void Movieflush();
    
    public void Movieclear();
    
}
