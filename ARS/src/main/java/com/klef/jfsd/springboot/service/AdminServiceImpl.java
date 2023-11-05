package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Flight;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.FlightRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private FlightRepository flightRepository;

	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public String addFlight(Flight f) {
		flightRepository.save(f);
		return "Flight Added Successfully";
	}

	@Override
	public long customercount() 
	{
		return customerRepository.count();
	}
	
	@Override
	public long flightcount() 
	{
		return flightRepository.count();
	}

	@Override
	public List<Customer> viewallcustomers() {
		return customerRepository.findAll();
	}

	@Override
	public List<Flight> viewallflights() {
		return flightRepository.findAll();
	}
	
	@Override
	public Customer viewcustomerbyid(int cid) 
	{
		Optional<Customer> obj =  customerRepository.findById(cid);
        
        if(obj.isPresent())
        {
          Customer c = obj.get();
          
          return c;
        }
        else
        {
          return null;
        }
	}
	
	@Override
	public Flight viewflightbyid(int fid) 
	{
		Optional<Flight> obj =  flightRepository.findById(fid);
        
        if(obj.isPresent())
        {
          Flight f = obj.get();
          
          return f;
        }
        else
        {
          return null;
        }
	}

	@Override
	  public String deleteflight(int fid) {
	    Optional<Flight> obj =  flightRepository.findById(fid);
	         
	         String msg = null;
	         
	         if(obj.isPresent())
	         {
	           Flight emp = obj.get();
	           
	           flightRepository.delete(emp);
	           
	           msg = "Flight Deleted Successfully";
	         }
	         else
	         {
	           msg = "Flight Not Found";
	         }
	         
	         return msg;
	    
	  }

	  @Override
	  public String deletecustomer(int cid) {
	    Optional<Customer> obj =  customerRepository.findById(cid);
	         
	         String msg = null;
	         
	         if(obj.isPresent())
	         {
	           Customer customer = obj.get();
	           
	           customerRepository.delete(customer);
	           
	           msg = "Customer Deleted Successfully";
	         }
	         else
	         {
	           msg = "Customer Not Found";
	         }
	         
	         return msg;
	  }
	
}
