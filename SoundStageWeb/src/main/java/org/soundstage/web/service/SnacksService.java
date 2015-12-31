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
public class SnacksService {
    
    private Long SnackId;
    
    private String SnackName;
    
    private Long snackPrice;

    public Long getSnacksId() {
        return SnackId;
    }

    public void setSnackId(Long SnackId) {
        this.SnackId = SnackId;
    }

    public String getSnackName() {
        return SnackName;
    }

    public void setSnackName(String SnackName) {
        this.SnackName = SnackName;
    }

    public Long getSnackPrice() {
        return snackPrice;
    }

    public void setSnackPrice(Long snackPrice) {
        this.snackPrice = snackPrice;
    }
    
}
