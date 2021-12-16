package com.dao;

import java.io.Serializable;
import java.util.List;

import com.model.PurchaseMasterDTO;

public interface PurchaseMasterDAO extends Serializable {
	public void createPurchaseMaster(PurchaseMasterDTO purchaseMaster) throws Exception;

	public long count();

	public List<PurchaseMasterDTO> findByUid(int uid);

	public List<PurchaseMasterDTO> findAll();
}
