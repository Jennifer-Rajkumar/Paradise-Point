package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.PartyDTO;
import com.model.PurchaseMasterDTO;
import com.model.PurchaseTransDTO;
import com.model.UserDTO;
import com.model.UserOrders;
//->sino,username,purchaseid,partyname,hallno,date,cost
@Service
@Transactional(readOnly = true)
public class UserOrderService {
	@Autowired
	UserService userservice;
	
	@Autowired
	PurchaseMasterService purchasemaster;
	
	@Autowired
	PurchaseTransService purchasetransservice;
	
	@Autowired
	PartyService partyservice;
	
	public List<UserOrders> findAll() {
		List<PurchaseMasterDTO> purchases=purchasemaster.findAll();
		List<UserOrders> userorderlist=new ArrayList<>();
		for(PurchaseMasterDTO purchase:purchases) {
			UserDTO user=userservice.findById(purchase.getUid());
			PurchaseTransDTO purchasetran=purchasetransservice.findByPurchaseId(purchase.getPurchaseid());
			System.out.println(purchasetran.getPartyid());
			if(partyservice.existById(purchasetran.getPartyid())) {
			PartyDTO party=partyservice.findById(purchasetran.getPartyid());
			//System.out.println(party.getPartyname()+" "+user.getUsername());
			//String partyname=party.getPartyname();
			
			String uname=user.getUsername();
			UserOrders users=new UserOrders();//.createInstanceWithValues(user.getUsername(), purchase.getPurchaseid(), party.getPartyname(), purchase.getHallid(), purchase.getDate(), purchase.getCost());
			users.setUsername(uname);
			users.setPartyname(party.getPartyname());
			users.setPurchaseid(purchase.getPurchaseid());
			users.setHallno(purchase.getHallid());
			users.setCost(purchase.getCost());
			users.setDate(purchase.getDate());
			userorderlist.add(users);
			
			}
		}
		return userorderlist;
	}

}
