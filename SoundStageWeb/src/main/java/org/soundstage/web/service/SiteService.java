/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.service;

/**
 *
 * @author atun.ullas
 */
public class SiteService {

    private Long siteId;

    private String SiteLocation;

    public Long getSiteId() {
        return siteId;
    }

    public void setSiteId(Long siteId) {
        this.siteId = siteId;
    }

    public String getSiteLocation() {
        return SiteLocation;
    }

    public void setSiteLocation(String SiteLocation) {
        this.SiteLocation = SiteLocation;
    }

}
 