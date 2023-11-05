package com.klef.jfsd.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ArsApplication {

	public static void main(String[] args) {
		SpringApplication.run(ArsApplication.class, args);
		System.out.println("SDP Running successfully");
	}

}
