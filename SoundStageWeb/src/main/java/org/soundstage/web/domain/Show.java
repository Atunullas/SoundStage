package org.soundstage.web.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;

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
@Table(name = "show")
@SequenceGenerator(name = "generator", sequenceName = "SEQ", allocationSize = 1)
public class Show   {
	private Long id;

	private Date startTime;

	private Date endTime;

	private MovieTheatre movieTheatre;

	private Movie movie;

	private List<Ticket> tickets = new ArrayList<Ticket>();

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "generator")
	@Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "show_start_time")
	@Temporal(javax.persistence.TemporalType.DATE)
	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	@Column(name = "show_end_time")
	@Temporal(javax.persistence.TemporalType.DATE)
	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	@ManyToOne
	@JoinColumn(name = "movie_theatre_id")
	public MovieTheatre getMovieTheatre() {
		return movieTheatre;
	}

	public void setMovieTheatre(MovieTheatre movieTheatre) {
		this.movieTheatre = movieTheatre;
	}

	@ManyToOne
	@JoinColumn(name = "movie_id")
	public Movie getMovie() {
		return movie;
	}

	public void setMovieId(Movie movie) {
		this.movie = movie;
	}

	@OneToMany(mappedBy = "show", fetch = FetchType.LAZY)
	public List<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(List<Ticket> tickets) {
		this.tickets = tickets;
	}

}
