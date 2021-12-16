package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.PurchaseTransDAO;
import com.model.PurchaseTransDTO;

@Component
public class PurchaseTransService {
	@Autowired
	PurchaseTransDAO purchaseTransDAO;

	public PurchaseTransDAO getPurchaseTransDAO() {
		return purchaseTransDAO;
	}

	public void setPurchaseTransDAO(PurchaseTransDAO purchaseTransDAO) {
		this.purchaseTransDAO = purchaseTransDAO;
	}
	
	public void createTrans(PurchaseTransDTO purchasetransDTO) throws Exception {
		purchaseTransDAO.createPurchaseTrans(purchasetransDTO);
	}
	public PurchaseTransDTO findByPurchaseId(int purchaseid) {
		return purchaseTransDAO.findByPurchaseId(purchaseid);
	}

	
}
