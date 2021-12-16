package com.dao;

import java.io.Serializable;

import com.model.PurchaseTransDTO;

public interface PurchaseTransDAO extends Serializable {
	public void createPurchaseTrans(PurchaseTransDTO purchaseTrans) throws Exception;

	public PurchaseTransDTO findByPurchaseId(int purchaseid);
}
