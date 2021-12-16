package com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dao.PartyDAO;
import com.model.PartyDTO;
@Component
public class PartyService {
	@Autowired
	private PartyDAO partyDAO;
	public PartyDAO getPartyDAO() {
		return partyDAO;
	}
	public void setPartyDAO(PartyDAO partyDAO) {
		this.partyDAO = partyDAO;
	}
	
	public List<PartyDTO> display() {
		return partyDAO.findAll();
	}
	public long count() {
		return partyDAO.count();
	}
	public PartyDTO findById(int partyid) {
		return partyDAO.findById(partyid).get();
	}
	public boolean existById(int partyid) {
		return partyDAO.existsById(partyid);
	}
	public void addparty(PartyDTO party) {
		partyDAO.save(party);
	}
	public void deleteparty(int partyid) {
		partyDAO.deleteById(partyid);
	}
}
