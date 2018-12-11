package com.example.BooksAndSubjectService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.example.BooksAndSubjectsData.Book;

public class BookService {
	
	private Map<Long,Book> books=new HashMap<Long,Book>();
	public void add(Book book)
	{
		books.put(book.getBookid(),book);
	}
	
	public List<Book> list()
	{
		return new ArrayList<Book>(books.values());
	}
	public void deletebook(long num)
	{
		books.remove(num);
	
	}
	
	
	}
	

