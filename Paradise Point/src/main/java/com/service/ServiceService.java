package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.ServiceDAO;
import com.model.CompKey;
import com.model.ServiceDTO;

@Component
public class ServiceService {
	@Autowired
	private ServiceDAO serviceDAO;

	public ServiceDAO getServiceDAO() {
		return serviceDAO;
	}

	public void setServiceDAO(ServiceDAO serviceDAO) {
		this.serviceDAO = serviceDAO;
	}

	public List<ServiceDTO> findAllService(int partyid) {
		// TODO Auto-generated method stub
		return serviceDAO.findByPartyId(partyid);
	}
	
	public List<ServiceDTO> getCost(List<CompKey> list) {
		return serviceDAO.findAllById(list);
		//return serviceDAO.findById(ck).get().getServicecost();
	}
	
	public ServiceDTO findById(CompKey ck) {
		return serviceDAO.findById(ck).get();
	}
	
	public List<ServiceDTO> findAllById(List<CompKey> ck) {
		return serviceDAO.findAllById(ck);
	}

	public long count() {
		return serviceDAO.count();
	}
	public void deleteservice(CompKey ck) {
		serviceDAO.deleteById(ck);
	}

	public void addservice(ServiceDTO service) {
		serviceDAO.save(service);
	}

	public List<ServiceDTO> findAll() {
		return serviceDAO.findAll();
	}

	public void deleteByParty(int partyid) {
		List<ServiceDTO> services = serviceDAO.findByPartyId(partyid);
		System.out.println(services);
		for(ServiceDTO service: services) {
			//CompKey ck = new CompKey(partyid,service.getCompkey().)
			serviceDAO.deleteById(service.getCompkey());
		}
	}

	public boolean existById(CompKey ck) {
		return serviceDAO.existsById(ck);
		
	}
}
