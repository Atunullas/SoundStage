/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.soundstage.web.domain.Snacks;
import org.soundstage.web.dto.SnacksDTO;

/**
 *
 * @author atun.ullas
 */
public class SnacksServiceImpl {
    public static List<SnacksDTO> mapSnacksToDto(List<Snacks> st) {
        List<SnacksDTO> allSnacksmapSnacksToDto = new ArrayList<SnacksDTO>();
        for (Snacks snacks : st) {
            SnacksDTO snacksDTO = new SnacksDTO();
            snacksDTO.setSnackId(snacks.getId());
            snacksDTO.setSnackName(snacks.getSnacksName());
            snacksDTO.setSnackPrice(snacks.getSnackPrice());
            allSnacksmapSnacksToDto.add(snacksDTO);
        }
        return allSnacksmapSnacksToDto;
    }

    public static Snacks mapDTOtoSnacks(SnacksDTO st) {
        Snacks snacks = new Snacks();
        snacks.setId(st.getSnacksId());
        snacks.setSnacksName(st.getSnackName());
        snacks.setSnackPrice(st.getSnackPrice());
        return snacks;
    }
}
 