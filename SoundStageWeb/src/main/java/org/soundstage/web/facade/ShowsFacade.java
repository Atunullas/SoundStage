/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.facade;

import java.util.List;

import org.soundstage.web.dto.ShowDTO;
 
/**
 *
 * @author atunu_000
 */
public interface ShowsFacade {

    List<ShowDTO> getAllShowsByMovie(Long siteId, Long movieId);

    void AddNewShow(Long movieId,Long TheatreId);

    void DeleteAShow(Long showId);

    void EditAShow();

}
