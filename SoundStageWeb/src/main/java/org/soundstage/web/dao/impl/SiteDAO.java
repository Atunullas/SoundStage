/*
 * Siteo change this license header, choose License Headers in Project Properties.
 * Siteo change this template file, choose Siteools | Siteemplates
 * and open the template in the editor.
 */
package org.soundstage.web.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.domain.Site;
/**
 *
 * @author atun.ullas
 */
public interface SiteDAO {
    
    Site createSiteObject(Site object);

    void createSiteObjectsList(List<Site> objects);
     
    Site updateSiteObject(Site object);
    
    Site findSiteObjectById(Serializable id);
    
    public List<Site> getAllSiteObjects();

    public List<Site> getAllAscendingSortedSiteObjects(String field);
    
    public void createOrUpdateSiteObject(Site object);
    
    public void deleteSiteObject(Site object);
	
    public void Siteflush();
    
    public void Siteclear();
    
	   
}
