
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dto;

import org.soundstage.web.domain.Site;

/**
 *
 * @author atun.ullas
 */
public class MovieTheatreDTO {

    private Long theaterId;

    private String theatreName;

    private Site site;
    
    public Long getTheaterId() {
        return theaterId;
    }

    public void setTheaterId(Long theaterId) {
        this.theaterId = theaterId;
    }

    public String getTheatreName() {
        return theatreName;
    }

    public void setTheatreName(String theatreName) {
        this.theatreName = theatreName;
    }
 
    public Site getSite() {
        return site;
    }

    public void setSite(Site site) {
        this.site = site;
    }

}
