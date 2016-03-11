/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dao;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.domain.MovieTheatre;

/**
 *
 * @author atun.ullas
 */
public interface MovieTheatreDAO {
    
    MovieTheatre createMovieTheatreObject(MovieTheatre object);

    void createMovieTheatreObjectsList(List<MovieTheatre> objects);
     
    MovieTheatre updateMovieTheatreObject(MovieTheatre object);
    
    MovieTheatre findMovieTheatreObjectById(Serializable id);
    
    public List<MovieTheatre> getAllMovieTheatreObjects();

    public List<MovieTheatre> getAllAscendingSortedMovieTheatreObjects(String field);
    
    public void createOrUpdateMovieTheatreObject(MovieTheatre object);
    
    public void deleteMovieTheatreObject(MovieTheatre object);
	
    public void MovieTheatreflush();
    
    public void MovieTheatreclear();
    
}
