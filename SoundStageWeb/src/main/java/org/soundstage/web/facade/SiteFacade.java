package org.soundstage.web.facade;
 
import java.util.List;

import org.soundstage.web.dto.SiteDTO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author atun.ullas
 */
public interface SiteFacade {
    
    List<SiteDTO> getAllSites();
    
    void addSite(String siteName);
    
    void deleteSite(Long siteId);
    
    void editSite(Long siteId, String Location) ;
        
}
