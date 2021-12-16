package com.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BookingDAO;
import com.dao.BookingDAOImpl;
import com.model.BookingDTO;

@Component
public class BookingService {
	@Autowired
	BookingDAO bookingDAO;

	public BookingDAO getBookingDAO() {
		return bookingDAO;
	}

	public void setBookingDAO(BookingDAO bookingDAO) {
		this.bookingDAO = bookingDAO;
	}

	public List<Date> vacant(String string) throws Exception {
		return bookingDAO.findByHallId(string);
	}
	
	public void updateStatus(Date date, String hall) throws Exception {
		bookingDAO.updateHall(date, hall);
	}
	public BookingDTO findByDate(Date date) throws Exception{
		return bookingDAO.findByDate(date);
	}

	public void save(BookingDTO book) {
		bookingDAO.add(book);
		
	}

	public List<BookingDTO> display() {
		return bookingDAO.findAll();
	}
}
