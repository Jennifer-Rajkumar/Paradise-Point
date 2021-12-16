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
import com.model.PurchaseMasterDTO;

@Repository
@Transactional
public class PurchaseMasterDAOImpl implements PurchaseMasterDAO {
	@Autowired
	private SessionFactory factory;
	
	private Session getSession() {
		return factory.getCurrentSession();
	}
	public SessionFactory getFactory() {
		return factory;
	}
	@Override
	public void createPurchaseMaster(PurchaseMasterDTO purchaseMaster) throws Exception {
		getSession().save(purchaseMaster);
		//return purchaseMaster.getPurchaseid();
	}
	@Override
	public long count() {
        String sql = "select count(*) from purchasemaster";
	    
	    Session session = getSession();
	    Query query = session.createSQLQuery(sql);
	    long size=((Number) query.uniqueResult()).longValue();
	    //List<PurchaseMasterDTO> purchasemaster = query.list();
		//return purchasemaster.size();
		 return size;
	}
	@Override
	public List<PurchaseMasterDTO> findByUid(int uid) {
		Session session=getSession();
		Criteria criteria=session.createCriteria(PurchaseMasterDTO.class);
		criteria.add(Property.forName("uid").eq(uid));
		List<PurchaseMasterDTO> list = criteria.list();
		System.out.println(list.toString());
		return list;
		
//        String sql = "select * from purchasemaster where uid=uid";
//	    
//	    Session session = getSession();
//	    Query query = session.createSQLQuery(sql);
//	    
//	    List<PurchaseMasterDTO> purchasemaster = query.list();
//		return purchasemaster;
	}
	@Override
	public List<PurchaseMasterDTO> findAll() {
		Session session=getSession();
		Criteria criteria=session.createCriteria(PurchaseMasterDTO.class);
		//criteria.add(Property.forName("uid").eq(uid));
		List<PurchaseMasterDTO> list = criteria.list();
		System.out.println(list.toString());
		return list;
//		    String sql = "select * from purchasemaster";		    
//		    Session session = getSession();
//		    Query query = session.createSQLQuery(sql);		    
//		    List<PurchaseMasterDTO> purchasemaster = query.list();
//			return purchasemaster;
	}
	
}
