package com.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Property;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.BookingDTO;


@Repository("bookingdao")
@Transactional
public class BookingDAOImpl implements BookingDAO {

	@Autowired
	private SessionFactory factory;
	
	private Session getSession() {
		return factory.getCurrentSession();
	}
	
	@Override
	public List<Date> findByHallId(String hall) throws Exception {
		
		String sql = "select date from booking where "+hall+"=0";
	    
	    Session session = getSession();
	    Query query = session.createSQLQuery(sql);
	    List<Date> availableDates = query.list();
		return availableDates;
	}
	
	@Override
	public void updateHall(Date date, String hall) throws Exception {
		String sql = "update booking set "+hall+"=1 where date=?";
	    
	    Session session = getSession();
	    Query query = session.createSQLQuery(sql);
	    query.setDate(1, date);
	    query.executeUpdate();
	}
	
	public SessionFactory getFactory() {
		return factory;
	}
	
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public BookingDTO findByDate(Date date) throws Exception {
		Session session=getSession();
		Criteria criteria=session.createCriteria(BookingDTO.class);
		criteria.add(Property.forName("date").eq(date));
		List<BookingDTO> list = criteria.list();
		if(list.size()==0)
			return null;
		return list.get(0);
	}

	@Override
	public void add(BookingDTO book) {
		getSession().save(book);
	}

	@Override
	public List<BookingDTO> findAll() {
		Session session=getSession();
		Criteria criteria=session.createCriteria(BookingDTO.class);
		List<BookingDTO> list = criteria.list();
		return list;
	}
	
}
