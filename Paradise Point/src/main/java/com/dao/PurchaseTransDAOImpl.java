package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Property;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.PurchaseMasterDTO;
import com.model.PurchaseTransDTO;

@Repository
@Transactional
public class PurchaseTransDAOImpl implements PurchaseTransDAO {
	@Autowired
	private SessionFactory factory;
	
	private Session getSession() {
		return factory.getCurrentSession();
	}
	public SessionFactory getFactory() {
		return factory;
	}
	
	@Override
	public void createPurchaseTrans(PurchaseTransDTO purchaseTrans) throws Exception {
		getSession().save(purchaseTrans);		
	}
	@Override
	public PurchaseTransDTO findByPurchaseId(int purchaseid) {
		Session session=getSession();
		Criteria criteria=session.createCriteria(PurchaseTransDTO.class);
		criteria.add(Property.forName("compkey.purchaseid").eq(purchaseid));
		List<PurchaseTransDTO> list = criteria.list();
		System.out.println(list.toString());
		return list.get(0);
//	    String sql = "select * from purchasetrans where purchaseid=purchaseid";
//	    
//	    Session session = getSession();
//	    Query query = session.createSQLQuery(sql);
//	    
//	    List<PurchaseTransDTO> purchasetrans = query.list();
//		return purchasetrans.get(0);
	}
}
