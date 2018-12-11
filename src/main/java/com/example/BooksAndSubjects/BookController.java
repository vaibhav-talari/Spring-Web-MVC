package com.example.BooksAndSubjects;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.BooksAndSubjectService.BookService;
import com.example.BooksAndSubjectsData.Book;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BookController {
	
	
	BookService service=new BookService();
	
	@ModelAttribute("booksadd")
	public Book create()
	{
		return new Book();
	}
	
	@RequestMapping(value = "/addbook", method = RequestMethod.GET)
	public String addbookview() 
	{
	return "book/addbook";
	}
	
	@RequestMapping(value = "/addbook", method = RequestMethod.POST)
	public String addbookmethod(@ModelAttribute Book book) 
	{
		service.add(book);
		return "book/booksavedmessage";
	}
	
	@RequestMapping(value = "/showbooks", method = RequestMethod.GET)
	public ModelAndView showbookmethod() 
	{
		List<Book> books=service.list();
		return new ModelAndView("book/showbooks","list",books);
	}
	
	
	
	@RequestMapping(value = "/deletebook/{num}", method = RequestMethod.GET)
	public ModelAndView deletebook(@PathVariable long num ) 
	{
		service.deletebook(num);
		System.out.print(num);
		return new ModelAndView("book/bookdeletedmessage");

	}
	
	@RequestMapping(value = "/deletebook", method = RequestMethod.GET)
	public ModelAndView deletebook() 
	{
		List<Book> books=service.list();
		return new ModelAndView("book/deletebook","list",books);
	}
	
	@RequestMapping(value = "/searchbook", method = RequestMethod.GET)
	public ModelAndView searchbook() 
	{
		List<Book> books=service.list();
		return new ModelAndView("book/showbooks","list",books);
	}
	
	
}
