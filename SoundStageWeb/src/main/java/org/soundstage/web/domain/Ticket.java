package org.soundstage.web.domain;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
@Table(name = "ticket")
@SequenceGenerator(name = "generator", sequenceName = "SEQ", allocationSize = 1)
public class Ticket  {
	private Long id;

	private Date creationTime;

	private Long ticketPrice;

	private Show show;

	private List<Seat> seats;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "generator")
	@Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "ticket_creation_time")
	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	@ManyToOne
	@JoinColumn(name = "show_Id")
	public Show getShows() {
		return show;
	}

	public void setShows(Show show) {
		this.show = show;
	}

	@Column(name = "ticket_price")
	public Long getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(Long ticketPrice) {
		this.ticketPrice = ticketPrice;
	}

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "ticket_seat", joinColumns = { @JoinColumn(name = "ticket_id") }, inverseJoinColumns = { @JoinColumn(name = "seat_id") })
	public List<Seat> getSeats() {
		return seats;
	}

	public void setSeats(List<Seat> seats) {
		this.seats = seats;
	}

}
