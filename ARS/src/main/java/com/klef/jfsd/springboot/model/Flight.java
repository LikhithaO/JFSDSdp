package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "flight_table")
public class Flight {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="flight_id")
	private int id;
	@Column(name = "flight_number",nullable = false)
	private int number;
	@Column(name="flight_name",unique = true,nullable=false,length = 50)
	private String name;
	@Column(name="flight_from",nullable=false,length = 30)
	private String from;
	@Column(name="flight_to",nullable=false,length = 30)
	private String to;
	@Column(name="flight_date",nullable=false,length = 10)
	private String date;
	@Column(name = "flight_hours",nullable=false)
	private int hours;
	@Column(name = "flight_intervals",nullable=false)
	private int intervals;
	@Column(name = "flight_capacity",nullable = false)
	private int capacity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getHours() {
		return hours;
	}
	public void setHours(int hours) {
		this.hours = hours;
	}
	public int getIntervals() {
		return intervals;
	}
	public void setIntervals(int intervals) {
		this.intervals = intervals;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	@Override
	public String toString() {
		return "Flight [id=" + id + ", number=" + number + ", name=" + name + ", from=" + from + ", to=" + to
				+ ", date=" + date + ", hours=" + hours + ", intervals=" + intervals + ", capacity=" + capacity + "]";
	}
	
}
