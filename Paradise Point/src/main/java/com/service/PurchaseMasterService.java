package com.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.BookingDAO;
import com.dao.PurchaseMasterDAO;
import com.model.PurchaseMasterDTO;

@Component
public class PurchaseMasterService {
	@Autowired
	PurchaseMasterDAO purchaseMasterDAO;

	public PurchaseMasterDAO getPurchaseMasterDAO() {
		return purchaseMasterDAO;
	}

	public void setPurchaseMasterDAO(PurchaseMasterDAO purchaseMasterDAO) {
		this.purchaseMasterDAO = purchaseMasterDAO;
	}

	public void createMaster(PurchaseMasterDTO purchaseMaster) throws Exception {
		purchaseMasterDAO.createPurchaseMaster(purchaseMaster);
	}
	public List<PurchaseMasterDTO> findByuid(int uid){
		return purchaseMasterDAO.findByUid(uid);
	}

	public long count() {
		
		return purchaseMasterDAO.count();
	}

	public List<PurchaseMasterDTO> findAll() {
		return purchaseMasterDAO.findAll();
	}
}
