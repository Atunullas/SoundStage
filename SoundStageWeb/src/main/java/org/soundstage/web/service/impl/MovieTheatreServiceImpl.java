/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.service.impl;

 
import java.util.ArrayList;
import java.util.List;

import org.soundstage.web.domain.MovieTheatre;
import org.soundstage.web.dto.MovieTheatreDTO;

/**
 *
 * @author atun.ullas
 */
public class MovieTheatreServiceImpl {
    
    public static List<MovieTheatreDTO>  mapTheatreToDto(List<MovieTheatre> mts){
        List<MovieTheatreDTO> MappedTheatresToDTO = new ArrayList<MovieTheatreDTO>();
        for(MovieTheatre mT : mts){
            MovieTheatreDTO mTDTO = new MovieTheatreDTO();
            mTDTO.setSite(mT.getSite());
            mTDTO.setTheaterId(mT.getId());
            mTDTO.setTheatreName(mT.getTheatreName());
            MappedTheatresToDTO.add(mTDTO);
        }
        return MappedTheatresToDTO;
    }
    
    public static MovieTheatre mapDTOToTheatre(MovieTheatreDTO td){
        MovieTheatre mappedDTOToTheatre = new MovieTheatre();
        mappedDTOToTheatre.setId(td.getTheaterId());
        mappedDTOToTheatre.setSite(td.getSite());
        mappedDTOToTheatre.setTheatreName(td.getTheatreName());
        return mappedDTOToTheatre;
    } 
}
