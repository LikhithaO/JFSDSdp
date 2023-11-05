package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.BookFlight;
import com.klef.jfsd.springboot.repository.BookRepository;

@Service
public class BookFlightServiceImpl implements BookFlightService
{
	@Autowired
	private BookRepository bookRepository;

	@Override
	public String bookFlight(BookFlight f) {
		bookRepository.save(f);
		return "Flight Added Successfully";
	}
	
}
