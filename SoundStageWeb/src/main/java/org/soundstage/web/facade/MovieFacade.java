/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.facade;


import java.util.List;

import org.soundstage.web.dto.MovieDTO;

/**
 *
 * @author atunu_000
 */
public interface MovieFacade {

    List<MovieDTO> getAllPlayingMovies();

    public void addNewMovie(String movieName, String cast, String genre);

    void deleteMovie(Long movieId);

    void editMovie(Long movieId, String movieName, String cast, String genre);
}
