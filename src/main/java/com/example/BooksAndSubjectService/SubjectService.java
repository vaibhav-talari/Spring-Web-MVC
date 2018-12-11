package com.example.BooksAndSubjectService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.example.BooksAndSubjectsData.Subject;

public class SubjectService {
	
	private Map<Long,Subject> subjects=new HashMap<Long,Subject>();
	public void add(Subject subject)
	{
		subjects.put(subject.getSubjectid(),subject);
	}
	
	public List<Subject> list()
	{
		return new ArrayList<Subject>(subjects.values());
	}
	public void deletesubject(long num)
	{
		subjects.remove(num);
	}

}
