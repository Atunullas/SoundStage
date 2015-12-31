package org.soundstage.web.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author atun.ullas
 */
@Entity
@Table(name = "seat_mapping")
@SequenceGenerator(name = "generator", sequenceName = "SEQ", allocationSize = 1)
public class Seat {

	private Long id;

	private String rowId;

	private Long ColumnId;

	private boolean isValid;

	private MovieTheatre movieTheatre;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "generator")
	@Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "seat_mapping_row_id")
	public String getRowId() {
		return rowId;
	}

	public void setRowId(String rowId) {
		this.rowId = rowId;
	}

	@Column(name = "seat_mapping_column_id")
	public Long getColumnId() {
		return ColumnId;
	}

	public void setColumnId(Long ColumnId) {
		this.ColumnId = ColumnId;
	}

	@Column(name = "seat_mapping_is_valid")
	public boolean getIsValid() {
		return isValid;
	}

	public void setIsValid(boolean isValid) {
		this.isValid = isValid;
	}

	@ManyToOne
	@JoinColumn(name = "movie_theatre_id")
	public MovieTheatre getMovieTheatre() {
		return movieTheatre;
	}

	public void setMovieTheatre(MovieTheatre movieTheatre) {
		this.movieTheatre = movieTheatre;
	}

}
