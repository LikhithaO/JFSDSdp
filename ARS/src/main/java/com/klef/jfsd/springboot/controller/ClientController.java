package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.BookFlight;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Flight;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BookFlightService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.EmailService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
    private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private BookFlightService bookFlightService;
	
	@Autowired 
	private EmailService emailService;
	
	@GetMapping("/")
    public String main() 
    {
     return "main";
    }
	
	
	//Customer Registration Start
	@GetMapping("customerreg")
    public ModelAndView customerreg()
    {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("registration");
     return mv;
    }
	
    @PostMapping("insertcustomer")
    public ModelAndView insertcustomer(HttpServletRequest request) 
    {
    	ModelAndView mv = new ModelAndView();
    	
    	String msg = null;
    	
    	try
    	{
    		String name = request.getParameter("name");
    		String email = request.getParameter("email");

    		String contact = request.getParameter("contact");
    		String pwd = request.getParameter("pwd");
    		String address = request.getParameter("address");
    		String gender = request.getParameter("gender");
    		
    		Customer customer = new Customer();
    	       customer.setName(name);
    	       customer.setGender(gender);
    	       customer.setEmail(email);
    	       customer.setPassword(pwd);
    	       customer.setAddress(address);
    	       customer.setContactno(contact);
    	       
    	       msg = customerService.addcustomer(customer);
    	       
    	       emailService.sendEmail(customer.getEmail(),"ARS Welcomes You....","Thanks for registering to our website. Stay Tuned");
    	       
    	       mv.setViewName("login");
    	       mv.addObject("message", msg);
    	}
    	catch(Exception e)
    	{
    		mv.setViewName("displayerror");
    		msg = e.getMessage();
    		mv.addObject("message", msg);
    	}
    	return mv;
    }
    //Customer Registration End
    
    //login start
    
    @GetMapping("login") 
    public ModelAndView login()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("login");
      return mv;
    }
    
    @PostMapping("checklogin")
    public ModelAndView checkemplogin(HttpServletRequest request)
    {
    	ModelAndView mv = new ModelAndView();
    	
    	String email = request.getParameter("email");
    	String pwd = request.getParameter("pwd");
    	
    	Admin a = adminService.checkadminlogin(email, pwd);
    	Customer c = customerService.checkcustomerlogin(email, pwd);
    	if(a!=null) 
    	{
    		HttpSession session= request.getSession();
    		
    		mv.setViewName("admin");
    	}
    	else if(c!=null) 
    	{
    		HttpSession session= request.getSession();
    		mv.setViewName("customer");
    	}
    	else
    	{
    		mv.setViewName("login");
    		mv.addObject("message","Login Failed");
    	}
    	return mv;
    }
    
    //login end
    
    //flight start
    
    @GetMapping("addflight")
    public ModelAndView addflight()
    {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("addflight");
     return mv;
    }
	
    @PostMapping("insertflight")
    public ModelAndView insertflight(HttpServletRequest request) 
    {
    	ModelAndView mv = new ModelAndView();
    	
    	String msg = null;
    	
    	try
    	{
    		String number = request.getParameter("flight_number");
    		int fnumber = Integer.parseInt(number);
    		String name = request.getParameter("name");
    		String from = request.getParameter("from");
    		String to = request.getParameter("to");
    		String departuredate = request.getParameter("dd");
    		String hours = request.getParameter("hours");
    		int jhours = Integer.parseInt(hours);
    		String intervals = request.getParameter("intervals");
    		int jintervals = Integer.parseInt(intervals);
    		String capacity  = request.getParameter("capacity");
    		int jcapacity  = Integer.parseInt(capacity);

    		
    		Flight flight = new Flight();
    			flight.setNumber(fnumber);
    			flight.setName(name);
    			flight.setFrom(from);
    			flight.setTo(to);
    			flight.setDate(departuredate);
    			flight.setHours(jhours);
    			flight.setIntervals(jintervals);
    			flight.setCapacity(jcapacity);
    	       
    	       msg = adminService.addFlight(flight);
    	       
    	       mv.setViewName("addflight");
    	       mv.addObject("message", msg);
    	}
    	catch(Exception e)
    	{
    		mv.setViewName("addflight");
    		msg = e.getMessage();
    		mv.addObject("message", msg);
    	}
    	return mv;
    }
    
    //flight end
    
    @GetMapping("admin")
    public ModelAndView admin()
    {
    	long flightcount = adminService.flightcount();
    	long customercount = adminService.customercount();
    	
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("admin");
    	mv.addObject("fcount", flightcount);
    	mv.addObject("ccount", customercount);
    	return mv;
    }
    
    @GetMapping("customer")
    public ModelAndView customer()
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("customer");
    	return mv;
    }
    
    //view all customers in admin dashboard
    @GetMapping("viewallcustomers")
    public ModelAndView viewallcustomers()
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("viewallcustomers");
    	
    	List<Customer> customerlist = adminService.viewallcustomers();
    	mv.addObject("customerdata", customerlist);
    	return mv;
    	
    }
    
    //view all flights in admin dashboard
    @GetMapping("allflightsadmin")
    public ModelAndView allflightsadmin()
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("allflightsadmin");
    	
    	List<Flight> flightlist = adminService.viewallflights();
    	mv.addObject("flightdata", flightlist);
    	return mv;
    	
    }
    
  //view all flights in customer dashboard
    @GetMapping("allflightscustomer")
    public ModelAndView allflightscustomer()
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("allflightscustomer");
    	
    	List<Flight> flightlist = customerService.viewallflights();
    	mv.addObject("flightdata", flightlist);
    	return mv;
    	
    }
    
    @GetMapping("viewc")
    public ModelAndView viewcustomerdemo(@RequestParam("id") int cid)
    {
      Customer customer = adminService.viewcustomerbyid(cid);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("displaycustomer");
      mv.addObject("customer", customer);
      return mv;
    }
    
    @GetMapping("view")
    public ModelAndView viewflightdemo(@RequestParam("id") int fid)
    {
      Flight flight = adminService.viewflightbyid(fid);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("displayflight");
      mv.addObject("flight", flight);
      return mv;
    }
    
    //BookFlight start
    
    @GetMapping("book")
    public ModelAndView addbookedflight()
    {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("book");
     return mv;
    }
    
    @PostMapping("insertbookedflight")
    public ModelAndView insertbookedflight(HttpServletRequest request) 
    {
    	ModelAndView mv = new ModelAndView();
    	String msg = null;
    	try 
    	{
    		String from = request.getParameter("from");
    		String to = request.getParameter("to");
    		String date = request.getParameter("date");
    		String fname = request.getParameter("bname");
    		String seating = request.getParameter("seating");
    		String adults = request.getParameter("adults");
    		int badults = Integer.parseInt(adults);
    		String children = request.getParameter("children");
    		int bchildren = Integer.parseInt(children);
    		String infant = request.getParameter("infant");
    		int binfants = Integer.parseInt(infant);
    		String pname = request.getParameter("pname");
    		String contact = request.getParameter("pcontact");
    		String email = request.getParameter("pemail");
    		
    		BookFlight bookFlight = new BookFlight();
    		bookFlight.setFrom(from);
    		bookFlight.setTo(to);
    		bookFlight.setDate(date);
    		bookFlight.setFlightname(fname);
    		bookFlight.setSeating(seating);
    		bookFlight.setAdults(badults);
    		bookFlight.setChildren(bchildren);
    		bookFlight.setInfant(binfants);
    		bookFlight.setPname(pname);
    		bookFlight.setContactno(contact);
    		bookFlight.setEmail(email);
    		
    		msg = bookFlightService.bookFlight(bookFlight);
  	       
  	       mv.setViewName("book");
  	       mv.addObject("message", msg);
    	}
    	catch(Exception e)
    	{
    		mv.setViewName("book");
    		msg = e.getMessage();
    		mv.addObject("message", msg);
    	}
    	return mv;
    	
    }
    //bookflight end 
    
    //delete
    @GetMapping("delete/{id}")
    public String deleteaction(@PathVariable("id") int fid) {
      adminService.deleteflight(fid);
      return "redirect:/allflightsadmin";
    }
    
    @GetMapping("deletecustomer/{id}")
    public String deletecustomeraction(@PathVariable("id") int cid) {
      adminService.deletecustomer(cid);
      return "redirect:/viewallcustomers";
    }
    
    
}
