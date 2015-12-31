/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.soundstage.web.service.impl;
 
import java.util.ArrayList;
import java.util.List;

import org.soundstage.web.domain.Movie;
import org.soundstage.web.dto.MovieDTO;

/**
 *
 * @author atunu_000
 */
public class MovieServiceImpl {
    
    public static List<MovieDTO> mapMovieToDTO (List<Movie> movies)
    {
        List<MovieDTO> mappedMovieToDTO = new ArrayList<MovieDTO>();
        for(Movie m : movies){
            MovieDTO movieDTO = new MovieDTO();
            movieDTO.setMovieId(m.getId());
            movieDTO.setMovieName(m.getMovieName());
            movieDTO.setCast(m.getCast());
            movieDTO.setGenre(m.getGenre());
            mappedMovieToDTO.add(movieDTO);
        }
        return mappedMovieToDTO;
    }
     
    public static Movie mapDTOtoMovie (MovieDTO movieDTO)
    {
        Movie movie = new Movie();
        movie.setId(movieDTO.getMovieId());
        movie.setMovieName(movieDTO.getMovieName());
        movie.setCast(movieDTO.getCast());
        movie.setGenre(movieDTO.getGenre());
        return movie;        
    }
}
