package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Flight;

public interface CustomerService {
	public List<Flight> viewallflights();
	public String addcustomer(Customer c);
	public Customer checkcustomerlogin(String email,String pwd);
	public Customer ViewCustomerByID(int customerid);
}
