package com.dao;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

//import org.joda.time.LocalDate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.BookingDTO;
import com.model.HallDTO;
import com.model.UserDTO;

public interface BookingDAO extends Serializable {
	public List<Date> findByHallId(String hall) throws Exception;
	public void updateHall(Date date, String hall) throws Exception;
	public BookingDTO findByDate(Date date) throws Exception;
	public void add(BookingDTO book);
	public List<BookingDTO> findAll();
}
