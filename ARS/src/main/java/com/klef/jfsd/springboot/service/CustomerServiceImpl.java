package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Flight;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.FlightRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private FlightRepository flightRepository;
	
	@Override
	public String addcustomer(Customer c) 
	{
		customerRepository.save(c);
		return "Customer Added Successfully";
	}
	
	@Override
	public Customer checkcustomerlogin(String email, String pwd) {
		return customerRepository.checkcustomerlogin(email, pwd);
	}
	
	@Override
	public List<Flight> viewallflights() {
		return flightRepository.findAll();
	}
	
	@Override
	  public Customer ViewCustomerByID(int customerid) 
	  {
	    return customerRepository.findById(customerid).get();
	  }

}
