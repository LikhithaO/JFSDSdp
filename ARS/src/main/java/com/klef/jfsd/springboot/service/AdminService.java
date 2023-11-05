package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Flight;

public interface AdminService {
	public List<Customer> viewallcustomers();
	public List<Flight> viewallflights();
	public Customer viewcustomerbyid(int cid);
	public Admin checkadminlogin(String uname,String pwd);
	public String addFlight(Flight f);
	public long customercount(); //count(*)
	public long flightcount(); // count(*)
	public Flight viewflightbyid(int fid);
	
	public String deleteflight(int fid);
	  public String deletecustomer(int cid);
}
