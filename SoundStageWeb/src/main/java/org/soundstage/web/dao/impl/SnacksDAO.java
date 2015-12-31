/*
 * Snackso change this license header, choose License Headers in Project Properties.
 * Snackso change this template file, choose Snacksools | Snacksemplates
 * and open the template in the editor.
 */
package org.soundstage.web.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.soundstage.web.domain.Snacks;
/**
 *
 * @author atun.ullas
 */
public interface SnacksDAO {
    
    Snacks createSnacksObject(Snacks object);

    void createSnacksObjectsList(List<Snacks> objects);
    
    Snacks updateSnacksObject(Snacks object);
    
    Snacks findSnacksObjectById(Serializable id);
    
    public List<Snacks> getAllSnacksObjects();
 
    public List<Snacks> getAllAscendingSortedSnacksObjects(String field);
    
    public void createOrUpdateSnacksObject(Snacks object);
    
    public void deleteSnacksObject(Snacks object);
	
    public void Snacksflush();
    
    public void Snacksclear();
    
	   
}
