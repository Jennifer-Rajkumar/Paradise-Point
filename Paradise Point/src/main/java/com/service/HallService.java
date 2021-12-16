package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.dao.HallDAO;
import com.model.HallDTO;

@Component
public class HallService {
	@Autowired
	HallDAO halldao;

	public HallDAO getHalldao() {
		return halldao;
	}

	public void setHalldao(HallDAO halldao) {
		this.halldao = halldao;
	}
	
	public List<HallDTO> display(){
		return halldao.findAll();
	}

	public HallDTO findByHallId(int hallid) {
		return halldao.findById(hallid).get();
	}
	
	public long count() {
		return halldao.count();
	}
    
	public void editHall(HallDTO hall) {
		halldao.save(hall);
	}

	public List<HallDTO> findAll() {
		return halldao.findAll();
	}

	public boolean existById(int hallid) {
		
		return halldao.existsById(hallid);
	}

}
