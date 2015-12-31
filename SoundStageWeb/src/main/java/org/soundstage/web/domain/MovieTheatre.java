package org.soundstage.web.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
@Table(name = "movie_theater")
@SequenceGenerator(name = "generator", sequenceName = "SEQ", allocationSize = 1)
public class MovieTheatre  {
private Long id; 
    
    
    
	private String theatreName;
    
    private Site site;
    
    private List<Seat> seats = new ArrayList<Seat>();

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "generator")
    @Column(name="id")
    public Long getId() {
        return id;
    } 

    public void setId(Long id) {
        this.id = id;
    }
    
    @Column(name = "movie_theatre_name")
    public String getTheatreName() {
        return theatreName;
    }

    public void setTheatreName(String theatreName) {
        this.theatreName = theatreName;
    } 

    @ManyToOne
    @JoinColumn(name = "site_id")
    public Site getSite() {
        return site;
    }

    public void setSite(Site site) {
        this.site = site;
    }
    
    @OneToMany(mappedBy="movieTheatre")
    public List<Seat> getSeats() {
        return seats;
    }

    public void setSeats(List<Seat> seats) {
        this.seats = seats;
    }

}
