/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.facade;

 
import java.util.List;

import org.soundstage.web.dto.SnacksDTO;

/**
 *
 * @author atun.ullas
 */
public interface SnacksFacade { 
    
    List<SnacksDTO> getAllSites();
    
    void addSnacks(String snackName, Long snacksPrice);
    
    void deleteSnacks(Long snackId);
    
    void editSnacks(Long snackId, String snackName,Long snacksPrice);
    
}
