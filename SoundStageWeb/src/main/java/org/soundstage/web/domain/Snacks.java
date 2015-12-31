/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.soundstage.web.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author atunu_000
 */
@Entity
@SequenceGenerator(name = "generator", sequenceName = "SEQ", allocationSize = 1)
@Table(name = "snacks")
public class Snacks  {

	private Long id;

	private String snacksName;

	private Long snackPrice;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "generator")
	@Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "snacks_name")
	public String getSnacksName() {
		return snacksName;
	}

	public void setSnacksName(String snacksName) {
		this.snacksName = snacksName;
	}

	@Column(name = "snacks_price")
	public Long getSnackPrice() {
		return snackPrice;
	}

	public void setSnackPrice(Long snackPrice) {
		this.snackPrice = snackPrice;
	}

}
