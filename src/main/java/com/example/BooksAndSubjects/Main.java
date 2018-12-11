package com.example.BooksAndSubjects;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Main {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
	
		return "home";
		
	}
	
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit() {
	
		return "exit";
		
	}
	
}
