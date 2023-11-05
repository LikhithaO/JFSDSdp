package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "bookflight_table")
public class BookFlight 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="bfrom",nullable=false,length = 30)
	private String from;
	@Column(name="bto",nullable=false,length = 30)
	private String to;
	@Column(name="bdate",nullable=false,length = 10)
	private String date;
	@Column(name="bname",unique = true,nullable=false,length = 50)
	private String flightname;
	@Column(name="bseating",nullable=false,length = 30)
	private String seating;
	@Column(name = "badults",nullable = false)
	private int adults;
	@Column(name = "bchildren",nullable = true)
	private int children;
	@Column(name = "binfants",nullable = true)
	private int infant;
	@Column(name = "bpname",nullable = false,length = 50)
	private String pname;
	@Column(name = "bpcontactno",nullable = false,length = 10)
	private String contactno;
	@Column(name = "bpemail",nullable = false)
	private String email;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFlightname() {
		return flightname;
	}
	public void setFlightname(String flightname) {
		this.flightname = flightname;
	}
	public String getSeating() {
		return seating;
	}
	public void setSeating(String seating) {
		this.seating = seating;
	}
	public int getAdults() {
		return adults;
	}
	public void setAdults(int adults) {
		this.adults = adults;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public int getInfant() {
		return infant;
	}
	public void setInfant(int infant) {
		this.infant = infant;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "BookFlight [id=" + id + ", from=" + from + ", to=" + to + ", date=" + date + ", flightname="
				+ flightname + ", seating=" + seating + ", adults=" + adults + ", children=" + children + ", infant="
				+ infant + ", pname=" + pname + ", contactno=" + contactno + ", email=" + email + "]";
	}
	
}
