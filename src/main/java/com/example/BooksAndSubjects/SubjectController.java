package com.example.BooksAndSubjects;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.BooksAndSubjectService.SubjectService;
import com.example.BooksAndSubjectsData.Subject;

@Controller
public class SubjectController {
	
	SubjectService service=new SubjectService();
	
	@ModelAttribute("subjectsadd")
	public Subject create()
	{
		return new Subject();
	}
	
	@RequestMapping(value = "/addsubject", method = RequestMethod.GET)
	public String addsubject() {
	return "subject/addsubject";
	}
	
	@RequestMapping(value = "/addsubject", method = RequestMethod.POST)
	public String addsubjectmethod(@ModelAttribute Subject subject) 
	{
	service.add(subject);
	return "subject/subjectsavedmessage";
	}
	
	@RequestMapping(value = "/showsubjects", method = RequestMethod.GET)
	public ModelAndView showbookmethod() 
	{
		List<Subject> subjects=service.list();
		return new ModelAndView("subject/showsubjects","list",subjects);
	}
	
	@RequestMapping(value = "/deletesubject", method = RequestMethod.GET)
	public ModelAndView deletesubject() {	
		List<Subject> subjects=service.list();
		return new ModelAndView("subject/deletesubject","list",subjects);

	}
	
	@RequestMapping(value = "/deletesubject/{num}", method = RequestMethod.GET)
	public ModelAndView deletebook(@PathVariable long num ) 
	{
		service.deletesubject(num);
		System.out.print(num);
		return new ModelAndView("subject/subjectdeletedmessage");

	}
	@RequestMapping(value = "/searchsubject", method = RequestMethod.GET)
	public ModelAndView searchsubject() 
	{
		List<Subject> subjects=service.list();
		return new ModelAndView("subject/showsubjects","list",subjects);
	}
	
}






	
	
	

