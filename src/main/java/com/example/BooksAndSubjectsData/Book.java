package com.example.BooksAndSubjectsData;

import java.time.LocalDate;



public class Book {
	
	private long bookid;
	private String title;
	private double price;
	private int volume;
	private LocalDate publishDate;
	private int year,month,day;
	
	
	public void setPublishDate(LocalDate publishDate) {
		this.publishDate = publishDate;
	}

	public int getYear() {
		return year;
	}
	
	public void setYear(int year) {
		this.year = year;
	}
	
	public int getMonth() {
		return month;
	}
	
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	
	public void setDay(int day) {
		this.day = day;
	}
	public long getBookid() {
		return bookid;
	}
	public void setBookid(long bookid) {
		this.bookid = bookid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}	
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
	public LocalDate getPublishDate() {
		this.publishDate = LocalDate.of(getYear(), getMonth(), getDay());
		return publishDate;
	}

	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", title=" + title + ", price=" + price + ", volume=" + volume
				+ ", publishDate=" + publishDate + ", year=" + year + ", month=" + month + ", day=" + day + "]";
	}
	
	
}
