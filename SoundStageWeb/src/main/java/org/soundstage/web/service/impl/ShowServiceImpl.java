/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.soundstage.web.service.impl;

 
import java.util.ArrayList;
import java.util.List;

import org.soundstage.web.domain.Show;
import org.soundstage.web.dto.ShowDTO;

/**
 *
 * @author atunu_000
 */
public class ShowServiceImpl {
    
    public static List<ShowDTO> mapSeatToDTO(List<Show> shows) {
        List<ShowDTO> showDTO = new ArrayList<ShowDTO>();
        for (Show s : shows) {
            ShowDTO sDTO = new ShowDTO();
            sDTO.setShowId(s.getId());
            sDTO.setStartTime(s.getStartTime());
            sDTO.setEndTime(s.getEndTime());
            sDTO.setMovie(s.getMovie());
            sDTO.setMovieTheatre(s.getMovieTheatre());
            showDTO.add(sDTO);
        }
        return showDTO;
    }
 
    public static Show mapDTOToSeat(ShowDTO showDTO) {
        Show show = new Show();
        show.setId(showDTO.getShowId());
        show.setMovieId(showDTO.getMovie());
        show.setStartTime(showDTO.getStartTime());
        show.setEndTime(showDTO.getEndTime());
        show.setMovieTheatre(showDTO.getMovieTheatre());
        return show;
    }
    
}
