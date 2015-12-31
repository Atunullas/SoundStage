/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.service.impl;

 
import java.util.ArrayList;
import java.util.List;

import org.soundstage.web.domain.Site;
import org.soundstage.web.dto.SiteDTO;

/**
 *
 * @author atun.ullas
 */
public class SiteServiceImpl {

    public static List<SiteDTO> mapSiteToDto(List<Site> st) {
        List<SiteDTO> allSitemapSiteToDto = new ArrayList<SiteDTO>();
        for (Site site : st) {
            SiteDTO siteDTO = new SiteDTO();
            siteDTO.setSiteId(site.getId());
            siteDTO.setSiteLocation(site.getLocation());
            allSitemapSiteToDto.add(siteDTO);
        }
        return allSitemapSiteToDto;
    }

    public static Site mapDTOtoSite(SiteDTO st) {
        Site site = new Site();
        site.setId(st.getSiteId());
        site.setLocation(st.getSiteLocation());
        return site;
    }

} 
